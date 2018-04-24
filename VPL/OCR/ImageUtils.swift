/***
 Some tools adapted from: https://github.com/martinmitrevski/TextRecognizer/blob/master/TextRecognizer/ImageUtils.swift
 ***/

import UIKit
import Vision

precedencegroup ForwardPipe {
    associativity: left
    higherThan: LogicalConjunctionPrecedence
}

infix operator |> : ForwardPipe

/// Swift implementation of the forward pipe operator from F#.
///
/// Used for better readibility when piping results of one function to the next ones.
/// More details here: https://goo.gl/nHzeS6.
public func |> <T, U>(value: T, function: ((T) -> U)) -> U {
    return function(value)
}

extension UIImage {
    func resize(to size: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}



func convertToGrayscale(image: UIImage) -> UIImage {
    let colorSpace: CGColorSpace = CGColorSpaceCreateDeviceGray()
    let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.none.rawValue)
    let context = CGContext(data: nil,
                            width: Int(UInt(image.size.width)),
                            height: Int(UInt(image.size.height)),
                            bitsPerComponent: 8,
                            bytesPerRow: 0,
                            space: colorSpace,
                            bitmapInfo: bitmapInfo.rawValue)
    context?.draw(image.cgImage!,
                  in: CGRect(x: 0.0, y: 0.0, width: image.size.width, height: image.size.height))
    let imageRef: CGImage = context!.makeImage()!
    let newImage: UIImage = UIImage(cgImage: imageRef)
    return newImage
}

func insertInsets(image: UIImage, insetWidthDimension: CGFloat, insetHeightDimension: CGFloat)
    -> UIImage {
    let adjustedImage = adjustColors(image: image)
    let upperLeftPoint: CGPoint = CGPoint(x: 0, y: 0)
    let lowerLeftPoint: CGPoint = CGPoint(x: 0, y: adjustedImage.size.height - 1)
    let upperRightPoint: CGPoint = CGPoint(x: adjustedImage.size.width - 1, y: 0)
    let lowerRightPoint: CGPoint = CGPoint(x: adjustedImage.size.width - 1,
                                           y: adjustedImage.size.height - 1)
    let upperLeftColor: UIColor = adjustedImage.pixelColor(at: upperLeftPoint)
    let lowerLeftColor: UIColor = adjustedImage.pixelColor(at: lowerLeftPoint)
    let upperRightColor: UIColor = adjustedImage.pixelColor(at: upperRightPoint)
    let lowerRightColor: UIColor = adjustedImage.pixelColor(at: lowerRightPoint)
    let color =
        averageColor(fromColors: [upperLeftColor, lowerLeftColor, upperRightColor, lowerRightColor])
    let insets = UIEdgeInsets(top: insetHeightDimension,
                              left: insetWidthDimension,
                              bottom: insetHeightDimension,
                              right: insetWidthDimension)
    let size = CGSize(width: adjustedImage.size.width + insets.left + insets.right,
                      height: adjustedImage.size.height + insets.top + insets.bottom)
    UIGraphicsBeginImageContextWithOptions(size, false, adjustedImage.scale)
    let origin = CGPoint(x: insets.left, y: insets.top)
    adjustedImage.draw(at: origin)
    let imageWithInsets = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return convertTransparent(image: imageWithInsets!, color: color)
}

func averageColor(fromColors colors: [UIColor]) -> UIColor {
    var averages = [CGFloat]()
    for i in 0..<4 {
        var total: CGFloat = 0
        for j in 0..<colors.count {
            let current = colors[j]
            let value = CGFloat(current.cgColor.components![i])
            total += value
        }
        let avg = total / CGFloat(colors.count)
        averages.append(avg)
    }
    return UIColor(red: averages[0], green: averages[1], blue: averages[2], alpha: averages[3])
}

func adjustColors(image: UIImage) -> UIImage {
    let context = CIContext(options: nil)
    if let currentFilter = CIFilter(name: "CIColorControls") {
        let beginImage = CIImage(image: image)
        currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
        currentFilter.setValue(0, forKey: kCIInputSaturationKey)
        currentFilter.setValue(1.45, forKey: kCIInputContrastKey) //previous 1.5
        if let output = currentFilter.outputImage {
            if let cgimg = context.createCGImage(output, from: output.extent) {
                let processedImage = UIImage(cgImage: cgimg)
                return processedImage
            }
        }
    }
    return image
}

func fixOrientation(image: UIImage) -> UIImage {
    if image.imageOrientation == .up {
        return image
    }
    UIGraphicsBeginImageContextWithOptions(image.size, false, image.scale)
    image.draw(in: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
    if let normalizedImage: UIImage = UIGraphicsGetImageFromCurrentImageContext() {
        UIGraphicsEndImageContext()
        return normalizedImage
    } else {
        return image
    }
}

func convertTransparent(image: UIImage, color: UIColor) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(image.size, false, image.scale)
    let width = image.size.width
    let height = image.size.height
    let imageRect: CGRect = CGRect(x: 0.0, y: 0.0, width: width, height: height)
    let ctx: CGContext = UIGraphicsGetCurrentContext()!
    let redValue = CGFloat(color.cgColor.components![0])
    let greenValue = CGFloat(color.cgColor.components![1])
    let blueValue = CGFloat(color.cgColor.components![2])
    let alphaValue = CGFloat(color.cgColor.components![3])
    ctx.setFillColor(red: redValue, green: greenValue, blue: blueValue, alpha: alphaValue)
    ctx.fill(imageRect)
    image.draw(in: imageRect)
    let newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()
    return newImage
}

extension UIImage {
    func pixelColor(at pixel: CGPoint) -> UIColor {
        let pixelData = cgImage!.dataProvider!.data
        let data: UnsafePointer<UInt8> = CFDataGetBytePtr(pixelData)
        let pixelInfo: Int = ((Int(size.width) * Int(pixel.y)) + Int(pixel.x)) * 4
        let r = CGFloat(data[pixelInfo]) / CGFloat(255.0)
        let g = CGFloat(data[pixelInfo + 1]) / CGFloat(255.0)
        let b = CGFloat(data[pixelInfo + 2]) / CGFloat(255.0)
        let a = CGFloat(data[pixelInfo + 3]) / CGFloat(255.0)
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
}

extension VNRectangleObservation {
    func applyTo(size: CGSize) -> CGRect {
        var t: CGAffineTransform = .identity
        t = t.scaledBy(x: size.width, y: -size.height)
        t = t.translatedBy(x: 0, y: -1 )
        let x = boundingBox.applying(t).origin.x
        let y = boundingBox.applying(t).origin.y
        let width = boundingBox.applying(t).width
        let height = boundingBox.applying(t).height
        return CGRect(x: x, y: y, width: width, height: height)
    }
}

extension UIImage {
    func cropping(to rect: CGRect) -> UIImage? {
        return cgImage!.cropping(to: rect).flatMap {
            UIImage(cgImage: $0)
        }
    }
}

func preProcess(image: UIImage, size: CGSize, invert shouldInvert: Bool = false, addInsets: Bool = true) -> UIImage {
    // Calculate properties
    let width = image.size.width
    let height = image.size.height
    let addToHeight2 = height / 2
    let addToWidth2 = ((6 * height) / 3 - width) / 2

    // Process the image
    var image = image
    if shouldInvert {
        image = invert(image: image)
    }
    if addInsets {
        image = insertInsets(image: image, insetWidthDimension: addToWidth2, insetHeightDimension: addToHeight2)
    }
    image = image.resize(to: size)
    image = convertToGrayscale(image: image)

    return image
}

func invert(image: UIImage) -> UIImage {
    // Get the filter and image
    guard let filter = CIFilter(name: "CIColorInvert") else {
        print("Failed to find CIColorInvert.")
        return UIImage()
    }
    guard let cgImage = image.cgImage else {
        print("Failed to get CGImage.")
        return UIImage()
    }

    // Invert the image
    let img = CIImage(cgImage: cgImage)
    filter.setDefaults()
    filter.setValue(img, forKey: kCIInputImageKey)
    let ctx = CIContext(options: nil)
    guard let imageRef = ctx.createCGImage(filter.outputImage!, from: img.extent) else {
        print("Failed to get CGImage from CoreImage.")
        return UIImage()
    }
    return UIImage(cgImage: imageRef)
}

func removeRetinaData(image input: UIImage) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(input.size, false, 1.0)
    input.draw(in: CGRect(x: 0, y: 0, width: input.size.width, height: input.size.height))
    guard let nonRetinaImage = UIGraphicsGetImageFromCurrentImageContext() else {
        print("Failed to construct non-retina image.")
        return UIImage()
    }
    UIGraphicsEndImageContext()
    return nonRetinaImage
}

// From: https://gist.github.com/marchinram/3675efc96bf1cc2c02a5
extension UIImage {
    subscript (x: Int, y: Int) -> UIColor? {
        if x < 0 || x > Int(size.width) || y < 0 || y > Int(size.height) {
            return nil
        }

        guard let providerData = cgImage?.dataProvider?.data else { return nil }
        let data = CFDataGetBytePtr(providerData)!

        let numberOfComponents = 4
        let pixelData = ((Int(size.width) * y) + x) * numberOfComponents

        let r = CGFloat(data[pixelData]) / 255.0
        let g = CGFloat(data[pixelData + 1]) / 255.0
        let b = CGFloat(data[pixelData + 2]) / 255.0
        let a = CGFloat(data[pixelData + 3]) / 255.0

        return UIColor(red: r, green: g, blue: b, alpha: a)
    }

    // From: https://stackoverflow.com/a/48759198
    func trimWhiteRect() -> CGRect {

        let cgImage = self.cgImage!

        let width = cgImage.width
        let height = cgImage.height

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let bytesPerPixel:Int = 4
        let bytesPerRow = bytesPerPixel * width
        let bitsPerComponent = 8
        let bitmapInfo: UInt32 = CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue

        guard let context = CGContext(data: nil, width: width, height: height, bitsPerComponent: bitsPerComponent, bytesPerRow: bytesPerRow, space: colorSpace, bitmapInfo: bitmapInfo),
            let ptr = context.data?.assumingMemoryBound(to: UInt8.self) else {
                return .zero
        }

        context.draw(self.cgImage!, in: CGRect(x: 0, y: 0, width: width, height: height))

        var minX = width
        var minY = height
        var maxX: Int = 0
        var maxY: Int = 0

        for x in 1..<width {
            for y in 1..<height {
                let i = bytesPerRow * Int(y) + bytesPerPixel * Int(x)
                let r = CGFloat(ptr[i]) / 255.0
                let g = CGFloat(ptr[i + 1]) / 255.0
                let b = CGFloat(ptr[i + 2]) / 255.0
//                let a = CGFloat(ptr[i + 3]) / 255.0

                if r != 1 || g != 1 || b != 1 { // Check if it's white
                    if x < minX { minX = x }
                    if x > maxX { maxX = x }
                    if y < minY { minY = y}
                    if y > maxY { maxY = y}
                }
            }
        }

        return CGRect(x: CGFloat(minX),y: CGFloat(minY), width: CGFloat(maxX-minX), height: CGFloat(maxY-minY))
    }
}
