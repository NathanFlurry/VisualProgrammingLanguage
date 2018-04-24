import CoreFoundation
import Dispatch
import Glibc
class UnitLength : Foundation.Dimension {
  struct Symbol {
    static var megameters: Swift.String
    static var kilometers: Swift.String
    static var hectometers: Swift.String
    static var decameters: Swift.String
    static var meters: Swift.String
    static var decimeters: Swift.String
    static var centimeters: Swift.String
    static var millimeters: Swift.String
    static var micrometers: Swift.String
    static var nanometers: Swift.String
    static var picometers: Swift.String
    static var inches: Swift.String
    static var feet: Swift.String
    static var yards: Swift.String
    static var miles: Swift.String
    static var scandinavianMiles: Swift.String
    static var lightyears: Swift.String
    static var nauticalMiles: Swift.String
    static var fathoms: Swift.String
    static var furlongs: Swift.String
    static var astronomicalUnits: Swift.String
    static var parsecs: Swift.String
    init()
  }
  struct Coefficient {
    static var megameters: Swift.Double
    static var kilometers: Swift.Double
    static var hectometers: Swift.Double
    static var decameters: Swift.Double
    static var meters: Swift.Double
    static var decimeters: Swift.Double
    static var centimeters: Swift.Double
    static var millimeters: Swift.Double
    static var micrometers: Swift.Double
    static var nanometers: Swift.Double
    static var picometers: Swift.Double
    static var inches: Swift.Double
    static var feet: Swift.Double
    static var yards: Swift.Double
    static var miles: Swift.Double
    static var scandinavianMiles: Swift.Double
    static var lightyears: Swift.Double
    static var nauticalMiles: Swift.Double
    static var fathoms: Swift.Double
    static var furlongs: Swift.Double
    static var astronomicalUnits: Swift.Double
    static var parsecs: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var megameters: Foundation.UnitLength {
    get {}
  }
  class var kilometers: Foundation.UnitLength {
    get {}
  }
  class var hectometers: Foundation.UnitLength {
    get {}
  }
  class var decameters: Foundation.UnitLength {
    get {}
  }
  class var meters: Foundation.UnitLength {
    get {}
  }
  class var decimeters: Foundation.UnitLength {
    get {}
  }
  class var centimeters: Foundation.UnitLength {
    get {}
  }
  class var millimeters: Foundation.UnitLength {
    get {}
  }
  class var micrometers: Foundation.UnitLength {
    get {}
  }
  class var nanometers: Foundation.UnitLength {
    get {}
  }
  class var picometers: Foundation.UnitLength {
    get {}
  }
  class var inches: Foundation.UnitLength {
    get {}
  }
  class var feet: Foundation.UnitLength {
    get {}
  }
  class var yards: Foundation.UnitLength {
    get {}
  }
  class var miles: Foundation.UnitLength {
    get {}
  }
  class var scandinavianMiles: Foundation.UnitLength {
    get {}
  }
  class var lightyears: Foundation.UnitLength {
    get {}
  }
  class var nauticalMiles: Foundation.UnitLength {
    get {}
  }
  class var fathoms: Foundation.UnitLength {
    get {}
  }
  class var furlongs: Foundation.UnitLength {
    get {}
  }
  class var astronomicalUnits: Foundation.UnitLength {
    get {}
  }
  class var parsecs: Foundation.UnitLength {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitLength
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
var NSPropertyListWriteStreamError: Swift.Int {
  get {}
}
func isALineSeparatorTypeCharacter(_ ch: Foundation.unichar) -> Swift.Bool
var userAgentString: Swift.String
class UnitDuration : Foundation.Dimension {
  struct Symbol {
    static var seconds: Swift.String
    static var minutes: Swift.String
    static var hours: Swift.String
    init()
  }
  struct Coefficient {
    static var seconds: Swift.Double
    static var minutes: Swift.Double
    static var hours: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var seconds: Foundation.UnitDuration {
    get {}
  }
  class var minutes: Foundation.UnitDuration {
    get {}
  }
  class var hours: Foundation.UnitDuration {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitDuration
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
func yn(_ n: Swift.Int, _ x: Foundation.CGFloat) -> Foundation.CGFloat
let NSKeyedArchivePlistVersion: Swift.Int
func atanh(_ x: Foundation.CGFloat) -> Foundation.CGFloat
func _CFZeroUnsafeIvars<T>(_ arg: inout T)
var NSDecimalMaxSize: Swift.Int32 {
  get {}
}
func NSInsetRect(_ aRect: Foundation.NSRect, _ dX: Foundation.CGFloat, _ dY: Foundation.CGFloat) -> Foundation.NSRect
let NSStringEncodingErrorKey: Swift.String
func _NSXMLParserStartElementNs(_ ctx: CoreFoundation._CFXMLInterface, localname: Swift.UnsafePointer<Swift.UInt8>, prefix: Swift.UnsafePointer<Swift.UInt8>?, URI: Swift.UnsafePointer<Swift.UInt8>?, nb_namespaces: Swift.Int32, namespaces: Swift.UnsafeMutablePointer<Swift.UnsafePointer<Swift.UInt8>?>, nb_attributes: Swift.Int32, nb_defaulted: Swift.Int32, attributes: Swift.UnsafeMutablePointer<Swift.UnsafePointer<Swift.UInt8>?>)
func remquo(_ x: Foundation.CGFloat, _ y: Foundation.CGFloat) -> (Foundation.CGFloat, Swift.Int)
func NSDecimalAdd(_ result: Swift.UnsafeMutablePointer<Foundation.Decimal>, _ leftOperand: Swift.UnsafePointer<Foundation.Decimal>, _ rightOperand: Swift.UnsafePointer<Foundation.Decimal>, _ roundingMode: Foundation.NSDecimalNumber.RoundingMode) -> Foundation.NSDecimalNumber.CalculationError
func ==(lhs: Foundation.NSObject, rhs: Foundation.NSObject) -> Swift.Bool
func ==(lhs: Foundation.NSCalendar.Identifier, rhs: Foundation.NSCalendar.Identifier) -> Swift.Bool
func ==(x: Foundation.NSConcreteValue.TypeInfo, y: Foundation.NSConcreteValue.TypeInfo) -> Swift.Bool
func ==(lhs: Foundation.CGPoint, rhs: Foundation.CGPoint) -> Swift.Bool
func ==(lhs: Foundation.CGSize, rhs: Foundation.CGSize) -> Swift.Bool
func ==(lhs: Foundation.CGRect, rhs: Foundation.CGRect) -> Swift.Bool
func ==(lhs: Foundation.NSLocale.Key, rhs: Foundation.NSLocale.Key) -> Swift.Bool
func ==(lhs: Foundation.RunLoopMode, rhs: Foundation.RunLoopMode) -> Swift.Bool
func ==(lhs: Foundation._EasyHandle, rhs: Foundation._EasyHandle) -> Swift.Bool
func ==(lhs: CoreFoundation.CFURLSessionInfo, rhs: CoreFoundation.CFURLSessionInfo) -> Swift.Bool
func ==(lhs: CoreFoundation.CFURLSessionEasyCode, rhs: CoreFoundation.CFURLSessionEasyCode) -> Swift.Bool
func ==(lhs: CoreFoundation.CFURLSessionPoll, rhs: CoreFoundation.CFURLSessionPoll) -> Swift.Bool
func ==(lhs: CoreFoundation.CFURLSessionMultiCode, rhs: CoreFoundation.CFURLSessionMultiCode) -> Swift.Bool
func ==(lhs: Foundation.XMLNode.Index, rhs: Foundation.XMLNode.Index) -> Swift.Bool
func ==(lhs: Swift.String.Encoding, rhs: Swift.String.Encoding) -> Swift.Bool
func ==<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Swift.Bool where UnitType : Foundation.Unit
func ==<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Swift.Bool where UnitType : Foundation.Dimension
func ==(lhs: Foundation.Locale, rhs: Foundation.Locale) -> Swift.Bool
func _NSXMLParserElementDecl(_ ctx: CoreFoundation._CFXMLInterface, name: Swift.UnsafePointer<Swift.UInt8>, type: Swift.Int32, content: CoreFoundation._CFXMLInterfaceElementContent)
var NSUserActivityRemoteApplicationTimedOutError: Swift.Int {
  get {}
}
@available(*, unavailable, message: "Use truncatingRemainder instead") func %(lhs: Foundation.CGFloat, rhs: Foundation.CGFloat) -> Foundation.CGFloat
struct CGSize {
  var width: <null>
  var height: <null>
  init()
  init(width: Foundation.CGFloat, height: Foundation.CGFloat)
}
extension CGSize : Equatable {
}
extension CGSize : NSSpecialValueCoding {
  init(bytes: Swift.UnsafeRawPointer)
  init?(coder aDecoder: Foundation.NSCoder)
  func encodeWithCoder(_ aCoder: Foundation.NSCoder)
  static func objCType() -> Swift.String
  func getValue(_ value: Swift.UnsafeMutableRawPointer)
  func isEqual(_ aValue: Any) -> Swift.Bool
  var hash: Swift.Int {
    get {}
  }
  var description: Swift.String? {
    get {}
  }
}
var NSExecutableRuntimeMismatchError: Swift.Int {
  get {}
}
@available(*, unavailable, renamed: "String.Encoding.windowsCP1254") var NSWindowsCP1254StringEncoding: Swift.String.Encoding {
  get {}
}
func *<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Swift.Double) -> Foundation.Measurement<UnitType> where UnitType : Foundation.Unit
func *<UnitType>(lhs: Swift.Double, rhs: Foundation.Measurement<UnitType>) -> Foundation.Measurement<UnitType> where UnitType : Foundation.Unit
func *(lhs: Foundation.CGFloat, rhs: Foundation.CGFloat) -> Foundation.CGFloat
func +<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Foundation.Measurement<UnitType> where UnitType : Foundation.Unit
func +<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Foundation.Measurement<UnitType> where UnitType : Foundation.Dimension
func +(lhs: Foundation.CGFloat, rhs: Foundation.CGFloat) -> Foundation.CGFloat
var NSURLErrorCannotConnectToHost: Swift.Int {
  get {}
}
class UnitPower : Foundation.Dimension {
  struct Symbol {
    static var terawatts: Swift.String
    static var gigawatts: Swift.String
    static var megawatts: Swift.String
    static var kilowatts: Swift.String
    static var watts: Swift.String
    static var milliwatts: Swift.String
    static var microwatts: Swift.String
    static var nanowatts: Swift.String
    static var picowatts: Swift.String
    static var femtowatts: Swift.String
    static var horsepower: Swift.String
    init()
  }
  struct Coefficient {
    static var terawatts: Swift.Double
    static var gigawatts: Swift.Double
    static var megawatts: Swift.Double
    static var kilowatts: Swift.Double
    static var watts: Swift.Double
    static var milliwatts: Swift.Double
    static var microwatts: Swift.Double
    static var nanowatts: Swift.Double
    static var picowatts: Swift.Double
    static var femtowatts: Swift.Double
    static var horsepower: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var terawatts: Foundation.UnitPower {
    get {}
  }
  class var gigawatts: Foundation.UnitPower {
    get {}
  }
  class var megawatts: Foundation.UnitPower {
    get {}
  }
  class var kilowatts: Foundation.UnitPower {
    get {}
  }
  class var watts: Foundation.UnitPower {
    get {}
  }
  class var milliwatts: Foundation.UnitPower {
    get {}
  }
  class var microwatts: Foundation.UnitPower {
    get {}
  }
  class var nanowatts: Foundation.UnitPower {
    get {}
  }
  class var picowatts: Foundation.UnitPower {
    get {}
  }
  class var femtowatts: Foundation.UnitPower {
    get {}
  }
  class var horsepower: Foundation.UnitPower {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitPower
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
func -<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Foundation.Measurement<UnitType> where UnitType : Foundation.Unit
func -<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Foundation.Measurement<UnitType> where UnitType : Foundation.Dimension
func -(lhs: Foundation.CGFloat, rhs: Foundation.CGFloat) -> Foundation.CGFloat
func /<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Swift.Double) -> Foundation.Measurement<UnitType> where UnitType : Foundation.Unit
func /<UnitType>(lhs: Swift.Double, rhs: Foundation.Measurement<UnitType>) -> Foundation.Measurement<UnitType> where UnitType : Foundation.Unit
func /(lhs: Foundation.CGFloat, rhs: Foundation.CGFloat) -> Foundation.CGFloat
let NSPersonNameComponentNickname: Swift.String
protocol _IntegerLike : Integer, _BitShiftable {
  init(_ value: Swift.Int)
  static var max: Self { get }
  static var min: Self { get }
}
struct CharacterSet : ReferenceConvertible, Equatable, Hashable, SetAlgebra, _MutablePairBoxing {
  typealias ReferenceType = Foundation.NSCharacterSet
  typealias SwiftNSWrapping = Foundation._SwiftNSCharacterSet
  typealias ImmutableType = Foundation._SwiftNSCharacterSet.ImmutableType
  typealias MutableType = Foundation._SwiftNSCharacterSet.MutableType
  var _wrapped: <null>
  init(_bridged characterSet: Foundation.NSCharacterSet)
  init()
  init(charactersIn range: Swift.Range<Swift.UnicodeScalar>)
  init(charactersIn range: Swift.ClosedRange<Swift.UnicodeScalar>)
  init(charactersIn string: Swift.String)
  init(bitmapRepresentation data: Foundation.Data)
  init?(contentsOfFile file: Swift.String)
  var hashValue: Swift.Int {
    get {}
  }
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  init(reference: Foundation.NSCharacterSet)
  static var controlCharacters: Foundation.CharacterSet {
    get {}
  }
  static var whitespaces: Foundation.CharacterSet {
    get {}
  }
  static var whitespacesAndNewlines: Foundation.CharacterSet {
    get {}
  }
  static var decimalDigits: Foundation.CharacterSet {
    get {}
  }
  static var letters: Foundation.CharacterSet {
    get {}
  }
  static var lowercaseLetters: Foundation.CharacterSet {
    get {}
  }
  static var uppercaseLetters: Foundation.CharacterSet {
    get {}
  }
  static var nonBaseCharacters: Foundation.CharacterSet {
    get {}
  }
  static var alphanumerics: Foundation.CharacterSet {
    get {}
  }
  static var decomposables: Foundation.CharacterSet {
    get {}
  }
  static var illegalCharacters: Foundation.CharacterSet {
    get {}
  }
  static var punctuationCharacters: Foundation.CharacterSet {
    get {}
  }
  static var capitalizedLetters: Foundation.CharacterSet {
    get {}
  }
  static var symbols: Foundation.CharacterSet {
    get {}
  }
  static var newlines: Foundation.CharacterSet {
    get {}
  }
  static var urlUserAllowed: Foundation.CharacterSet {
    get {}
  }
  static var urlPasswordAllowed: Foundation.CharacterSet {
    get {}
  }
  static var urlHostAllowed: Foundation.CharacterSet {
    get {}
  }
  static var urlPathAllowed: Foundation.CharacterSet {
    get {}
  }
  static var urlQueryAllowed: Foundation.CharacterSet {
    get {}
  }
  static var urlFragmentAllowed: Foundation.CharacterSet {
    get {}
  }
  var bitmapRepresentation: Foundation.Data {
    get {}
  }
  var inverted: Foundation.CharacterSet {
    get {}
  }
  func hasMember(inPlane plane: Swift.UInt8) -> Swift.Bool
  mutating func insert(charactersIn range: Swift.Range<Swift.UnicodeScalar>)
  mutating func insert(charactersIn range: Swift.ClosedRange<Swift.UnicodeScalar>)
  mutating func remove(charactersIn range: Swift.Range<Swift.UnicodeScalar>)
  mutating func remove(charactersIn range: Swift.ClosedRange<Swift.UnicodeScalar>)
  mutating func insert(charactersIn string: Swift.String)
  mutating func remove(charactersIn string: Swift.String)
  mutating func invert()
  @discardableResult mutating func insert(_ character: Swift.UnicodeScalar) -> (inserted: Swift.Bool, memberAfterInsert: Swift.UnicodeScalar)
  @discardableResult mutating func update(with character: Swift.UnicodeScalar) -> Swift.UnicodeScalar?
  @discardableResult mutating func remove(_ character: Swift.UnicodeScalar) -> Swift.UnicodeScalar?
  func contains(_ member: Swift.UnicodeScalar) -> Swift.Bool
  func union(_ other: Foundation.CharacterSet) -> Foundation.CharacterSet
  mutating func formUnion(_ other: Foundation.CharacterSet)
  func intersection(_ other: Foundation.CharacterSet) -> Foundation.CharacterSet
  mutating func formIntersection(_ other: Foundation.CharacterSet)
  func subtracting(_ other: Foundation.CharacterSet) -> Foundation.CharacterSet
  mutating func subtract(_ other: Foundation.CharacterSet)
  func symmetricDifference(_ other: Foundation.CharacterSet) -> Foundation.CharacterSet
  mutating func formSymmetricDifference(_ other: Foundation.CharacterSet)
  func isSuperset(of other: Foundation.CharacterSet) -> Swift.Bool
  static func ==(lhs: Foundation.CharacterSet, rhs: Foundation.CharacterSet) -> Swift.Bool
  typealias Element = (Swift.UnicodeScalar)
  typealias WrappedSwiftNSType = Foundation._SwiftNSCharacterSet
}
extension CharacterSet : _CFBridgeable, _NSBridgeable {
  typealias CFType = CoreFoundation.CFCharacterSet
  typealias NSType = Foundation.NSCharacterSet
  var _cfObject: Foundation.CharacterSet.CFType {
    get {}
  }
  var _nsObject: Foundation.CharacterSet.NSType {
    get {}
  }
}
extension CharacterSet : _ObjectTypeBridgeable {
  static func _isBridgedToObjectiveC() -> Swift.Bool
  static func _getObjectiveCType() -> Any.Type
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSCharacterSet
  static func _forceBridgeFromObjectiveC(_ input: Foundation.NSCharacterSet, result: inout Foundation.CharacterSet?)
  static func _conditionallyBridgeFromObjectiveC(_ input: Foundation.NSCharacterSet, result: inout Foundation.CharacterSet?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSCharacterSet?) -> Foundation.CharacterSet
  typealias _ObjectType = Foundation.NSCharacterSet
}
func >=<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Swift.Bool where UnitType : Foundation.Unit
func >=<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Swift.Bool where UnitType : Foundation.Dimension
func <(lhs: Foundation.NSCalendar.Identifier, rhs: Foundation.NSCalendar.Identifier) -> Swift.Bool
func <(lhs: Foundation.NSLocale.Key, rhs: Foundation.NSLocale.Key) -> Swift.Bool
func <(lhs: Foundation.RunLoopMode, rhs: Foundation.RunLoopMode) -> Swift.Bool
func <(lhs: Foundation.XMLNode.Index, rhs: Foundation.XMLNode.Index) -> Swift.Bool
func <<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Swift.Bool where UnitType : Foundation.Unit
func <<UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Swift.Bool where UnitType : Foundation.Dimension
class NSURLRequest : Foundation.NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  convenience init(url: Foundation.URL)
  init(url: Foundation.URL, cachePolicy: Foundation.NSURLRequest.CachePolicy, timeoutInterval: Foundation.TimeInterval)
  func setValues(from source: Foundation.NSURLRequest)
  override func mutableCopy() -> Any
  func mutableCopy(with zone: Foundation.NSZone? = default) -> Any
  required init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  override func isEqual(_ object: Any?) -> Swift.Bool
  class var supportsSecureCoding: Swift.Bool {
    get {}
  }
  var url: <null>
  var mainDocumentURL: <null>
  var cachePolicy: <null>
  var timeoutInterval: <null>
  var httpMethod: <null>
  var allHTTPHeaderFields: <null>
  func value(forHTTPHeaderField field: Swift.String) -> Swift.String?
  enum Body {
    case data(Foundation.Data)
    case stream(Foundation.InputStream)
  }
  var _body: <null>
  var httpBody: Foundation.Data? {
    get {}
  }
  var httpBodyStream: Foundation.InputStream? {
    get {}
  }
  var networkServiceType: <null>
  var allowsCellularAccess: <null>
  var httpShouldHandleCookies: <null>
  var httpShouldUsePipelining: <null>
  @objc deinit
  init()
}
extension NSURLRequest {
  enum CachePolicy : Swift.UInt {
    case useProtocolCachePolicy
    case reloadIgnoringLocalCacheData
    case reloadIgnoringLocalAndRemoteCacheData
    static var reloadIgnoringCacheData: Foundation.NSURLRequest.CachePolicy {
      get {}
    }
    case returnCacheDataElseLoad
    case returnCacheDataDontLoad
    case reloadRevalidatingCacheData
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
  enum NetworkServiceType : Swift.UInt {
    case `default`
    case voip
    case video
    case background
    case voice
    case networkServiceTypeCallSignaling
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
extension NSURLRequest : _StructTypeBridgeable {
  typealias _StructType = Foundation.URLRequest
  func _bridgeToSwift() -> Foundation.URLRequest
}
func ><UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Swift.Bool where UnitType : Foundation.Unit
func ><UnitType>(lhs: Foundation.Measurement<UnitType>, rhs: Foundation.Measurement<UnitType>) -> Swift.Bool where UnitType : Foundation.Dimension
class NSIndexSet : Foundation.NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var _ranges: [Foundation.NSRange]
  var _count: Swift.Int
  init()
  init(indexesIn range: Foundation.NSRange)
  init(indexSet: Foundation.IndexSet)
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  override func mutableCopy() -> Any
  func mutableCopy(with zone: Foundation.NSZone? = default) -> Any
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  required init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  convenience init(index value: Swift.Int)
  func isEqual(to indexSet: Foundation.IndexSet) -> Swift.Bool
  var count: Swift.Int {
    get {}
  }
  var firstIndex: Swift.Int {
    get {}
  }
  var lastIndex: Swift.Int {
    get {}
  }
  func _indexAndRangeAdjacentToOrContainingIndex(_ idx: Swift.Int) -> (Swift.Int, Foundation.NSRange)?
  func _indexOfRangeContainingIndex(_ idx: Swift.Int) -> Swift.Int?
  func _indexOfRangeBeforeOrContainingIndex(_ idx: Swift.Int) -> Swift.Int?
  func _indexOfRangeAfterOrContainingIndex(_ idx: Swift.Int) -> Swift.Int?
  func _indexClosestToIndex(_ idx: Swift.Int, equalAllowed: Swift.Bool, following: Swift.Bool) -> Swift.Int?
  func indexGreaterThanIndex(_ value: Swift.Int) -> Swift.Int
  func indexLessThanIndex(_ value: Swift.Int) -> Swift.Int
  func indexGreaterThanOrEqual(to value: Swift.Int) -> Swift.Int
  func indexLessThanOrEqual(to value: Swift.Int) -> Swift.Int
  func getIndexes(_ indexBuffer: Swift.UnsafeMutablePointer<Swift.Int>, maxCount bufferSize: Swift.Int, inIndexRange range: Foundation.NSRangePointer?) -> Swift.Int
  func countOfIndexes(in range: Foundation.NSRange) -> Swift.Int
  func contains(_ value: Swift.Int) -> Swift.Bool
  func contains(in range: Foundation.NSRange) -> Swift.Bool
  func contains(_ indexSet: Foundation.IndexSet) -> Swift.Bool
  func intersects(in range: Foundation.NSRange) -> Swift.Bool
  func _enumerateWithOptions<P, R>(_ opts: Foundation.NSEnumerationOptions, range: Foundation.NSRange, paramType: P.Type, returnType: R.Type, block: (P, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> R) -> Swift.Int?
  func enumerate(_ block: (Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func enumerate(options opts: Foundation.NSEnumerationOptions = default, using block: (Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func enumerate(in range: Foundation.NSRange, options opts: Foundation.NSEnumerationOptions = default, using block: (Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func index(passingTest predicate: (Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Int
  func index(options opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Int
  func index(in range: Foundation.NSRange, options opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Int
  func indexes(passingTest predicate: (Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Foundation.IndexSet
  func indexes(options opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Foundation.IndexSet
  func indexes(in range: Foundation.NSRange, options opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Foundation.IndexSet
  func enumerateRanges(_ block: (Foundation.NSRange, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func enumerateRanges(options opts: Foundation.NSEnumerationOptions = default, using block: (Foundation.NSRange, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func enumerateRanges(in range: Foundation.NSRange, options opts: Foundation.NSEnumerationOptions = default, using block: (Foundation.NSRange, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  @objc deinit
}
extension NSIndexSet : Sequence {
  func makeIterator() -> Foundation.NSIndexSetIterator
  typealias Iterator = Foundation.NSIndexSetIterator
  typealias SubSequence = Swift.AnySequence<Foundation.NSIndexSetIterator.Element>
}
extension NSIndexSet : _StructTypeBridgeable {
  typealias _StructType = Foundation.IndexSet
  func _bridgeToSwift() -> Foundation.IndexSet
}
extension NSIndexSet : _HasCustomAnyHashableRepresentation {
  @nonobjc func _toCustomAnyHashable() -> Swift.AnyHashable?
}
class NSNotification : Foundation.NSObject, NSCopying, NSCoding {
  struct Name : RawRepresentable, Equatable, Hashable, Comparable {
    var rawValue: <null>
    init(rawValue: Swift.String)
    var hashValue: Swift.Int {
      get {}
    }
    static func ==(lhs: Foundation.NSNotification.Name, rhs: Foundation.NSNotification.Name) -> Swift.Bool
    static func <(lhs: Foundation.NSNotification.Name, rhs: Foundation.NSNotification.Name) -> Swift.Bool
    typealias RawValue = Swift.String
  }
  var name: <null>
  var object: <null>
  var userInfo: <null>
  convenience init()
  init(name: Foundation.NSNotification.Name, object: Any?, userInfo: [Swift.AnyHashable : Any]? = default)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  override var description: Swift.String {
    override get {}
  }
  @objc deinit
}
struct HTTPCookiePropertyKey : RawRepresentable, Equatable, Hashable, Comparable {
  var rawValue: <null>
  init(_ rawValue: Swift.String)
  init(rawValue: Swift.String)
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.HTTPCookiePropertyKey, rhs: Foundation.HTTPCookiePropertyKey) -> Swift.Bool
  static func <(lhs: Foundation.HTTPCookiePropertyKey, rhs: Foundation.HTTPCookiePropertyKey) -> Swift.Bool
  typealias RawValue = Swift.String
}
extension HTTPCookiePropertyKey {
  static var name: Foundation.HTTPCookiePropertyKey
  static var value: Foundation.HTTPCookiePropertyKey
  static var originURL: Foundation.HTTPCookiePropertyKey
  static var version: Foundation.HTTPCookiePropertyKey
  static var domain: Foundation.HTTPCookiePropertyKey
  static var path: Foundation.HTTPCookiePropertyKey
  static var secure: Foundation.HTTPCookiePropertyKey
  static var expires: Foundation.HTTPCookiePropertyKey
  static var comment: Foundation.HTTPCookiePropertyKey
  static var commentURL: Foundation.HTTPCookiePropertyKey
  static var discard: Foundation.HTTPCookiePropertyKey
  static var maximumAge: Foundation.HTTPCookiePropertyKey
  static var port: Foundation.HTTPCookiePropertyKey
  static var created: Foundation.HTTPCookiePropertyKey
}
struct StreamSOCKSProxyConfiguration : RawRepresentable, Equatable, Hashable, Comparable {
  let rawValue: <null>
  init(rawValue: Swift.String)
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.StreamSOCKSProxyConfiguration, rhs: Foundation.StreamSOCKSProxyConfiguration) -> Swift.Bool
  static func <(lhs: Foundation.StreamSOCKSProxyConfiguration, rhs: Foundation.StreamSOCKSProxyConfiguration) -> Swift.Bool
  typealias RawValue = Swift.String
}
extension StreamSOCKSProxyConfiguration {
  static var hostKey: Foundation.StreamSOCKSProxyConfiguration
  static var portKey: Foundation.StreamSOCKSProxyConfiguration
  static var versionKey: Foundation.StreamSOCKSProxyConfiguration
  static var userKey: Foundation.StreamSOCKSProxyConfiguration
  static var passwordKey: Foundation.StreamSOCKSProxyConfiguration
}
func NSMakeRect(_ x: Foundation.CGFloat, _ y: Foundation.CGFloat, _ w: Foundation.CGFloat, _ h: Foundation.CGFloat) -> Foundation.NSRect
protocol _ObjectTypeBridgeable : _ObjectBridgeable {
  associatedtype _ObjectType : AnyObject
  func _bridgeToObjectiveC() -> Self._ObjectType
  static func _forceBridgeFromObjectiveC(_ source: Self._ObjectType, result: inout Self?)
  @discardableResult static func _conditionallyBridgeFromObjectiveC(_ source: Self._ObjectType, result: inout Self?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Self._ObjectType?) -> Self
}
extension _ObjectTypeBridgeable {
  func _bridgeToAnyObject() -> AnyObject
}
func NSStringFromRect(_ aRect: Foundation.NSRect) -> Swift.String
func NSDecimalPower(_ result: Swift.UnsafeMutablePointer<Foundation.Decimal>, _ number: Swift.UnsafePointer<Foundation.Decimal>, _ power: Swift.Int, _ roundingMode: Foundation.NSDecimalNumber.RoundingMode) -> Foundation.NSDecimalNumber.CalculationError
let __kCFAllocatesCollectable: CoreFoundation.CFOptionFlags
var NSFileReadTooLargeError: Swift.Int {
  get {}
}
struct StreamSocketSecurityLevel : RawRepresentable, Equatable, Hashable, Comparable {
  let rawValue: <null>
  init(rawValue: Swift.String)
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.StreamSocketSecurityLevel, rhs: Foundation.StreamSocketSecurityLevel) -> Swift.Bool
  static func <(lhs: Foundation.StreamSocketSecurityLevel, rhs: Foundation.StreamSocketSecurityLevel) -> Swift.Bool
  typealias RawValue = Swift.String
}
extension StreamSocketSecurityLevel {
  static var none: Foundation.StreamSocketSecurityLevel
  static var ssLv2: Foundation.StreamSocketSecurityLevel
  static var ssLv3: Foundation.StreamSocketSecurityLevel
  static var tlSv1: Foundation.StreamSocketSecurityLevel
  static var negotiatedSSL: Foundation.StreamSocketSecurityLevel
}
class NSCondition : Foundation.NSObject, NSLocking {
  var mutex: Swift.UnsafeMutablePointer<SwiftGlibc.pthread_mutex_t>
  var cond: Swift.UnsafeMutablePointer<SwiftGlibc.pthread_cond_t>
  init()
  @objc deinit
  func lock()
  func unlock()
  func wait()
  func wait(until limit: Foundation.Date) -> Swift.Bool
  func signal()
  func broadcast()
  var name: <null>
}
final class _DataStorage {
  enum Backing {
    case swift
    case immutable(Foundation.NSData)
    case mutable(Foundation.NSMutableData)
    case customReference(Foundation.NSData)
    case customMutableReference(Foundation.NSMutableData)
  }
  static var maxSize: Swift.Int
  static var vmOpsThreshold: Swift.Int
  static func allocate(_ size: Swift.Int, _ clear: Swift.Bool) -> Swift.UnsafeMutableRawPointer?
  static func move(_ dest_: Swift.UnsafeMutableRawPointer, _ source_: Swift.UnsafeRawPointer?, _ num_: Swift.Int)
  static func shouldAllocateCleared(_ size: Swift.Int) -> Swift.Bool
  final var _bytes: <null>
  final var _length: <null>
  final var _capacity: <null>
  final var _needToZero: <null>
  final var _deallocator: <null>
  final var _backing: <null>
  final var bytes: Swift.UnsafeRawPointer? {
    @inline(__always) final get {}
  }
  final var mutableBytes: Swift.UnsafeMutableRawPointer? {
    @inline(__always) final get {}
  }
  final var length: Swift.Int {
    @inline(__always) final get {}
    @inline(__always) final set(newValue) {}
  }
  final func _freeBytes()
  final func enumerateBytes(_ block: (Swift.UnsafeBufferPointer<Swift.UInt8>, Foundation.Data.Index, inout Swift.Bool) -> Swift.Void)
  @inline(never) final func _grow(_ newLength: Swift.Int, _ clear: Swift.Bool)
  @inline(__always) final func setLength(_ length: Swift.Int)
  @inline(__always) final func append(_ bytes: Swift.UnsafeRawPointer, length: Swift.Int)
  @inline(__always) final func append(_ otherData: Foundation._DataStorage, startingAt start: Swift.Int)
  @inline(__always) final func append(_ otherData: Foundation.Data)
  @inline(__always) final func increaseLength(by extraLength: Swift.Int)
  @inline(__always) final func set(_ index: Swift.Int, to value: Swift.UInt8)
  @inline(__always) final func replaceBytes(in range: Foundation.NSRange, with bytes: Swift.UnsafeRawPointer?)
  @inline(__always) final func replaceBytes(in range: Foundation.NSRange, with replacementBytes: Swift.UnsafeRawPointer?, length replacementLength: Swift.Int)
  @inline(__always) final func resetBytes(in range: Foundation.NSRange)
  convenience init()
  init(length: Swift.Int)
  init(capacity capacity_: Swift.Int)
  init(bytes: Swift.UnsafeRawPointer?, length: Swift.Int)
  init(bytes: Swift.UnsafeMutableRawPointer?, length: Swift.Int, copy: Swift.Bool, deallocator: ((Swift.UnsafeMutableRawPointer, Swift.Int) -> Swift.Void)?)
  init(immutableReference: Foundation.NSData)
  init(mutableReference: Foundation.NSMutableData)
  init(customReference: Foundation.NSData)
  init(customMutableReference: Foundation.NSMutableData)
  @objc deinit
  @inline(__always) final func mutableCopy(_ range: Swift.Range<Swift.Int>) -> Foundation._DataStorage
  final func withInteriorPointerReference<T>(_ range: Swift.Range<Swift.Int>, _ work: (Foundation.NSData) throws -> T) rethrows -> T
  final func bridgedReference() -> Foundation.NSData
  final var hashValue: Swift.Int {
    final get {}
  }
  final func subdata(in range: Swift.Range<Foundation.Data.Index>) -> Foundation.Data
}
class URLSessionConfiguration : Foundation.NSObject, NSCopying {
  init()
  init(identifier: Swift.String?, requestCachePolicy: Foundation.URLRequest.CachePolicy, timeoutIntervalForRequest: Foundation.TimeInterval, timeoutIntervalForResource: Foundation.TimeInterval, networkServiceType: Foundation.URLRequest.NetworkServiceType, allowsCellularAccess: Swift.Bool, discretionary: Swift.Bool, connectionProxyDictionary: [Swift.AnyHashable : Any]?, httpShouldUsePipelining: Swift.Bool, httpShouldSetCookies: Swift.Bool, httpCookieAcceptPolicy: Foundation.HTTPCookie.AcceptPolicy, httpAdditionalHeaders: [Swift.AnyHashable : Any]?, httpMaximumConnectionsPerHost: Swift.Int, httpCookieStorage: Foundation.HTTPCookieStorage?, urlCredentialStorage: Foundation.URLCredentialStorage?, urlCache: Foundation.URLCache?, shouldUseExtendedBackgroundIdleMode: Swift.Bool, protocolClasses: [Swift.AnyClass]?)
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone?) -> Any
  class var `default`: Foundation.URLSessionConfiguration {
    get {}
  }
  class var ephemeral: Foundation.URLSessionConfiguration {
    get {}
  }
  class func background(withIdentifier identifier: Swift.String) -> Foundation.URLSessionConfiguration
  var identifier: <null>
  var requestCachePolicy: <null>
  var timeoutIntervalForRequest: <null>
  var timeoutIntervalForResource: <null>
  var networkServiceType: <null>
  var allowsCellularAccess: <null>
  var discretionary: <null>
  var sharedContainerIdentifier: Swift.String? {
    get {}
  }
  var connectionProxyDictionary: <null>
  var httpShouldUsePipelining: <null>
  var httpShouldSetCookies: <null>
  var httpCookieAcceptPolicy: <null>
  var httpAdditionalHeaders: <null>
  var httpMaximumConnectionsPerHost: <null>
  var httpCookieStorage: <null>
  var urlCredentialStorage: <null>
  var urlCache: <null>
  var shouldUseExtendedBackgroundIdleMode: <null>
  var protocolClasses: <null>
  @objc deinit
}
protocol _MutableBoxing : ReferenceConvertible {
  var _handle: Foundation._MutableHandle<Self.ReferenceType> { get set }
  mutating func _applyMutation<ReturnType>(_ whatToDo: (Self.ReferenceType) -> ReturnType) -> ReturnType
}
extension _MutableBoxing {
  @inline(__always) mutating func _applyMutation<ReturnType>(_ whatToDo: (Self.ReferenceType) -> ReturnType) -> ReturnType
}
class PersonNameComponentsFormatter : Foundation.Formatter {
  required init?(coder: Foundation.NSCoder)
  var style: <null>
  var isPhonetic: <null>
  class func localizedString(from components: Foundation.PersonNameComponents, style nameFormatStyle: Foundation.PersonNameComponentsFormatter.Style, options nameOptions: Foundation.PersonNameComponentsFormatter.Options = default) -> Swift.String
  func string(from components: Foundation.PersonNameComponents) -> Swift.String
  func annotatedString(from components: Foundation.PersonNameComponents) -> Foundation.NSAttributedString
  func personNameComponents(from string: Swift.String) -> Foundation.PersonNameComponents?
  override func objectValue(_ string: Swift.String) throws -> Any?
  @objc deinit
  init()
}
extension PersonNameComponentsFormatter {
  enum Style : Swift.Int {
    case `default`
    case short
    case medium
    case long
    case abbreviated
    typealias RawValue = Swift.Int
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.Int)
    var rawValue: Swift.Int {
      get {}
    }
  }
  struct Options : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var phonetic: Foundation.PersonNameComponentsFormatter.Options
    typealias Element = Foundation.PersonNameComponentsFormatter.Options
    typealias RawValue = Swift.UInt
  }
}
@available(*, unavailable, renamed: "String.Encoding.isoLatin2") var NSISOLatin2StringEncoding: Swift.String.Encoding {
  get {}
}
var NSTimeIntervalSince1970: Swift.Double {
  get {}
}
func NSRangeFromString(_ aString: Swift.String) -> Foundation.NSRange
class NSNull : Foundation.NSObject, NSCopying, NSSecureCoding {
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  init()
  required init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  override func isEqual(_ object: Any?) -> Swift.Bool
  @objc deinit
}
func rint(_ x: Foundation.CGFloat) -> Foundation.CGFloat
func NSMaxX(_ aRect: Foundation.NSRect) -> Foundation.CGFloat
func NSMaxY(_ aRect: Foundation.NSRect) -> Foundation.CGFloat
func printLibcurlDebug(handle: CoreFoundation.CFURLSessionEasyHandle, type: Swift.CInt, data: Swift.UnsafeMutablePointer<Swift.Int8>, size: Swift.Int, userInfo: Swift.UnsafeMutableRawPointer?) -> Swift.CInt
func printLibcurlDebug(type: CoreFoundation.CFURLSessionInfo, data: Swift.String, task: Foundation.URLSessionTask)
class NSMutableData : Foundation.NSData {
  var _cfMutableObject: CoreFoundation.CFMutableData {
    get {}
  }
  init(bytes: Swift.UnsafeMutableRawPointer?, length: Swift.Int, copy: Swift.Bool = default, deallocator: ((Swift.UnsafeMutableRawPointer, Swift.Int) -> Swift.Void)? = default)
  init()
  convenience init?(capacity: Swift.Int)
  convenience init?(length: Swift.Int)
  var mutableBytes: Swift.UnsafeMutableRawPointer {
    get {}
  }
  override var length: Swift.Int {
    override get {}
    set(newValue) {}
  }
  override func copy(with zone: Foundation.NSZone? = default) -> Any
  func append(_ bytes: Swift.UnsafeRawPointer, length: Swift.Int)
  func append(_ other: Foundation.Data)
  func increaseLength(by extraLength: Swift.Int)
  func replaceBytes(in range: Foundation.NSRange, withBytes bytes: Swift.UnsafeRawPointer)
  func resetBytes(in range: Foundation.NSRange)
  func setData(_ data: Foundation.Data)
  func replaceBytes(in range: Foundation.NSRange, withBytes replacementBytes: Swift.UnsafeRawPointer?, length replacementLength: Swift.Int)
  @objc deinit
}
class __NSCFType : Foundation.NSObject {
  var _cfinfo: <null>
  init()
  override var hash: Swift.Int {
    override get {}
  }
  override func isEqual(_ value: Any?) -> Swift.Bool
  override var description: Swift.String {
    override get {}
  }
  @objc deinit
}
func nearbyint(_ x: Foundation.CGFloat) -> Foundation.CGFloat
func _NSXMLParserHasInternalSubset(_ ctx: CoreFoundation._CFXMLInterface) -> Swift.Int32
func NSGetSizeAndAlignment(_ typePtr: Swift.UnsafePointer<Swift.Int8>, _ sizep: Swift.UnsafeMutablePointer<Swift.Int>?, _ alignp: Swift.UnsafeMutablePointer<Swift.Int>?) -> Swift.UnsafePointer<Swift.Int8>
struct NSSortOptions : OptionSet {
  let rawValue: <null>
  init(rawValue: Swift.UInt)
  static var concurrent: Foundation.NSSortOptions
  static var stable: Foundation.NSSortOptions
  typealias Element = Foundation.NSSortOptions
  typealias RawValue = Swift.UInt
}
func NSMakeSize(_ w: Foundation.CGFloat, _ h: Foundation.CGFloat) -> Foundation.NSSize
func NSRectFromCGRect(_ cgrect: Foundation.CGRect) -> Foundation.NSRect
class NSData : Foundation.NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  typealias CFType = CoreFoundation.CFData
  var _base: Foundation._CFInfo
  var _length: <null>
  var _capacity: <null>
  var _deallocator: <null>
  var _deallocHandler: <null>
  var _bytes: <null>
  var _cfObject: Foundation.NSData.CFType {
    get {}
  }
  func _providesConcreteBacking() -> Swift.Bool
  override var _cfTypeID: CoreFoundation.CFTypeID {
    override get {}
  }
  init(bytes: Swift.UnsafeMutableRawPointer?, length: Swift.Int, copy: Swift.Bool = default, deallocator: ((Swift.UnsafeMutableRawPointer, Swift.Int) -> Swift.Void)? = default)
  convenience init()
  convenience init(bytes: Swift.UnsafeRawPointer?, length: Swift.Int)
  convenience init(bytesNoCopy bytes: Swift.UnsafeMutableRawPointer, length: Swift.Int)
  convenience init(bytesNoCopy bytes: Swift.UnsafeMutableRawPointer, length: Swift.Int, freeWhenDone b: Swift.Bool)
  convenience init(bytesNoCopy bytes: Swift.UnsafeMutableRawPointer, length: Swift.Int, deallocator: ((Swift.UnsafeMutableRawPointer, Swift.Int) -> Swift.Void)? = default)
  convenience init(contentsOfFile path: Swift.String, options readOptionsMask: Foundation.NSData.ReadingOptions = default) throws
  convenience init?(contentsOfFile path: Swift.String)
  convenience init(data: Foundation.Data)
  convenience init(contentsOf url: Foundation.URL, options readOptionsMask: Foundation.NSData.ReadingOptions = default) throws
  convenience init?(base64Encoded base64String: Swift.String, options: Foundation.NSData.Base64DecodingOptions = default)
  convenience init?(base64Encoded base64Data: Foundation.Data, options: Foundation.NSData.Base64DecodingOptions = default)
  @objc deinit
  var length: Swift.Int {
    get {}
  }
  var bytes: Swift.UnsafeRawPointer {
    get {}
  }
  override var hash: Swift.Int {
    override get {}
  }
  override func isEqual(_ value: Any?) -> Swift.Bool
  func isEqual(to other: Foundation.Data) -> Swift.Bool
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  override func mutableCopy() -> Any
  func mutableCopy(with zone: Foundation.NSZone? = default) -> Any
  func byteDescription(limit: Swift.Int? = default) -> Swift.String
  override var debugDescription: Swift.String {
    override get {}
  }
  override var description: Swift.String {
    override get {}
  }
  func encode(with aCoder: Foundation.NSCoder)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  struct NSDataReadResult {
    var bytes: <null>
    var length: <null>
    var deallocator: <null>
    init(bytes: Swift.UnsafeMutableRawPointer, length: Swift.Int, deallocator: ((Swift.UnsafeMutableRawPointer, Swift.Int) -> Swift.Void)?)
  }
  static func readBytesFromFileWithExtendedAttributes(_ path: Swift.String, options: Foundation.NSData.ReadingOptions) throws -> Foundation.NSData.NSDataReadResult
  func makeTemporaryFile(inDirectory dirPath: Swift.String) throws -> (Swift.Int32, Swift.String)
  class func write(toFileDescriptor fd: Swift.Int32, path: Swift.String? = default, buf: Swift.UnsafeRawPointer, length: Swift.Int) throws
  func write(toFile path: Swift.String, options writeOptionsMask: Foundation.NSData.WritingOptions = default) throws
  func write(toFile path: Swift.String, atomically useAuxiliaryFile: Swift.Bool) -> Swift.Bool
  func write(to url: Foundation.URL, atomically: Swift.Bool) -> Swift.Bool
  func write(to url: Foundation.URL, options writeOptionsMask: Foundation.NSData.WritingOptions = default) throws
  func getBytes(_ buffer: Swift.UnsafeMutableRawPointer, length: Swift.Int)
  func getBytes(_ buffer: Swift.UnsafeMutableRawPointer, range: Foundation.NSRange)
  func subdata(with range: Foundation.NSRange) -> Foundation.Data
  func range(of dataToFind: Foundation.Data, options mask: Foundation.NSData.SearchOptions = default, in searchRange: Foundation.NSRange) -> Foundation.NSRange
  static func searchSubSequence<T, T2>(_ subSequence: T2, inSequence seq: T, anchored: Swift.Bool) -> T.Index? where T : Collection, T2 : Sequence, T.Iterator.Element : Equatable, T2.Iterator.Element == T.Iterator.Element, T.Indices.Iterator.Element == T.Index, T.SubSequence.Iterator.Element == T.Iterator.Element
  func enumerateByteRangesUsingBlockRethrows(_ block: (Swift.UnsafeRawPointer, Foundation.NSRange, Swift.UnsafeMutablePointer<Swift.Bool>) throws -> Swift.Void) throws
  func enumerateBytes(_ block: (Swift.UnsafeRawPointer, Foundation.NSRange, Swift.UnsafeMutablePointer<Swift.Bool>) -> Swift.Void)
  func base64EncodedString(options: Foundation.NSData.Base64EncodingOptions = default) -> Swift.String
  func base64EncodedData(options: Foundation.NSData.Base64EncodingOptions = default) -> Foundation.Data
  static var base64ByteMappings: <null>
  static var base64Padding: <null>
  enum Base64DecodedByte {
    case valid(Swift.UInt8)
    case invalid
    case padding
  }
  static func base64DecodeByte(_ byte: Swift.UInt8) -> Foundation.NSData.Base64DecodedByte
  static func base64EncodeByte(_ byte: Swift.UInt8) -> Swift.UInt8
  static func base64DecodeBytes(_ bytes: [Swift.UInt8], options: Foundation.NSData.Base64DecodingOptions = default) -> [Swift.UInt8]?
  static func base64EncodeBytes(_ bytes: [Swift.UInt8], options: Foundation.NSData.Base64EncodingOptions = default) -> [Swift.UInt8]
}
extension NSData {
  struct ReadingOptions : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var mappedIfSafe: Foundation.NSData.ReadingOptions
    static var uncached: Foundation.NSData.ReadingOptions
    static var alwaysMapped: Foundation.NSData.ReadingOptions
    typealias Element = Foundation.NSData.ReadingOptions
    typealias RawValue = Swift.UInt
  }
  struct WritingOptions : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var atomic: Foundation.NSData.WritingOptions
    static var withoutOverwriting: Foundation.NSData.WritingOptions
    typealias Element = Foundation.NSData.WritingOptions
    typealias RawValue = Swift.UInt
  }
  struct SearchOptions : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var backwards: Foundation.NSData.SearchOptions
    static var anchored: Foundation.NSData.SearchOptions
    typealias Element = Foundation.NSData.SearchOptions
    typealias RawValue = Swift.UInt
  }
  struct Base64EncodingOptions : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var lineLength64Characters: Foundation.NSData.Base64EncodingOptions
    static var lineLength76Characters: Foundation.NSData.Base64EncodingOptions
    static var endLineWithCarriageReturn: Foundation.NSData.Base64EncodingOptions
    static var endLineWithLineFeed: Foundation.NSData.Base64EncodingOptions
    typealias Element = Foundation.NSData.Base64EncodingOptions
    typealias RawValue = Swift.UInt
  }
  struct Base64DecodingOptions : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var ignoreUnknownCharacters: Foundation.NSData.Base64DecodingOptions
    typealias Element = Foundation.NSData.Base64DecodingOptions
    typealias RawValue = Swift.UInt
  }
}
extension NSData : _CFBridgeable, _SwiftBridgeable {
  typealias SwiftType = Foundation.Data
  var _swiftObject: Foundation.NSData.SwiftType {
    get {}
  }
}
extension NSData : _StructTypeBridgeable {
  typealias _StructType = Foundation.Data
  func _bridgeToSwift() -> Foundation.Data
}
extension NSData : _HasCustomAnyHashableRepresentation {
  @nonobjc func _toCustomAnyHashable() -> Swift.AnyHashable?
}
struct URLRequest : ReferenceConvertible, Equatable, Hashable {
  typealias ReferenceType = Foundation.NSURLRequest
  typealias CachePolicy = Foundation.NSURLRequest.CachePolicy
  typealias NetworkServiceType = Foundation.NSURLRequest.NetworkServiceType
  var _handle: <null>
  mutating func _applyMutation<ReturnType>(_ whatToDo: (Foundation.NSMutableURLRequest) -> ReturnType) -> ReturnType
  init(url: Foundation.URL, cachePolicy: Foundation.URLRequest.CachePolicy = default, timeoutInterval: Foundation.TimeInterval = default)
  init(_bridged request: Foundation.NSURLRequest)
  var url: Foundation.URL? {
    get {}
    set(newValue) {}
  }
  var cachePolicy: Foundation.URLRequest.CachePolicy {
    get {}
    set(newValue) {}
  }
  var timeoutInterval: Foundation.TimeInterval {
    get {}
    set(newValue) {}
  }
  var mainDocumentURL: Foundation.URL? {
    get {}
    set(newValue) {}
  }
  var networkServiceType: Foundation.URLRequest.NetworkServiceType {
    get {}
    set(newValue) {}
  }
  var allowsCellularAccess: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var httpMethod: Swift.String? {
    get {}
    set(newValue) {}
  }
  var allHTTPHeaderFields: [Swift.String : Swift.String]? {
    get {}
    set(newValue) {}
  }
  func value(forHTTPHeaderField field: Swift.String) -> Swift.String?
  mutating func setValue(_ value: Swift.String?, forHTTPHeaderField field: Swift.String)
  mutating func addValue(_ value: Swift.String, forHTTPHeaderField field: Swift.String)
  var httpBody: Foundation.Data? {
    get {}
    set(newValue) {}
  }
  var httpBodyStream: Foundation.InputStream? {
    get {}
    set(newValue) {}
  }
  var httpShouldHandleCookies: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var httpShouldUsePipelining: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.URLRequest, rhs: Foundation.URLRequest) -> Swift.Bool
}
extension URLRequest : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension URLRequest : _ObjectTypeBridgeable {
  static func _getObjectiveCType() -> Any.Type
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSURLRequest
  static func _forceBridgeFromObjectiveC(_ input: Foundation.NSURLRequest, result: inout Foundation.URLRequest?)
  static func _conditionallyBridgeFromObjectiveC(_ input: Foundation.NSURLRequest, result: inout Foundation.URLRequest?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSURLRequest?) -> Foundation.URLRequest
  typealias _ObjectType = Foundation.NSURLRequest
}
struct PersonNameComponents : ReferenceConvertible, Hashable, Equatable, _MutableBoxing {
  typealias ReferenceType = Foundation.NSPersonNameComponents
  var _handle: <null>
  init()
  init(reference: Foundation.NSPersonNameComponents)
  var namePrefix: Swift.String? {
    get {}
    set(newValue) {}
  }
  var givenName: Swift.String? {
    get {}
    set(newValue) {}
  }
  var middleName: Swift.String? {
    get {}
    set(newValue) {}
  }
  var familyName: Swift.String? {
    get {}
    set(newValue) {}
  }
  var nameSuffix: Swift.String? {
    get {}
    set(newValue) {}
  }
  var nickname: Swift.String? {
    get {}
    set(newValue) {}
  }
  var phoneticRepresentation: Foundation.PersonNameComponents? {
    get {}
    set(newValue) {}
  }
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.PersonNameComponents, rhs: Foundation.PersonNameComponents) -> Swift.Bool
}
extension PersonNameComponents : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension PersonNameComponents : _ObjectTypeBridgeable {
  static func _getObjectiveCType() -> Any.Type
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSPersonNameComponents
  static func _forceBridgeFromObjectiveC(_ personNameComponents: Foundation.NSPersonNameComponents, result: inout Foundation.PersonNameComponents?)
  static func _conditionallyBridgeFromObjectiveC(_ personNameComponents: Foundation.NSPersonNameComponents, result: inout Foundation.PersonNameComponents?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSPersonNameComponents?) -> Foundation.PersonNameComponents
  typealias _ObjectType = Foundation.NSPersonNameComponents
}
func _CFSwiftStringDelete(_ str: AnyObject, range: CoreFoundation.CFRange)
class NSDate : Foundation.NSObject, NSCopying, NSSecureCoding, NSCoding {
  typealias CFType = CoreFoundation.CFDate
  override var hash: Swift.Int {
    override get {}
  }
  override func isEqual(_ value: Any?) -> Swift.Bool
  @objc deinit
  var _cfObject: Foundation.NSDate.CFType {
    get {}
  }
  final let _base: Foundation._CFInfo
  final let _timeIntervalSinceReferenceDate: <null>
  var timeIntervalSinceReferenceDate: Foundation.TimeInterval {
    get {}
  }
  class var timeIntervalSinceReferenceDate: Foundation.TimeInterval {
    get {}
  }
  convenience init()
  required init(timeIntervalSinceReferenceDate ti: Foundation.TimeInterval)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  func encode(with aCoder: Foundation.NSCoder)
  override var description: Swift.String {
    override get {}
  }
  func description(with locale: Foundation.Locale?) -> Swift.String
  override var _cfTypeID: CoreFoundation.CFTypeID {
    override get {}
  }
}
extension NSDate {
  func timeIntervalSince(_ anotherDate: Foundation.Date) -> Foundation.TimeInterval
  var timeIntervalSinceNow: Foundation.TimeInterval {
    get {}
  }
  var timeIntervalSince1970: Foundation.TimeInterval {
    get {}
  }
  func addingTimeInterval(_ ti: Foundation.TimeInterval) -> Foundation.Date
  func earlierDate(_ anotherDate: Foundation.Date) -> Foundation.Date
  func laterDate(_ anotherDate: Foundation.Date) -> Foundation.Date
  func compare(_ other: Foundation.Date) -> Foundation.ComparisonResult
  func isEqual(to otherDate: Foundation.Date) -> Swift.Bool
}
extension NSDate {
  static var _distantFuture: Foundation.Date
  class var distantFuture: Foundation.Date {
    get {}
  }
  static var _distantPast: Foundation.Date
  class var distantPast: Foundation.Date {
    get {}
  }
  convenience init(timeIntervalSinceNow secs: Foundation.TimeInterval)
  convenience init(timeIntervalSince1970 secs: Foundation.TimeInterval)
  convenience init(timeInterval secsToBeAdded: Foundation.TimeInterval, since date: Foundation.Date)
}
extension NSDate : _CFBridgeable, _SwiftBridgeable {
  typealias SwiftType = Foundation.Date
  var _swiftObject: Foundation.Date {
    get {}
  }
}
extension NSDate : _StructTypeBridgeable {
  typealias _StructType = Foundation.Date
  func _bridgeToSwift() -> Foundation.Date
}
let __kCFUseAllocator: CoreFoundation.CFOptionFlags
func _CFSwiftStringFastCStringContents(_ str: AnyObject, _ nullTerminated: Swift.Bool) -> Swift.UnsafePointer<Swift.Int8>?
class NSMutableString : Foundation.NSString {
  func replaceCharacters(in range: Foundation.NSRange, with aString: Swift.String)
  required init(characters: Swift.UnsafePointer<Foundation.unichar>, length: Swift.Int)
  required init(capacity: Swift.Int)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  required convenience init(unicodeScalarLiteral value: Swift.StaticString)
  required convenience init(extendedGraphemeClusterLiteral value: Swift.StaticString)
  required init(stringLiteral value: Swift.StaticString)
  required init(string aString: Swift.String)
  func appendCharacters(_ characters: Swift.UnsafePointer<Foundation.unichar>, length: Swift.Int)
  func _cfAppendCString(_ characters: Swift.UnsafePointer<Swift.Int8>, length: Swift.Int)
  @objc deinit
  init(_ string: Swift.String)
}
extension NSMutableString {
  func insert(_ aString: Swift.String, at loc: Swift.Int)
  func deleteCharacters(in range: Foundation.NSRange)
  func append(_ aString: Swift.String)
  func setString(_ aString: Swift.String)
  func _replaceOccurrencesOfRegularExpressionPattern(_ pattern: Swift.String, withTemplate replacement: Swift.String, options: Foundation.NSString.CompareOptions, range searchRange: Foundation.NSRange) -> Swift.Int
  func replaceOccurrences(of target: Swift.String, with replacement: Swift.String, options: Foundation.NSString.CompareOptions = default, range searchRange: Foundation.NSRange) -> Swift.Int
  func applyTransform(_ transform: Swift.String, reverse: Swift.Bool, range: Foundation.NSRange, updatedRange resultingRange: Foundation.NSRangePointer?) -> Swift.Bool
}
extension NSMutableString {
  var _cfMutableObject: CoreFoundation.CFMutableString {
    get {}
  }
}
class NSDateInterval : Foundation.NSObject, NSCopying, NSSecureCoding {
  var startDate: <null>
  var endDate: Foundation.Date {
    get {}
  }
  var duration: <null>
  convenience init()
  required convenience init?(coder: Foundation.NSCoder)
  init(start startDate: Foundation.Date, duration: Foundation.TimeInterval)
  convenience init(start startDate: Foundation.Date, end endDate: Foundation.Date)
  func copy(with zone: Foundation.NSZone?) -> Any
  func encode(with aCoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  func compare(_ dateInterval: Foundation.DateInterval) -> Foundation.ComparisonResult
  func isEqual(to dateInterval: Foundation.DateInterval) -> Swift.Bool
  func intersects(_ dateInterval: Foundation.DateInterval) -> Swift.Bool
  func intersection(with dateInterval: Foundation.DateInterval) -> Foundation.DateInterval?
  func contains(_ date: Foundation.Date) -> Swift.Bool
  @objc deinit
}
extension NSDateInterval : _StructTypeBridgeable {
  typealias _StructType = Foundation.DateInterval
  func _bridgeToSwift() -> Foundation.DateInterval
}
func NSIntegralRect(_ aRect: Foundation.NSRect) -> Foundation.NSRect
func NSStringFromSize(_ aSize: Foundation.NSSize) -> Swift.String
func NSRequiresConcreteImplementation(_ fn: Swift.String = #function, file: Swift.StaticString = #file, line: Swift.UInt = #line) -> Swift.Never
class NSError : Foundation.NSObject, NSCopying, NSSecureCoding, NSCoding {
  typealias CFType = CoreFoundation.CFError
  var _cfObject: Foundation.NSError.CFType {
    get {}
  }
  var _domain: <null>
  var _code: <null>
  var _userInfo: <null>
  init(domain: Swift.String, code: Swift.Int, userInfo dict: [Swift.String : Any]? = default)
  required init?(coder aDecoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  func encode(with aCoder: Foundation.NSCoder)
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  var domain: Swift.String {
    get {}
  }
  var code: Swift.Int {
    get {}
  }
  var userInfo: [Swift.String : Any] {
    get {}
  }
  var localizedDescription: Swift.String {
    get {}
  }
  var localizedFailureReason: Swift.String? {
    get {}
  }
  var localizedRecoverySuggestion: Swift.String? {
    get {}
  }
  var localizedRecoveryOptions: [Swift.String]? {
    get {}
  }
  var recoveryAttempter: Any? {
    get {}
  }
  var helpAnchor: Swift.String? {
    get {}
  }
  typealias NSErrorProvider = (Foundation.NSError, Swift.String) -> AnyObject?
  static var userInfoProviders: [Swift.String : Foundation.NSError.NSErrorProvider]
  class func setUserInfoValueProvider(forDomain errorDomain: Swift.String, provider: ((Foundation.NSError, Swift.String) -> AnyObject?)?)
  class func userInfoValueProvider(forDomain errorDomain: Swift.String) -> ((Foundation.NSError, Swift.String) -> AnyObject?)?
  override var description: Swift.String {
    override get {}
  }
  override var hashValue: Swift.Int {
    override get {}
  }
  override func isEqual(_ object: Any?) -> Swift.Bool
  @objc deinit
  init()
}
extension NSError : Error {
}
extension NSError : _CFBridgeable {
}
class NSTimeZone : Foundation.NSObject, NSCopying, NSSecureCoding, NSCoding {
  typealias CFType = CoreFoundation.CFTimeZone
  var _base: Foundation._CFInfo
  var _name: <null>
  var _data: <null>
  var _periods: <null>
  var _periodCnt: Swift.Int32
  var _cfObject: Foundation.NSTimeZone.CFType {
    get {}
  }
  convenience init?(name tzName: Swift.String)
  init?(name tzName: Swift.String, data aData: Foundation.Data?)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  override var hash: Swift.Int {
    override get {}
  }
  override func isEqual(_ object: Any?) -> Swift.Bool
  override var description: Swift.String {
    override get {}
  }
  @objc deinit
  init(_name tzName: Swift.String)
  convenience init(forSecondsFromGMT seconds: Swift.Int)
  convenience init?(abbreviation: Swift.String)
  func encode(with aCoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  var name: Swift.String {
    get {}
  }
  var data: Foundation.Data {
    get {}
  }
  func secondsFromGMT(for aDate: Foundation.Date) -> Swift.Int
  func abbreviation(for aDate: Foundation.Date) -> Swift.String?
  func isDaylightSavingTime(for aDate: Foundation.Date) -> Swift.Bool
  func daylightSavingTimeOffset(for aDate: Foundation.Date) -> Foundation.TimeInterval
  func nextDaylightSavingTimeTransition(after aDate: Foundation.Date) -> Foundation.Date?
  init()
}
extension NSTimeZone {
  class var system: Foundation.TimeZone {
    get {}
  }
  class func resetSystemTimeZone()
  class var `default`: Foundation.TimeZone {
    get {}
    set(newValue) {}
  }
  class var local: Foundation.TimeZone {
    get {}
  }
  class var knownTimeZoneNames: [Swift.String] {
    get {}
  }
  class var abbreviationDictionary: [Swift.String : Swift.String] {
    get {}
    set(newValue) {}
  }
  class var timeZoneDataVersion: Swift.String {
    get {}
  }
  var secondsFromGMT: Swift.Int {
    get {}
  }
  var abbreviation: Swift.String? {
    get {}
  }
  var isDaylightSavingTime: Swift.Bool {
    get {}
  }
  var daylightSavingTimeOffset: Foundation.TimeInterval {
    get {}
  }
  var nextDaylightSavingTimeTransition: Foundation.Date? {
    get {}
  }
  func isEqual(to aTimeZone: Foundation.TimeZone) -> Swift.Bool
  func localizedName(_ style: Foundation.NSTimeZone.NameStyle, locale: Foundation.Locale?) -> Swift.String?
}
extension NSTimeZone : _SwiftBridgeable, _CFBridgeable {
  typealias SwiftType = Foundation.TimeZone
  var _swiftObject: Foundation.TimeZone {
    get {}
  }
}
extension NSTimeZone {
  enum NameStyle : Swift.Int {
    case standard
    case shortStandard
    case daylightSaving
    case shortDaylightSaving
    case generic
    case shortGeneric
    typealias RawValue = Swift.Int
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.Int)
    var rawValue: Swift.Int {
      get {}
    }
  }
}
var NSFileManagerUnmountUnknownError: Swift.Int {
  get {}
}
class _NSErrorRecoveryAttempter {
  func attemptRecovery(fromError nsError: Foundation.NSError, optionIndex recoveryOptionIndex: Swift.Int) -> Swift.Bool
  @objc deinit
  init()
}
class NSConcreteValue : Foundation.NSValue {
  struct TypeInfo : Equatable {
    let size: <null>
    let name: <null>
    init?(objCType spec: Swift.String)
  }
  static var _cachedTypeInfo: [Swift.String : Foundation.NSConcreteValue.TypeInfo]
  static var _cachedTypeInfoLock: Foundation.NSLock
  var _typeInfo: <null>
  var _storage: <null>
  required init(bytes value: Swift.UnsafeRawPointer, objCType type: Swift.UnsafePointer<Swift.Int8>)
  @objc deinit
  override func getValue(_ value: Swift.UnsafeMutableRawPointer)
  override var objCType: Swift.UnsafePointer<Swift.Int8> {
    override get {}
  }
  override var classForCoder: Swift.AnyClass {
    override get {}
  }
  override var description: Swift.String {
    override get {}
  }
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  var _size: Swift.Int {
    get {}
  }
  var value: Swift.UnsafeMutableRawPointer {
    get {}
  }
  func _isEqualToValue(_ other: Foundation.NSConcreteValue) -> Swift.Bool
  override func isEqual(_ value: Any?) -> Swift.Bool
  override var hash: Swift.Int {
    override get {}
  }
  init()
}
struct RunLoopMode : RawRepresentable, Equatable, Hashable, Comparable {
  var rawValue: <null>
  init(_ rawValue: Swift.String)
  init(rawValue: Swift.String)
  var hashValue: Swift.Int {
    get {}
  }
  typealias RawValue = Swift.String
}
extension RunLoopMode {
  static var defaultRunLoopMode: Foundation.RunLoopMode
  static var commonModes: Foundation.RunLoopMode
}
func NSPointFromString(_ aString: Swift.String) -> Foundation.NSPoint
var NSFileWriteNoPermissionError: Swift.Int {
  get {}
}
func __NSTimeZoneAutoupdating() -> Foundation.NSTimeZone
class NSCountedSet : Foundation.NSMutableSet {
  var _table: <null>
  required init(capacity numItems: Swift.Int)
  convenience init()
  convenience init(array: [Any])
  convenience init(set: Swift.Set<Swift.AnyHashable>)
  required convenience init?(coder: Foundation.NSCoder)
  override func copy(with zone: Foundation.NSZone? = default) -> Any
  override func mutableCopy(with zone: Foundation.NSZone? = default) -> Any
  func count(for object: Any) -> Swift.Int
  override func add(_ object: Any)
  override func remove(_ object: Any)
  override func removeAllObjects()
  @objc deinit
  init(objects: Swift.UnsafePointer<AnyObject>!, count cnt: Swift.Int)
}
class _NSRegularExpressionMatcher {
  var regex: <null>
  var block: <null>
  init(regex: Foundation.NSRegularExpression, block: @escaping (Foundation.TextCheckingResult?, Foundation.NSMatchingFlags, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  @objc deinit
}
func _CFSwiftDictionaryGetValuesAndKeys(_ dictionary: AnyObject, valuebuf: Swift.UnsafeMutablePointer<Swift.Unmanaged<AnyObject>?>?, keybuf: Swift.UnsafeMutablePointer<Swift.Unmanaged<AnyObject>?>?)
var NSXPCConnectionReplyInvalid: Swift.Int {
  get {}
}
func _compiler_crash_fix(_ key: CoreFoundation._CFThreadSpecificKey, _ value: AnyObject?)
class XMLDTDNode : Foundation.XMLNode {
  init?(xmlString string: Swift.String)
  init(kind: Foundation.XMLNode.Kind, options: Foundation.XMLNode.Options = default)
  var dtdKind: Foundation.XMLDTDNode.DTDKind {
    get {}
  }
  var isExternal: Swift.Bool {
    get {}
  }
  var publicID: Swift.String? {
    get {}
    set(newValue) {}
  }
  var systemID: Swift.String? {
    get {}
    set(newValue) {}
  }
  var notationName: Swift.String? {
    get {}
    set(newValue) {}
  }
  override class func _objectNodeForNode(_ node: CoreFoundation._CFXMLNodePtr) -> Foundation.XMLDTDNode
  init(ptr: CoreFoundation._CFXMLNodePtr)
  @objc deinit
}
extension XMLDTDNode {
  enum DTDKind : Swift.UInt {
    case general
    case parsed
    case unparsed
    case parameter
    case predefined
    case cdataAttribute
    case idAttribute
    case idRefAttribute
    case idRefsAttribute
    case entityAttribute
    case entitiesAttribute
    case nmTokenAttribute
    case nmTokensAttribute
    case enumerationAttribute
    case notationAttribute
    case undefinedDeclaration
    case emptyDeclaration
    case anyDeclaration
    case mixedDeclaration
    case elementDeclaration
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
func nan(_ tag: Swift.String) -> Foundation.CGFloat
class NSNotificationReceiver : Foundation.NSObject {
  weak var object: <null>
  var name: <null>
  var block: <null>
  var sender: <null>
  @objc deinit
  init()
}
class NSCacheKey : Foundation.NSObject {
  var value: <null>
  init(_ value: AnyObject)
  override var hashValue: Swift.Int {
    override get {}
  }
  override func isEqual(_ object: Any?) -> Swift.Bool
  @objc deinit
  init()
}
func _CFSwiftArrayGetValueAtIndex(_ array: AnyObject, _ index: CoreFoundation.CFIndex) -> Swift.Unmanaged<AnyObject>
var NSURLErrorClientCertificateRequired: Swift.Int {
  get {}
}
struct StreamNetworkServiceTypeValue : RawRepresentable, Equatable, Hashable, Comparable {
  let rawValue: <null>
  init(rawValue: Swift.String)
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.StreamNetworkServiceTypeValue, rhs: Foundation.StreamNetworkServiceTypeValue) -> Swift.Bool
  static func <(lhs: Foundation.StreamNetworkServiceTypeValue, rhs: Foundation.StreamNetworkServiceTypeValue) -> Swift.Bool
  typealias RawValue = Swift.String
}
extension StreamNetworkServiceTypeValue {
  static var voIP: Foundation.StreamNetworkServiceTypeValue
  static var video: Foundation.StreamNetworkServiceTypeValue
  static var background: Foundation.StreamNetworkServiceTypeValue
  static var voice: Foundation.StreamNetworkServiceTypeValue
  static var callSignaling: Foundation.StreamNetworkServiceTypeValue
}
func _CFSwiftMutableSetRemoveCharactersInString(_ characterSet: CoreFoundation.CFTypeRef, _ string: CoreFoundation.CFString)
let _SwiftFoundationModuleName: Swift.String
func cosh(_ x: Foundation.CGFloat) -> Foundation.CGFloat
struct ValueWithParameters {
  let value: <null>
  let parameters: <null>
  struct Parameter {
    let attribute: <null>
    let value: <null>
    init(attribute: Swift.String, value: Swift.String?)
  }
  init(value: Swift.String, parameters: [Foundation.ValueWithParameters.Parameter])
}
class URLSessionUploadTask : Foundation.URLSessionDataTask {
  @objc deinit
  init()
  init(session: Foundation.URLSession, request: Foundation.URLRequest, taskIdentifier: Swift.Int, body: Foundation.URLSessionTask._Body)
}
protocol _BitShiftable {
  static func >>(lhs: Self, rhs: Self) -> Self
  static func <<(lhs: Self, rhs: Self) -> Self
}
func _CFSwiftDictionaryAddValue(_ dictionary: AnyObject, key: AnyObject, value: AnyObject)
var NSFileReadUnknownStringEncodingError: Swift.Int {
  get {}
}
protocol _EasyHandleDelegate : class {
  func didReceive(data: Foundation.Data) -> Foundation._EasyHandle._Action
  func didReceive(headerData data: Foundation.Data) -> Foundation._EasyHandle._Action
  func fill(writeBuffer buffer: Swift.UnsafeMutableBufferPointer<Swift.Int8>) -> Foundation._EasyHandle._WriteBufferResult
  func transferCompleted(withErrorCode errorCode: Swift.Int?)
  func seekInputStream(to position: Swift.UInt64) throws
  func updateProgressMeter(with propgress: Foundation._EasyHandle._Progress)
}
class HTTPCookie : Foundation.NSObject {
  final let _comment: <null>
  final let _commentURL: <null>
  final let _domain: <null>
  final let _expiresDate: <null>
  final let _HTTPOnly: <null>
  final let _secure: <null>
  final let _sessionOnly: <null>
  final let _name: <null>
  final let _path: <null>
  final let _portList: <null>
  final let _value: <null>
  final let _version: <null>
  var _properties: <null>
  static var _attributes: <null>
  init?(properties: [Foundation.HTTPCookiePropertyKey : Any])
  class func requestHeaderFields(with cookies: [Foundation.HTTPCookie]) -> [Swift.String : Swift.String]
  class func cookies(withResponseHeaderFields headerFields: [Swift.String : Swift.String], for URL: Foundation.URL) -> [Foundation.HTTPCookie]
  class func createHttpCookie(url: Foundation.URL, pairs: Swift.ArraySlice<Swift.String>) -> Foundation.HTTPCookie?
  class func removeCommaFromDate(_ value: Swift.String) -> Swift.String
  class func isCookieAttribute(_ string: Swift.String) -> Swift.Bool
  class func canonicalize(_ name: Swift.String) -> Foundation.HTTPCookiePropertyKey
  class func createNameValuePair(pair: Swift.String) -> [Swift.String]
  var properties: [Foundation.HTTPCookiePropertyKey : Any]? {
    get {}
  }
  var version: Swift.Int {
    get {}
  }
  var name: Swift.String {
    get {}
  }
  var value: Swift.String {
    get {}
  }
  var expiresDate: Foundation.Date? {
    get {}
  }
  var isSessionOnly: Swift.Bool {
    get {}
  }
  var domain: Swift.String {
    get {}
  }
  var path: Swift.String {
    get {}
  }
  var isSecure: Swift.Bool {
    get {}
  }
  var isHTTPOnly: Swift.Bool {
    get {}
  }
  var comment: Swift.String? {
    get {}
  }
  var commentURL: Foundation.URL? {
    get {}
  }
  var portList: [Foundation.NSNumber]? {
    get {}
  }
  override var description: Swift.String {
    override get {}
  }
  @objc deinit
  init()
}
extension HTTPCookie {
  enum AcceptPolicy : Swift.UInt {
    case always
    case never
    case onlyFromMainDocumentDomain
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
struct FileAttributeKey : RawRepresentable, Equatable, Hashable, Comparable {
  let rawValue: <null>
  init(_ rawValue: Swift.String)
  init(rawValue: Swift.String)
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.FileAttributeKey, rhs: Foundation.FileAttributeKey) -> Swift.Bool
  static func <(lhs: Foundation.FileAttributeKey, rhs: Foundation.FileAttributeKey) -> Swift.Bool
  static var type: Foundation.FileAttributeKey
  static var size: Foundation.FileAttributeKey
  static var modificationDate: Foundation.FileAttributeKey
  static var referenceCount: Foundation.FileAttributeKey
  static var deviceIdentifier: Foundation.FileAttributeKey
  static var ownerAccountName: Foundation.FileAttributeKey
  static var groupOwnerAccountName: Foundation.FileAttributeKey
  static var posixPermissions: Foundation.FileAttributeKey
  static var systemNumber: Foundation.FileAttributeKey
  static var systemFileNumber: Foundation.FileAttributeKey
  static var extensionHidden: Foundation.FileAttributeKey
  static var hfsCreatorCode: Foundation.FileAttributeKey
  static var hfsTypeCode: Foundation.FileAttributeKey
  static var immutable: Foundation.FileAttributeKey
  static var appendOnly: Foundation.FileAttributeKey
  static var creationDate: Foundation.FileAttributeKey
  static var ownerAccountID: Foundation.FileAttributeKey
  static var groupOwnerAccountID: Foundation.FileAttributeKey
  static var busy: Foundation.FileAttributeKey
  static var systemSize: Foundation.FileAttributeKey
  static var systemFreeSize: Foundation.FileAttributeKey
  static var systemNodes: Foundation.FileAttributeKey
  static var systemFreeNodes: Foundation.FileAttributeKey
  typealias RawValue = Swift.String
}
func NSLocationInRange(_ loc: Swift.Int, _ range: Foundation.NSRange) -> Swift.Bool
struct AffineTransform : ReferenceConvertible, Hashable, CustomStringConvertible {
  typealias ReferenceType = Foundation.NSAffineTransform
  var m11: <null>
  var m12: <null>
  var m21: <null>
  var m22: <null>
  var tX: <null>
  var tY: <null>
  init()
  init(m11: Foundation.CGFloat, m12: Foundation.CGFloat, m21: Foundation.CGFloat, m22: Foundation.CGFloat, tX: Foundation.CGFloat, tY: Foundation.CGFloat)
  init(reference: Foundation.NSAffineTransform)
  var reference: Foundation.NSAffineTransform {
    get {}
  }
  init(translationByX x: Foundation.CGFloat, byY y: Foundation.CGFloat)
  init(scaleByX x: Foundation.CGFloat, byY y: Foundation.CGFloat)
  init(scale factor: Foundation.CGFloat)
  init(rotationByRadians angle: Foundation.CGFloat)
  init(rotationByDegrees angle: Foundation.CGFloat)
  static var identity: Foundation.AffineTransform
  mutating func translate(x: Foundation.CGFloat, y: Foundation.CGFloat)
  mutating func rotate(byDegrees angle: Foundation.CGFloat)
  mutating func rotate(byRadians angle: Foundation.CGFloat)
  func concatenated(_ other: Foundation.AffineTransform) -> Foundation.AffineTransform
  mutating func scale(_ scale: Foundation.CGFloat)
  mutating func scale(x: Foundation.CGFloat, y: Foundation.CGFloat)
  mutating func invert()
  func inverted() -> Foundation.AffineTransform?
  mutating func append(_ transform: Foundation.AffineTransform)
  mutating func prepend(_ transform: Foundation.AffineTransform)
  func transform(_ point: Foundation.NSPoint) -> Foundation.NSPoint
  func transform(_ size: Foundation.NSSize) -> Foundation.NSSize
  var hashValue: Swift.Int {
    get {}
  }
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  static func ==(lhs: Foundation.AffineTransform, rhs: Foundation.AffineTransform) -> Swift.Bool
}
extension AffineTransform : _ObjectTypeBridgeable {
  static func _isBridgedToObjectiveC() -> Swift.Bool
  static func _getObjectiveCType() -> Any.Type
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSAffineTransform
  static func _forceBridgeFromObjectiveC(_ x: Foundation.NSAffineTransform, result: inout Foundation.AffineTransform?)
  static func _conditionallyBridgeFromObjectiveC(_ x: Foundation.NSAffineTransform, result: inout Foundation.AffineTransform?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ x: Foundation.NSAffineTransform?) -> Foundation.AffineTransform
  typealias _ObjectType = Foundation.NSAffineTransform
}
protocol URLSessionTaskDelegate : URLSessionDelegate {
  func urlSession(_ session: Foundation.URLSession, task: Foundation.URLSessionTask, willPerformHTTPRedirection response: Foundation.HTTPURLResponse, newRequest request: Foundation.URLRequest, completionHandler: @escaping (Foundation.URLRequest?) -> Swift.Void)
  func urlSession(_ session: Foundation.URLSession, task: Foundation.URLSessionTask, didReceive challenge: Foundation.URLAuthenticationChallenge, completionHandler: @escaping (Foundation.URLSession.AuthChallengeDisposition, Foundation.URLCredential?) -> Swift.Void)
  func urlSession(_ session: Foundation.URLSession, task: Foundation.URLSessionTask, needNewBodyStream completionHandler: @escaping (Foundation.InputStream?) -> Swift.Void)
  func urlSession(_ session: Foundation.URLSession, task: Foundation.URLSessionTask, didSendBodyData bytesSent: Swift.Int64, totalBytesSent: Swift.Int64, totalBytesExpectedToSend: Swift.Int64)
  func urlSession(_ session: Foundation.URLSession, task: Foundation.URLSessionTask, didCompleteWithError error: Error?)
}
extension URLSessionTaskDelegate {
  func urlSession(_ session: Foundation.URLSession, task: Foundation.URLSessionTask, willPerformHTTPRedirection response: Foundation.HTTPURLResponse, newRequest request: Foundation.URLRequest, completionHandler: @escaping (Foundation.URLRequest?) -> Swift.Void)
  func urlSession(_ session: Foundation.URLSession, task: Foundation.URLSessionTask, didReceive challenge: Foundation.URLAuthenticationChallenge, completionHandler: @escaping (Foundation.URLSession.AuthChallengeDisposition, Foundation.URLCredential?) -> Swift.Void)
  func urlSession(_ session: Foundation.URLSession, task: Foundation.URLSessionTask, needNewBodyStream completionHandler: @escaping (Foundation.InputStream?) -> Swift.Void)
  func urlSession(_ session: Foundation.URLSession, task: Foundation.URLSessionTask, didSendBodyData bytesSent: Swift.Int64, totalBytesSent: Swift.Int64, totalBytesExpectedToSend: Swift.Int64)
  func urlSession(_ session: Foundation.URLSession, task: Foundation.URLSessionTask, didCompleteWithError error: Error?)
}
class UnitAngle : Foundation.Dimension {
  struct Symbol {
    static var degrees: Swift.String
    static var arcMinutes: Swift.String
    static var arcSeconds: Swift.String
    static var radians: Swift.String
    static var gradians: Swift.String
    static var revolutions: Swift.String
    init()
  }
  struct Coefficient {
    static var degrees: Swift.Double
    static var arcMinutes: Swift.Double
    static var arcSeconds: Swift.Double
    static var radians: Swift.Double
    static var gradians: Swift.Double
    static var revolutions: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var degrees: Foundation.UnitAngle {
    get {}
  }
  class var arcMinutes: Foundation.UnitAngle {
    get {}
  }
  class var arcSeconds: Foundation.UnitAngle {
    get {}
  }
  class var radians: Foundation.UnitAngle {
    get {}
  }
  class var gradians: Foundation.UnitAngle {
    get {}
  }
  class var revolutions: Foundation.UnitAngle {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitAngle
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
enum CGRectEdge : Swift.UInt32 {
  case minXEdge
  case minYEdge
  case maxXEdge
  case maxYEdge
  typealias RawValue = Swift.UInt32
  var hashValue: Swift.Int {
    get {}
  }
  init?(rawValue: Swift.UInt32)
  var rawValue: Swift.UInt32 {
    get {}
  }
}
func _CFSwiftStringIsUnicode(_ str: AnyObject) -> Swift.Bool
func nextafter(_ lhs: Foundation.CGFloat, _ rhs: Foundation.CGFloat) -> Foundation.CGFloat
func _NSXMLParserHasExternalSubset(_ ctx: CoreFoundation._CFXMLInterface) -> Swift.Int32
class UnitConverter : Foundation.NSObject {
  func baseUnitValue(fromValue value: Swift.Double) -> Swift.Double
  func value(fromBaseUnitValue baseUnitValue: Swift.Double) -> Swift.Double
  @objc deinit
  init()
}
class EnergyFormatter : Foundation.Formatter {
  required init?(coder: Foundation.NSCoder)
  var numberFormatter: <null>
  var unitStyle: <null>
  var isForFoodEnergyUse: <null>
  func string(fromValue value: Swift.Double, unit: Foundation.EnergyFormatter.Unit) -> Swift.String
  func string(fromJoules numberInJoules: Swift.Double) -> Swift.String
  func unitString(fromValue value: Swift.Double, unit: Foundation.EnergyFormatter.Unit) -> Swift.String
  func unitString(fromJoules numberInJoules: Swift.Double, usedUnit unitp: Swift.UnsafeMutablePointer<Foundation.EnergyFormatter.Unit>?) -> Swift.String
  override func objectValue(_ string: Swift.String) throws -> Any?
  @objc deinit
  init()
}
extension EnergyFormatter {
  enum Unit : Swift.Int {
    case joule
    case kilojoule
    case calorie
    case kilocalorie
    typealias RawValue = Swift.Int
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.Int)
    var rawValue: Swift.Int {
      get {}
    }
  }
}
var NSURLErrorInternationalRoamingOff: Swift.Int {
  get {}
}
var NSPropertyListReadUnknownVersionError: Swift.Int {
  get {}
}
let NSFilePathErrorKey: Swift.String
func log10(_ x: Foundation.CGFloat) -> Foundation.CGFloat
@available(*, unavailable, renamed: "String.Encoding.windowsCP1250") var NSWindowsCP1250StringEncoding: Swift.String.Encoding {
  get {}
}
let NSPersonNameComponentGivenName: Swift.String
let NSURLErrorKey: Swift.String
var NSURLErrorServerCertificateHasUnknownRoot: Swift.Int {
  get {}
}
func _structuredErrorFunc(_ interface: CoreFoundation._CFXMLInterface, error: CoreFoundation._CFXMLInterfaceError)
struct JSONReader {
  static var whitespaceASCII: <null>
  struct Structure {
    static var BeginArray: <null>
    static var EndArray: <null>
    static var BeginObject: <null>
    static var EndObject: <null>
    static var NameSeparator: <null>
    static var ValueSeparator: <null>
    static var QuotationMark: <null>
    static var Escape: <null>
    init()
  }
  typealias Index = Swift.Int
  typealias IndexDistance = Swift.Int
  struct UnicodeSource {
    let buffer: <null>
    let encoding: <null>
    let step: <null>
    init(buffer: Swift.UnsafeBufferPointer<Swift.UInt8>, encoding: Swift.String.Encoding)
    func takeASCII(_ input: Foundation.JSONReader.Index) -> (Swift.UInt8, Foundation.JSONReader.Index)?
    func takeString(_ begin: Foundation.JSONReader.Index, end: Foundation.JSONReader.Index) throws -> Swift.String
    func hasNext(_ input: Foundation.JSONReader.Index) -> Swift.Bool
    func distanceFromStart(_ index: Foundation.JSONReader.Index) -> Foundation.JSONReader.IndexDistance
  }
  let source: <null>
  func consumeWhitespace(_ input: Foundation.JSONReader.Index) -> Foundation.JSONReader.Index?
  func consumeStructure(_ ascii: Swift.UInt8, input: Foundation.JSONReader.Index) throws -> Foundation.JSONReader.Index?
  func consumeASCII(_ ascii: Swift.UInt8) -> (Foundation.JSONReader.Index) throws -> Foundation.JSONReader.Index?
  func consumeASCIISequence(_ sequence: Swift.String, input: Foundation.JSONReader.Index) throws -> Foundation.JSONReader.Index?
  func takeMatching(_ match: @escaping (Swift.UInt8) -> Swift.Bool) -> ([Swift.Character], Foundation.JSONReader.Index) -> ([Swift.Character], Foundation.JSONReader.Index)?
  func parseString(_ input: Foundation.JSONReader.Index) throws -> (Swift.String, Foundation.JSONReader.Index)?
  func parseEscapeSequence(_ input: Foundation.JSONReader.Index) throws -> (Swift.String, Foundation.JSONReader.Index)?
  func parseUnicodeSequence(_ input: Foundation.JSONReader.Index) throws -> (Swift.String, Foundation.JSONReader.Index)?
  func isHexChr(_ byte: Swift.UInt8) -> Swift.Bool
  func parseCodeUnit(_ input: Foundation.JSONReader.Index) -> (Swift.UTF16.CodeUnit, Foundation.JSONReader.Index)?
  static var numberCodePoints: <null>
  func parseNumber(_ input: Foundation.JSONReader.Index) throws -> (Any, Foundation.JSONReader.Index)?
  func parseValue(_ input: Foundation.JSONReader.Index) throws -> (Any, Foundation.JSONReader.Index)?
  func parseObject(_ input: Foundation.JSONReader.Index) throws -> ([Swift.String : Any], Foundation.JSONReader.Index)?
  func parseObjectMember(_ input: Foundation.JSONReader.Index) throws -> (Swift.String, Any, Foundation.JSONReader.Index)?
  func parseArray(_ input: Foundation.JSONReader.Index) throws -> ([Any], Foundation.JSONReader.Index)?
  init(source: Foundation.JSONReader.UnicodeSource)
}
let NSFileHandleNotificationFileHandleItem: Swift.String
func _CFSwiftCharacterSetInverted(_ cset: CoreFoundation.CFTypeRef) -> Swift.Unmanaged<CoreFoundation.CFCharacterSet>
@available(*, unavailable, message: "use the sign property.") func signbit(_ value: Foundation.CGFloat) -> Swift.Int
func NSDecimalMultiply(_ result: Swift.UnsafeMutablePointer<Foundation.Decimal>, _ leftOperand: Swift.UnsafePointer<Foundation.Decimal>, _ rightOperand: Swift.UnsafePointer<Foundation.Decimal>, _ roundingMode: Foundation.NSDecimalNumber.RoundingMode) -> Foundation.NSDecimalNumber.CalculationError
func processIsEqual(_ a: Swift.UnsafeRawPointer?, _ b: Swift.UnsafeRawPointer?) -> Foundation._DarwinCompatibleBoolean
@available(*, unavailable, renamed: "String.Encoding.utf16") var NSUTF16StringEncoding: Swift.String.Encoding {
  get {}
}
struct NSMatchingOptions : OptionSet {
  let rawValue: <null>
  init(rawValue: Swift.UInt)
  static var reportProgress: Foundation.NSMatchingOptions
  static var reportCompletion: Foundation.NSMatchingOptions
  static var anchored: Foundation.NSMatchingOptions
  static var withTransparentBounds: Foundation.NSMatchingOptions
  static var withoutAnchoringBounds: Foundation.NSMatchingOptions
  static var OmitResult: Foundation.NSMatchingOptions
  typealias Element = Foundation.NSMatchingOptions
  typealias RawValue = Swift.UInt
}
var NSExecutableLinkError: Swift.Int {
  get {}
}
func __NSIndexSetRangeAtIndex(_ indexSet: Foundation.NSIndexSet, _ index: Swift.UInt, _ location: Swift.UnsafeMutablePointer<Swift.UInt>, _ length: Swift.UnsafeMutablePointer<Swift.UInt>)
func NSMinX(_ aRect: Foundation.NSRect) -> Foundation.CGFloat
struct UnsafeMutablePointer<Pointee> : Strideable, Hashable, _Pointer {
  typealias Distance = Swift.Int
  let _rawValue: <null>
  init(_ _rawValue: Builtin.RawPointer)
  init(_ from: Swift.OpaquePointer)
  init?(_ from: Swift.OpaquePointer?)
  init?(bitPattern: Swift.Int)
  init?(bitPattern: Swift.UInt)
  init(_ other: Swift.UnsafeMutablePointer<Pointee>)
  init?(_ other: Swift.UnsafeMutablePointer<Pointee>?)
  init(mutating other: Swift.UnsafePointer<Pointee>)
  init?(mutating other: Swift.UnsafePointer<Pointee>?)
  static func allocate(capacity count: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  func deallocate(capacity: Swift.Int)
  var pointee: Pointee
  var pointee: Pointee {
    unsafeAddress {}
    unsafeMutableAddress {}
  }
  func initialize(to newValue: Pointee, count: Swift.Int = default)
  func move() -> Pointee
  func assign(from source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  func moveInitialize(from source: Swift.UnsafeMutablePointer<Pointee>, count: Swift.Int)
  func initialize(from source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, deprecated, message: "it will be removed in Swift 4.0.  Please use 'UnsafeMutableBufferPointer.initialize(from:)' instead") func initialize<C>(from source: C) where C : Collection, C.Iterator.Element == Pointee
  func moveAssign(from source: Swift.UnsafeMutablePointer<Pointee>, count: Swift.Int)
  @discardableResult func deinitialize(count: Swift.Int = default) -> Swift.UnsafeMutableRawPointer
  func withMemoryRebound<T, Result>(to type: T.Type, capacity count: Swift.Int, _ body: (Swift.UnsafeMutablePointer<T>) throws -> Result) rethrows -> Result
  subscript(i: Swift.Int) -> Pointee {
    unsafeAddress {}
    unsafeMutableAddress {}
  }
  var hashValue: Swift.Int {
    get {}
  }
  func successor() -> Swift.UnsafeMutablePointer<Pointee>
  func predecessor() -> Swift.UnsafeMutablePointer<Pointee>
  func distance(to end: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Int
  func advanced(by n: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  typealias Stride = Swift.Int
  typealias _DisabledRangeIndex = Swift._DisabledRangeIndex_
}
extension UnsafeMutablePointer {
  static func ==(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Bool
  static func <(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Bool
  static func +(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  static func +(lhs: Swift.Int, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.UnsafeMutablePointer<Pointee>
  static func -(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  static func -(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Int
  static func +=(lhs: inout Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int)
  static func -=(lhs: inout Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int)
}
extension UnsafeMutablePointer : CustomDebugStringConvertible {
  var debugDescription: Swift.String {
    get {}
  }
}
extension UnsafeMutablePointer : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension UnsafeMutablePointer : CustomPlaygroundQuickLookable {
  var summary: Swift.String {
    get {}
  }
  var customPlaygroundQuickLook: Swift.PlaygroundQuickLook {
    get {}
  }
}
extension UnsafeMutablePointer {
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init<U>(_ from: Swift.UnsafeMutablePointer<U>)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init?<U>(_ from: Swift.UnsafeMutablePointer<U>?)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init<U>(_ from: Swift.UnsafePointer<U>)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init?<U>(_ from: Swift.UnsafePointer<U>?)
  @available(*, unavailable, renamed: "init(mutating:)") init(_ from: Swift.UnsafePointer<Pointee>)
  @available(*, unavailable, renamed: "init(mutating:)") init?(_ from: Swift.UnsafePointer<Pointee>?)
  @available(*, unavailable, renamed: "Pointee") typealias Memory = Pointee
  @available(*, unavailable, message: "use 'nil' literal") init()
  @available(*, unavailable, renamed: "allocate(capacity:)") static func alloc(_ num: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  @available(*, unavailable, message: "use 'UnsafeMutablePointer.allocate(capacity:)'") init(allocatingCapacity: Swift.Int)
  @available(*, unavailable, renamed: "deallocate(capacity:)") func dealloc(_ num: Swift.Int)
  @available(*, unavailable, renamed: "deallocate(capacity:)") func deallocateCapacity(_ num: Swift.Int)
  @available(*, unavailable, renamed: "pointee") var memory: Pointee {
    get {}
    set(newValue) {}
  }
  @available(*, unavailable, renamed: "initialize(to:)") func initialize(_ newvalue: Pointee)
  @available(*, unavailable, renamed: "initialize(to:count:)") func initialize(with newvalue: Pointee, count: Swift.Int = default)
  @available(*, unavailable, renamed: "deinitialize(count:)") func destroy()
  @available(*, unavailable, renamed: "deinitialize(count:)") func destroy(_ count: Swift.Int)
  @available(*, unavailable, renamed: "initialize(from:)") func initializeFrom<C>(_ source: C) where C : Collection
  @available(*, unavailable, renamed: "initialize(from:count:)") func initializeFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "assign(from:count:)") func assignFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "assign(from:count:)") func assignBackwardFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveInitialize(from:count:)") func moveInitializeFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveInitialize(from:count:)") func moveInitializeBackwardFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveAssign(from:count:)") func moveAssignFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
}
extension UnsafeMutablePointer : CVarArg {
  var _cVarArgEncoding: [Swift.Int] {
    get {}
  }
}
func NSMinY(_ aRect: Foundation.NSRect) -> Foundation.CGFloat
class _ProgressTSD {
  var currentProgress: <null>
  var nextTSD: <null>
  var pendingUnitCount: <null>
  var childAttached: <null>
  init(currentProgress: Foundation.Progress, nextTSD: Foundation._ProgressTSD?, pendingUnitCount: Swift.Int64)
  @objc deinit
}
struct _HTTPCharacters {
  static var CR: <null>
  static var LF: <null>
  static var Space: Swift.UnicodeScalar?
  static var HorizontalTab: Swift.UnicodeScalar?
  static var Colon: Swift.UnicodeScalar?
  static var Separators: Foundation.NSCharacterSet
  init()
}
class _NSCFString : Foundation.NSMutableString {
  required init(characters: Swift.UnsafePointer<Foundation.unichar>, length: Swift.Int)
  required init?(coder aDecoder: Foundation.NSCoder)
  required init(extendedGraphemeClusterLiteral value: Swift.StaticString)
  required init(stringLiteral value: Swift.StaticString)
  required init(capacity: Swift.Int)
  required init(string aString: Swift.String)
  @objc deinit
  override var length: Swift.Int {
    override get {}
  }
  override func character(at index: Swift.Int) -> Foundation.unichar
  override func replaceCharacters(in range: Foundation.NSRange, with aString: Swift.String)
  override var classForCoder: Swift.AnyClass {
    override get {}
  }
}
func _CFSwiftArrayReplaceValues(_ array: AnyObject, _ range: CoreFoundation.CFRange, _ newValues: Swift.UnsafeMutablePointer<Swift.Unmanaged<AnyObject>>, _ newCount: CoreFoundation.CFIndex)
func NSDecimalNormalize(_ a: Swift.UnsafeMutablePointer<Foundation.Decimal>, _ b: Swift.UnsafeMutablePointer<Foundation.Decimal>, _ roundingMode: Foundation.NSDecimalNumber.RoundingMode) -> Foundation.NSDecimalNumber.CalculationError
struct ContentTypeComponents {
  let mimeType: <null>
  let textEncoding: <null>
  init(mimeType: Swift.String, textEncoding: Swift.String?)
}
extension ContentTypeComponents {
  init?(headerFields: [Swift.String : Swift.String]?)
}
func NSHomeDirectoryForUser(_ user: Swift.String?) -> Swift.String?
var NSURLErrorTimedOut: Swift.Int {
  get {}
}
class NSSet : Foundation.NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSCoding {
  final let _cfinfo: Foundation._CFInfo
  var _storage: <null>
  var count: Swift.Int {
    get {}
  }
  func member(_ object: Any) -> Any?
  func objectEnumerator() -> Foundation.NSEnumerator
  convenience init()
  init(objects: Swift.UnsafePointer<AnyObject>!, count cnt: Swift.Int)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  override func mutableCopy() -> Any
  func mutableCopy(with zone: Foundation.NSZone? = default) -> Any
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  func description(withLocale locale: Foundation.Locale?) -> Swift.String
  override var _cfTypeID: CoreFoundation.CFTypeID {
    override get {}
  }
  override func isEqual(_ value: Any?) -> Swift.Bool
  override var hash: Swift.Int {
    override get {}
  }
  convenience init(array: [Any])
  convenience init(set: Swift.Set<Swift.AnyHashable>)
  convenience init(set: Swift.Set<Swift.AnyHashable>, copyItems flag: Swift.Bool)
  @objc deinit
}
extension NSSet {
  func filtered(using predicate: Foundation.NSPredicate) -> Swift.Set<Swift.AnyHashable>
}
extension NSSet {
  convenience init(object: Any)
}
extension NSSet {
  var allObjects: [Any] {
    get {}
  }
  func anyObject() -> Any?
  func contains(_ anObject: Any) -> Swift.Bool
  func intersects(_ otherSet: Swift.Set<Swift.AnyHashable>) -> Swift.Bool
  func isEqual(to otherSet: Swift.Set<Swift.AnyHashable>) -> Swift.Bool
  func isSubset(of otherSet: Swift.Set<Swift.AnyHashable>) -> Swift.Bool
  func adding(_ anObject: Any) -> Swift.Set<Swift.AnyHashable>
  func addingObjects(from other: Swift.Set<Swift.AnyHashable>) -> Swift.Set<Swift.AnyHashable>
  func addingObjects(from other: [Any]) -> Swift.Set<Swift.AnyHashable>
  func enumerateObjects(_ block: (Any, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func enumerateObjects(options opts: Foundation.NSEnumerationOptions = default, using block: (Any, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func objects(passingTest predicate: (Any, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Set<Swift.AnyHashable>
  func objects(options opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Any, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Set<Swift.AnyHashable>
}
extension NSSet : _CFBridgeable, _SwiftBridgeable {
  var _cfObject: CoreFoundation.CFSet {
    get {}
  }
  var _swiftObject: Swift.Set<Foundation.NSObject> {
    get {}
  }
  typealias CFType = CoreFoundation.CFSet
  typealias SwiftType = Swift.Set<Foundation.NSObject>
}
extension NSSet : Sequence {
  typealias Iterator = Foundation.NSEnumerator.Iterator
  func makeIterator() -> Foundation.NSSet.Iterator
  typealias SubSequence = Swift.AnySequence<Any>
}
extension NSSet : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension NSSet : _StructTypeBridgeable {
  typealias _StructType = Swift.Set<Swift.AnyHashable>
  func _bridgeToSwift() -> Foundation.NSSet._StructType
}
extension NSSet {
  func sortedArrayUsingDescriptors(_ sortDescriptors: [Foundation.SortDescriptor]) -> [AnyObject]
}
var NSFileReadNoPermissionError: Swift.Int {
  get {}
}
protocol VariableLengthNumber {
  var _length: Swift.UInt32 { get set }
  init()
  subscript(index: Swift.UInt32) -> Swift.UInt16 { get set }
  var isZero: Swift.Bool { get }
  mutating func copyMantissa<T>(from other: T) where T : VariableLengthNumber
  mutating func zeroMantissa()
  mutating func trimTrailingZeros()
  var maxMantissaLength: Swift.UInt32 { get }
}
final class _NSCFSet : Foundation.NSMutableSet {
  @objc deinit
  required init()
  required init?(coder aDecoder: Foundation.NSCoder)
  required init(capacity numItems: Swift.Int)
  override final var classForCoder: Swift.AnyClass {
    override final get {}
  }
  override final var count: Swift.Int {
    override final get {}
  }
  override final func member(_ object: Any) -> Any?
  override final func objectEnumerator() -> Foundation.NSEnumerator
  override final func add(_ object: Any)
  override final func remove(_ object: Any)
  init(objects: Swift.UnsafePointer<AnyObject>!, count cnt: Swift.Int)
}
func decimalSep(_ locale: Foundation.Locale?) -> Swift.String
func decimalSep(_ locale: Foundation.Locale?) -> Swift.String
struct StreamSOCKSProxyVersion : RawRepresentable, Equatable, Hashable, Comparable {
  let rawValue: <null>
  init(rawValue: Swift.String)
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.StreamSOCKSProxyVersion, rhs: Foundation.StreamSOCKSProxyVersion) -> Swift.Bool
  static func <(lhs: Foundation.StreamSOCKSProxyVersion, rhs: Foundation.StreamSOCKSProxyVersion) -> Swift.Bool
  typealias RawValue = Swift.String
}
extension StreamSOCKSProxyVersion {
  static var version4: Foundation.StreamSOCKSProxyVersion
  static var version5: Foundation.StreamSOCKSProxyVersion
}
var NSFileReadNoSuchFileError: Swift.Int {
  get {}
}
struct URLQueryItem : ReferenceConvertible, Hashable, Equatable {
  typealias ReferenceType = Foundation.NSURLQueryItem
  var _queryItem: <null>
  init(name: Swift.String, value: Swift.String?)
  init(reference: Foundation.NSURLQueryItem)
  var reference: Foundation.NSURLQueryItem {
    get {}
  }
  var name: Swift.String {
    get {}
    set(newValue) {}
  }
  var value: Swift.String? {
    get {}
    set(newValue) {}
  }
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.URLQueryItem, rhs: Foundation.URLQueryItem) -> Swift.Bool
}
extension URLQueryItem : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension URLQueryItem : _NSBridgeable {
  typealias NSType = Foundation.NSURLQueryItem
  var _nsObject: Foundation.URLQueryItem.NSType {
    get {}
  }
}
extension URLQueryItem : _ObjectTypeBridgeable {
  typealias _ObjectType = Foundation.NSURLQueryItem
  static func _getObjectiveCType() -> Any.Type
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSURLQueryItem
  static func _forceBridgeFromObjectiveC(_ x: Foundation.NSURLQueryItem, result: inout Foundation.URLQueryItem?)
  static func _conditionallyBridgeFromObjectiveC(_ x: Foundation.NSURLQueryItem, result: inout Foundation.URLQueryItem?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSURLQueryItem?) -> Foundation.URLQueryItem
}
var managerThreadRunLoop: Foundation.RunLoop?
func log1p(_ x: Foundation.CGFloat) -> Foundation.CGFloat
struct DateComponents : ReferenceConvertible, Hashable, Equatable, _MutableBoxing {
  typealias ReferenceType = Foundation.NSDateComponents
  var _handle: <null>
  init(calendar: Foundation.Calendar? = default, timeZone: Foundation.TimeZone? = default, era: Swift.Int? = default, year: Swift.Int? = default, month: Swift.Int? = default, day: Swift.Int? = default, hour: Swift.Int? = default, minute: Swift.Int? = default, second: Swift.Int? = default, nanosecond: Swift.Int? = default, weekday: Swift.Int? = default, weekdayOrdinal: Swift.Int? = default, quarter: Swift.Int? = default, weekOfMonth: Swift.Int? = default, weekOfYear: Swift.Int? = default, yearForWeekOfYear: Swift.Int? = default)
  func _getter(_ x: Swift.Int) -> Swift.Int?
  func _setter(_ x: Swift.Int?) -> Swift.Int
  var calendar: Foundation.Calendar? {
    get {}
    set(newValue) {}
  }
  var timeZone: Foundation.TimeZone? {
    get {}
    set(newValue) {}
  }
  var era: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var year: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var month: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var day: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var hour: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var minute: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var second: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var nanosecond: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var weekday: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var weekdayOrdinal: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var quarter: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var weekOfMonth: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var weekOfYear: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var yearForWeekOfYear: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var isLeapMonth: Swift.Bool? {
    get {}
    set(newValue) {}
  }
  var date: Foundation.Date? {
    get {}
  }
  mutating func setValue(_ value: Swift.Int?, for component: Foundation.Calendar.Component)
  func value(for component: Foundation.Calendar.Component) -> Swift.Int?
  var isValidDate: Swift.Bool {
    get {}
  }
  func isValidDate(in calendar: Foundation.Calendar) -> Swift.Bool
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.DateComponents, rhs: Foundation.DateComponents) -> Swift.Bool
  init(reference: Foundation.NSDateComponents)
}
extension DateComponents : _NSBridgeable {
  typealias NSType = Foundation.NSDateComponents
  var _nsObject: Foundation.DateComponents.NSType {
    get {}
  }
}
extension DateComponents : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension DateComponents : _ObjectTypeBridgeable {
  static func _isBridgedToObjectiveC() -> Swift.Bool
  static func _getObjectiveCType() -> Any.Type
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSDateComponents
  static func _forceBridgeFromObjectiveC(_ dateComponents: Foundation.NSDateComponents, result: inout Foundation.DateComponents?)
  static func _conditionallyBridgeFromObjectiveC(_ dateComponents: Foundation.NSDateComponents, result: inout Foundation.DateComponents?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSDateComponents?) -> Foundation.DateComponents
  typealias _ObjectType = Foundation.NSDateComponents
}
@available(*, unavailable, renamed: "String.Encoding.unicode") var NSUnicodeStringEncoding: Swift.String.Encoding {
  get {}
}
struct Measurement<UnitType> : ReferenceConvertible, Comparable, Equatable, CustomStringConvertible where UnitType : Foundation.Unit {
  typealias ReferenceType = Foundation.NSMeasurement
  let unit: UnitType
  var value: <null>
  init(value: Swift.Double, unit: UnitType)
  var hashValue: Swift.Int {
    get {}
  }
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
}
extension Measurement where UnitType : Foundation.Dimension {
  func converted(to otherUnit: UnitType) -> Foundation.Measurement<UnitType>
  mutating func convert(to otherUnit: UnitType)
}
extension Measurement : _ObjectTypeBridgeable where UnitType : Foundation.Unit {
  static func _isBridgedToObjectiveC() -> Swift.Bool
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSMeasurement
  static func _forceBridgeFromObjectiveC(_ source: Foundation.NSMeasurement, result: inout Foundation.Measurement<UnitType>?)
  static func _conditionallyBridgeFromObjectiveC(_ source: Foundation.NSMeasurement, result: inout Foundation.Measurement<UnitType>?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSMeasurement?) -> Foundation.Measurement<UnitType>
  typealias _ObjectType = Foundation.NSMeasurement
}
func NSInvalidArgument(_ message: Swift.String, method: Swift.String = #function, file: Swift.StaticString = #file, line: Swift.UInt = #line) -> Swift.Never
func _CFSwiftArrayRemoveValueAtIndex(_ array: AnyObject, _ idx: CoreFoundation.CFIndex)
func _NSErrorWithErrno(_ posixErrno: Swift.Int32, reading: Swift.Bool, path: Swift.String? = default, url: Foundation.URL? = default, extraUserInfo: [Swift.String : Any]? = default) -> Foundation.NSError
class UnitSpeed : Foundation.Dimension {
  struct Symbol {
    static var metersPerSecond: Swift.String
    static var kilometersPerHour: Swift.String
    static var milesPerHour: Swift.String
    static var knots: Swift.String
    init()
  }
  struct Coefficient {
    static var metersPerSecond: Swift.Double
    static var kilometersPerHour: Swift.Double
    static var milesPerHour: Swift.Double
    static var knots: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var metersPerSecond: Foundation.UnitSpeed {
    get {}
  }
  class var kilometersPerHour: Foundation.UnitSpeed {
    get {}
  }
  class var milesPerHour: Foundation.UnitSpeed {
    get {}
  }
  class var knots: Foundation.UnitSpeed {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitSpeed
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
let NSURLProtectionSpaceFTPProxy: Swift.String
func hypot(_ lhs: Foundation.CGFloat, _ rhs: Foundation.CGFloat) -> Foundation.CGFloat
let NSURLAuthenticationMethodHTTPDigest: Swift.String
protocol _ObjectBridgeable {
  func _bridgeToAnyObject() -> AnyObject
}
enum NSRectEdge : Swift.UInt {
  case minX
  case minY
  case maxX
  case maxY
  typealias RawValue = Swift.UInt
  var hashValue: Swift.Int {
    get {}
  }
  init?(rawValue: Swift.UInt)
  var rawValue: Swift.UInt {
    get {}
  }
}
extension NSRectEdge {
  init(rectEdge: Foundation.CGRectEdge)
}
class NSDateComponents : Foundation.NSObject, NSCopying, NSSecureCoding {
  var _calendar: <null>
  var _timeZone: <null>
  var _values: [Swift.Int]
  init()
  override var hash: Swift.Int {
    override get {}
  }
  override func isEqual(_ object: Any?) -> Swift.Bool
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  var calendar: Foundation.Calendar? {
    get {}
    set(newValue) {}
  }
  var timeZone: <null>
  var era: Swift.Int {
    get {}
    set(newValue) {}
  }
  var year: Swift.Int {
    get {}
    set(newValue) {}
  }
  var month: Swift.Int {
    get {}
    set(newValue) {}
  }
  var day: Swift.Int {
    get {}
    set(newValue) {}
  }
  var hour: Swift.Int {
    get {}
    set(newValue) {}
  }
  var minute: Swift.Int {
    get {}
    set(newValue) {}
  }
  var second: Swift.Int {
    get {}
    set(newValue) {}
  }
  var weekday: Swift.Int {
    get {}
    set(newValue) {}
  }
  var weekdayOrdinal: Swift.Int {
    get {}
    set(newValue) {}
  }
  var quarter: Swift.Int {
    get {}
    set(newValue) {}
  }
  var nanosecond: Swift.Int {
    get {}
    set(newValue) {}
  }
  var weekOfYear: Swift.Int {
    get {}
    set(newValue) {}
  }
  var weekOfMonth: Swift.Int {
    get {}
    set(newValue) {}
  }
  var yearForWeekOfYear: Swift.Int {
    get {}
    set(newValue) {}
  }
  var isLeapMonth: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var leapMonthSet: Swift.Bool {
    get {}
  }
  var date: Foundation.Date? {
    get {}
  }
  func setValue(_ value: Swift.Int, forComponent unit: Foundation.NSCalendar.Unit)
  func value(forComponent unit: Foundation.NSCalendar.Unit) -> Swift.Int
  var isValidDate: Swift.Bool {
    get {}
  }
  func isValidDate(in calendar: Foundation.Calendar) -> Swift.Bool
  @objc deinit
}
extension NSDateComponents : _SwiftBridgeable {
  typealias SwiftType = Foundation.DateComponents
  var _swiftObject: Foundation.NSDateComponents.SwiftType {
    get {}
  }
}
extension NSDateComponents : _StructTypeBridgeable {
  typealias _StructType = Foundation.DateComponents
  func _bridgeToSwift() -> Foundation.DateComponents
}
func splitData(dispatchData data: Dispatch.DispatchData, atPosition position: Swift.Int) -> (Dispatch.DispatchData, Dispatch.DispatchData)
var NSURLErrorCannotDecodeRawData: Swift.Int {
  get {}
}
class MessagePort : Foundation.Port {
  @objc deinit
  init()
  required init?(coder aDecoder: Foundation.NSCoder)
}
protocol URLSessionDownloadDelegate : URLSessionTaskDelegate {
  func urlSession(_ session: Foundation.URLSession, downloadTask: Foundation.URLSessionDownloadTask, didFinishDownloadingTo location: Foundation.URL)
  func urlSession(_ session: Foundation.URLSession, downloadTask: Foundation.URLSessionDownloadTask, didWriteData bytesWritten: Swift.Int64, totalBytesWritten: Swift.Int64, totalBytesExpectedToWrite: Swift.Int64)
  func urlSession(_ session: Foundation.URLSession, downloadTask: Foundation.URLSessionDownloadTask, didResumeAtOffset fileOffset: Swift.Int64, expectedTotalBytes: Swift.Int64)
}
extension URLSessionDownloadDelegate {
  func urlSession(_ session: Foundation.URLSession, downloadTask: Foundation.URLSessionDownloadTask, didWriteData bytesWritten: Swift.Int64, totalBytesWritten: Swift.Int64, totalBytesExpectedToWrite: Swift.Int64)
  func urlSession(_ session: Foundation.URLSession, downloadTask: Foundation.URLSessionDownloadTask, didResumeAtOffset fileOffset: Swift.Int64, expectedTotalBytes: Swift.Int64)
}
func cbrt(_ x: Foundation.CGFloat) -> Foundation.CGFloat
func NSContainsRect(_ aRect: Foundation.NSRect, _ bRect: Foundation.NSRect) -> Swift.Bool
struct UnsafeMutablePointer<Pointee> : Strideable, Hashable, _Pointer {
  typealias Distance = Swift.Int
  let _rawValue: <null>
  init(_ _rawValue: Builtin.RawPointer)
  init(_ from: Swift.OpaquePointer)
  init?(_ from: Swift.OpaquePointer?)
  init?(bitPattern: Swift.Int)
  init?(bitPattern: Swift.UInt)
  init(_ other: Swift.UnsafeMutablePointer<Pointee>)
  init?(_ other: Swift.UnsafeMutablePointer<Pointee>?)
  init(mutating other: Swift.UnsafePointer<Pointee>)
  init?(mutating other: Swift.UnsafePointer<Pointee>?)
  static func allocate(capacity count: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  func deallocate(capacity: Swift.Int)
  var pointee: Pointee
  var pointee: Pointee {
    unsafeAddress {}
    unsafeMutableAddress {}
  }
  func initialize(to newValue: Pointee, count: Swift.Int = default)
  func move() -> Pointee
  func assign(from source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  func moveInitialize(from source: Swift.UnsafeMutablePointer<Pointee>, count: Swift.Int)
  func initialize(from source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, deprecated, message: "it will be removed in Swift 4.0.  Please use 'UnsafeMutableBufferPointer.initialize(from:)' instead") func initialize<C>(from source: C) where C : Collection, C.Iterator.Element == Pointee
  func moveAssign(from source: Swift.UnsafeMutablePointer<Pointee>, count: Swift.Int)
  @discardableResult func deinitialize(count: Swift.Int = default) -> Swift.UnsafeMutableRawPointer
  func withMemoryRebound<T, Result>(to type: T.Type, capacity count: Swift.Int, _ body: (Swift.UnsafeMutablePointer<T>) throws -> Result) rethrows -> Result
  subscript(i: Swift.Int) -> Pointee {
    unsafeAddress {}
    unsafeMutableAddress {}
  }
  var hashValue: Swift.Int {
    get {}
  }
  func successor() -> Swift.UnsafeMutablePointer<Pointee>
  func predecessor() -> Swift.UnsafeMutablePointer<Pointee>
  func distance(to end: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Int
  func advanced(by n: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  typealias Stride = Swift.Int
  typealias _DisabledRangeIndex = Swift._DisabledRangeIndex_
}
extension UnsafeMutablePointer {
  static func ==(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Bool
  static func <(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Bool
  static func +(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  static func +(lhs: Swift.Int, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.UnsafeMutablePointer<Pointee>
  static func -(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  static func -(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Int
  static func +=(lhs: inout Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int)
  static func -=(lhs: inout Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int)
}
extension UnsafeMutablePointer : CustomDebugStringConvertible {
  var debugDescription: Swift.String {
    get {}
  }
}
extension UnsafeMutablePointer : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension UnsafeMutablePointer : CustomPlaygroundQuickLookable {
  var summary: Swift.String {
    get {}
  }
  var customPlaygroundQuickLook: Swift.PlaygroundQuickLook {
    get {}
  }
}
extension UnsafeMutablePointer {
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init<U>(_ from: Swift.UnsafeMutablePointer<U>)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init?<U>(_ from: Swift.UnsafeMutablePointer<U>?)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init<U>(_ from: Swift.UnsafePointer<U>)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init?<U>(_ from: Swift.UnsafePointer<U>?)
  @available(*, unavailable, renamed: "init(mutating:)") init(_ from: Swift.UnsafePointer<Pointee>)
  @available(*, unavailable, renamed: "init(mutating:)") init?(_ from: Swift.UnsafePointer<Pointee>?)
  @available(*, unavailable, renamed: "Pointee") typealias Memory = Pointee
  @available(*, unavailable, message: "use 'nil' literal") init()
  @available(*, unavailable, renamed: "allocate(capacity:)") static func alloc(_ num: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  @available(*, unavailable, message: "use 'UnsafeMutablePointer.allocate(capacity:)'") init(allocatingCapacity: Swift.Int)
  @available(*, unavailable, renamed: "deallocate(capacity:)") func dealloc(_ num: Swift.Int)
  @available(*, unavailable, renamed: "deallocate(capacity:)") func deallocateCapacity(_ num: Swift.Int)
  @available(*, unavailable, renamed: "pointee") var memory: Pointee {
    get {}
    set(newValue) {}
  }
  @available(*, unavailable, renamed: "initialize(to:)") func initialize(_ newvalue: Pointee)
  @available(*, unavailable, renamed: "initialize(to:count:)") func initialize(with newvalue: Pointee, count: Swift.Int = default)
  @available(*, unavailable, renamed: "deinitialize(count:)") func destroy()
  @available(*, unavailable, renamed: "deinitialize(count:)") func destroy(_ count: Swift.Int)
  @available(*, unavailable, renamed: "initialize(from:)") func initializeFrom<C>(_ source: C) where C : Collection
  @available(*, unavailable, renamed: "initialize(from:count:)") func initializeFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "assign(from:count:)") func assignFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "assign(from:count:)") func assignBackwardFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveInitialize(from:count:)") func moveInitializeFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveInitialize(from:count:)") func moveInitializeBackwardFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveAssign(from:count:)") func moveAssignFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
}
extension UnsafeMutablePointer : CVarArg {
  var _cVarArgEncoding: [Swift.Int] {
    get {}
  }
}
class DateFormatter : Foundation.Formatter {
  typealias CFType = CoreFoundation.CFDateFormatter
  var __cfObject: <null>
  var _cfObject: Foundation.DateFormatter.CFType {
    get {}
  }
  init()
  required init?(coder: Foundation.NSCoder)
  var formattingContext: <null>
  func objectValue(_ string: Swift.String, range rangep: Swift.UnsafeMutablePointer<Foundation.NSRange>) throws -> AnyObject?
  override func string(for obj: Any) -> Swift.String?
  func string(from date: Foundation.Date) -> Swift.String
  func date(from string: Swift.String) -> Foundation.Date?
  class func localizedString(from date: Foundation.Date, dateStyle dstyle: Foundation.DateFormatter.Style, timeStyle tstyle: Foundation.DateFormatter.Style) -> Swift.String
  class func dateFormat(fromTemplate tmplate: Swift.String, options opts: Swift.Int, locale: Foundation.Locale?) -> Swift.String?
  func setLocalizedDateFormatFromTemplate(_ dateFormatTemplate: Swift.String)
  func _reset()
  func _setFormatterAttributes(_ formatter: CoreFoundation.CFDateFormatter)
  func _setFormatterAttribute(_ formatter: CoreFoundation.CFDateFormatter, attributeName: CoreFoundation.CFString, value: AnyObject?)
  var _dateFormat: Swift.String? {
    final willSet(newValue) {}
  }
  var dateFormat: Swift.String! {
    get {}
    set(newValue) {}
  }
  var dateStyle: Foundation.DateFormatter.Style {
    final willSet(newValue) {}
  }
  var timeStyle: Foundation.DateFormatter.Style {
    final willSet(newValue) {}
  }
  var locale: Foundation.Locale! {
    final willSet(newValue) {}
  }
  var generatesCalendarDates: Swift.Bool {
    final willSet(newValue) {}
  }
  var timeZone: Foundation.TimeZone! {
    final willSet(newValue) {}
  }
  var _calendar: Foundation.Calendar! {
    final willSet(newValue) {}
  }
  var calendar: Foundation.Calendar! {
    get {}
    set(newValue) {}
  }
  var isLenient: Swift.Bool {
    final willSet(newValue) {}
  }
  var _twoDigitStartDate: Foundation.Date? {
    final willSet(newValue) {}
  }
  var twoDigitStartDate: Foundation.Date? {
    get {}
    set(newValue) {}
  }
  var defaultDate: Foundation.Date? {
    final willSet(newValue) {}
  }
  var _eraSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var eraSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _monthSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var monthSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _shortMonthSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var shortMonthSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _weekdaySymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var weekdaySymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _shortWeekdaySymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var shortWeekdaySymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _amSymbol: Swift.String! {
    final willSet(newValue) {}
  }
  var amSymbol: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _pmSymbol: Swift.String! {
    final willSet(newValue) {}
  }
  var pmSymbol: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _longEraSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var longEraSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _veryShortMonthSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var veryShortMonthSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _standaloneMonthSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var standaloneMonthSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _shortStandaloneMonthSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var shortStandaloneMonthSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _veryShortStandaloneMonthSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var veryShortStandaloneMonthSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _veryShortWeekdaySymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var veryShortWeekdaySymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _standaloneWeekdaySymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var standaloneWeekdaySymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _shortStandaloneWeekdaySymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var shortStandaloneWeekdaySymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _veryShortStandaloneWeekdaySymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var veryShortStandaloneWeekdaySymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _quarterSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var quarterSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _shortQuarterSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var shortQuarterSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _standaloneQuarterSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var standaloneQuarterSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _shortStandaloneQuarterSymbols: [Swift.String]! {
    final willSet(newValue) {}
  }
  var shortStandaloneQuarterSymbols: [Swift.String]! {
    get {}
    set(newValue) {}
  }
  var _gregorianStartDate: Foundation.Date? {
    final willSet(newValue) {}
  }
  var gregorianStartDate: Foundation.Date? {
    get {}
    set(newValue) {}
  }
  var doesRelativeDateFormatting: Swift.Bool {
    final willSet(newValue) {}
  }
  @objc deinit
}
extension DateFormatter {
  enum Style : Swift.UInt {
    case none
    case short
    case medium
    case long
    case full
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
var NSExecutableNotLoadableError: Swift.Int {
  get {}
}
func _CFSwiftStringGetBytes(_ str: AnyObject, encoding: CoreFoundation.CFStringEncoding, range: CoreFoundation.CFRange, buffer: Swift.UnsafeMutablePointer<Swift.UInt8>?, maxBufLen: CoreFoundation.CFIndex, usedBufLen: Swift.UnsafeMutablePointer<CoreFoundation.CFIndex>?) -> CoreFoundation.CFIndex
func _CFSwiftDictionaryCreateCopy(_ dictionary: AnyObject) -> Swift.Unmanaged<AnyObject>
var NSFileWriteInvalidFileNameError: Swift.Int {
  get {}
}
class URLResponse : Foundation.NSObject, NSSecureCoding, NSCopying {
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  required init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  init(url: Foundation.URL, mimeType: Swift.String?, expectedContentLength length: Swift.Int, textEncodingName name: Swift.String?)
  var url: <null>
  var mimeType: <null>
  var expectedContentLength: <null>
  var textEncodingName: <null>
  var suggestedFilename: <null>
  @objc deinit
  init()
}
protocol _ObjectTypeBridgeableError : Error {
  init?(_bridgedNSError: Foundation.NSError)
}
final class _NSDataDeallocator {
  final var handler: <null>
  @objc deinit
  init()
}
func errorCode(fileSystemError error: Error) -> Swift.Int
let NSLocalizedRecoveryOptionsErrorKey: Swift.String
class MassFormatter : Foundation.Formatter {
  required init?(coder: Foundation.NSCoder)
  var numberFormatter: <null>
  var unitStyle: <null>
  var isForPersonMassUse: <null>
  func string(fromValue value: Swift.Double, unit: Foundation.MassFormatter.Unit) -> Swift.String
  func string(fromKilograms numberInKilograms: Swift.Double) -> Swift.String
  func unitString(fromValue value: Swift.Double, unit: Foundation.MassFormatter.Unit) -> Swift.String
  func unitString(fromKilograms numberInKilograms: Swift.Double, usedUnit unitp: Swift.UnsafeMutablePointer<Foundation.MassFormatter.Unit>?) -> Swift.String
  override func objectValue(_ string: Swift.String) throws -> Any?
  @objc deinit
  init()
}
extension MassFormatter {
  enum Unit : Swift.Int {
    case gram
    case kilogram
    case ounce
    case pound
    case stone
    typealias RawValue = Swift.Int
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.Int)
    var rawValue: Swift.Int {
      get {}
    }
  }
}
func _CFSwiftArrayAppendValue(_ array: AnyObject, _ value: AnyObject)
class NSGeneratorEnumerator<Base> : Foundation.NSEnumerator where Base : IteratorProtocol {
  var generator: Base
  init(_ generator: Base)
  override func nextObject() -> Any?
  @objc deinit
  init()
}
struct URLResourceValues {
  var _values: <null>
  var _keys: <null>
  init()
  init(keys: Swift.Set<Foundation.URLResourceKey>, values: [Foundation.URLResourceKey : Any])
  func contains(_ key: Foundation.URLResourceKey) -> Swift.Bool
  func _get<T>(_ key: Foundation.URLResourceKey) -> T?
  func _get(_ key: Foundation.URLResourceKey) -> Swift.Bool?
  func _get(_ key: Foundation.URLResourceKey) -> Swift.Int?
  mutating func _set(_ key: Foundation.URLResourceKey, newValue: Any?)
  mutating func _set(_ key: Foundation.URLResourceKey, newValue: Swift.String?)
  mutating func _set(_ key: Foundation.URLResourceKey, newValue: [Swift.String]?)
  mutating func _set(_ key: Foundation.URLResourceKey, newValue: Foundation.Date?)
  mutating func _set(_ key: Foundation.URLResourceKey, newValue: Foundation.URL?)
  mutating func _set(_ key: Foundation.URLResourceKey, newValue: Swift.Bool?)
  mutating func _set(_ key: Foundation.URLResourceKey, newValue: Swift.Int?)
  var allValues: [Foundation.URLResourceKey : Any] {
    get {}
  }
  var name: Swift.String? {
    get {}
    set(newValue) {}
  }
  var localizedName: Swift.String? {
    get {}
  }
  var isRegularFile: Swift.Bool? {
    get {}
  }
  var isDirectory: Swift.Bool? {
    get {}
  }
  var isSymbolicLink: Swift.Bool? {
    get {}
  }
  var isVolume: Swift.Bool? {
    get {}
  }
  var isPackage: Swift.Bool? {
    get {}
    set(newValue) {}
  }
  var isApplication: Swift.Bool? {
    get {}
  }
  var applicationIsScriptable: Swift.Bool? {
    get {}
  }
  var isSystemImmutable: Swift.Bool? {
    get {}
  }
  var isUserImmutable: Swift.Bool? {
    get {}
    set(newValue) {}
  }
  var isHidden: Swift.Bool? {
    get {}
    set(newValue) {}
  }
  var hasHiddenExtension: Swift.Bool? {
    get {}
    set(newValue) {}
  }
  var creationDate: Foundation.Date? {
    get {}
    set(newValue) {}
  }
  var contentAccessDate: Foundation.Date? {
    get {}
    set(newValue) {}
  }
  var contentModificationDate: Foundation.Date? {
    get {}
    set(newValue) {}
  }
  var attributeModificationDate: Foundation.Date? {
    get {}
  }
  var linkCount: Swift.Int? {
    get {}
  }
  var parentDirectory: Foundation.URL? {
    get {}
  }
  var volume: Foundation.URL? {
    get {}
  }
  var typeIdentifier: Swift.String? {
    get {}
  }
  var localizedTypeDescription: Swift.String? {
    get {}
  }
  var labelNumber: Swift.Int? {
    get {}
    set(newValue) {}
  }
  var localizedLabel: Swift.String? {
    get {}
  }
  var fileResourceIdentifier: (NSCopying & NSObjectProtocol & NSSecureCoding)? {
    get {}
  }
  var volumeIdentifier: (NSCopying & NSObjectProtocol & NSSecureCoding)? {
    get {}
  }
  var preferredIOBlockSize: Swift.Int? {
    get {}
  }
  var isReadable: Swift.Bool? {
    get {}
  }
  var isWritable: Swift.Bool? {
    get {}
  }
  var isExecutable: Swift.Bool? {
    get {}
  }
  var isExcludedFromBackup: Swift.Bool? {
    get {}
    set(newValue) {}
  }
  var tagNames: [Swift.String]? {
    get {}
  }
  var path: Swift.String? {
    get {}
  }
  var canonicalPath: Swift.String? {
    get {}
  }
  var isMountTrigger: Swift.Bool? {
    get {}
  }
  var generationIdentifier: (NSCopying & NSObjectProtocol & NSSecureCoding)? {
    get {}
  }
  var documentIdentifier: Swift.Int? {
    get {}
  }
  var addedToDirectoryDate: Foundation.Date? {
    get {}
  }
  var quarantineProperties: [Swift.String : Any]? {
    get {}
    set(newValue) {}
  }
  var fileResourceType: Foundation.URLFileResourceType? {
    get {}
  }
  var volumeLocalizedFormatDescription: Swift.String? {
    get {}
  }
  var volumeTotalCapacity: Swift.Int? {
    get {}
  }
  var volumeAvailableCapacity: Swift.Int? {
    get {}
  }
  var volumeResourceCount: Swift.Int? {
    get {}
  }
  var volumeSupportsPersistentIDs: Swift.Bool? {
    get {}
  }
  var volumeSupportsSymbolicLinks: Swift.Bool? {
    get {}
  }
  var volumeSupportsHardLinks: Swift.Bool? {
    get {}
  }
  var volumeSupportsJournaling: Swift.Bool? {
    get {}
  }
  var volumeIsJournaling: Swift.Bool? {
    get {}
  }
  var volumeSupportsSparseFiles: Swift.Bool? {
    get {}
  }
  var volumeSupportsZeroRuns: Swift.Bool? {
    get {}
  }
  var volumeSupportsCaseSensitiveNames: Swift.Bool? {
    get {}
  }
  var volumeSupportsCasePreservedNames: Swift.Bool? {
    get {}
  }
  var volumeSupportsRootDirectoryDates: Swift.Bool? {
    get {}
  }
  var volumeSupportsVolumeSizes: Swift.Bool? {
    get {}
  }
  var volumeSupportsRenaming: Swift.Bool? {
    get {}
  }
  var volumeSupportsAdvisoryFileLocking: Swift.Bool? {
    get {}
  }
  var volumeSupportsExtendedSecurity: Swift.Bool? {
    get {}
  }
  var volumeIsBrowsable: Swift.Bool? {
    get {}
  }
  var volumeMaximumFileSize: Swift.Int? {
    get {}
  }
  var volumeIsEjectable: Swift.Bool? {
    get {}
  }
  var volumeIsRemovable: Swift.Bool? {
    get {}
  }
  var volumeIsInternal: Swift.Bool? {
    get {}
  }
  var volumeIsAutomounted: Swift.Bool? {
    get {}
  }
  var volumeIsLocal: Swift.Bool? {
    get {}
  }
  var volumeIsReadOnly: Swift.Bool? {
    get {}
  }
  var volumeCreationDate: Foundation.Date? {
    get {}
  }
  var volumeURLForRemounting: Foundation.URL? {
    get {}
  }
  var volumeUUIDString: Swift.String? {
    get {}
  }
  var volumeName: Swift.String? {
    get {}
    set(newValue) {}
  }
  var volumeLocalizedName: Swift.String? {
    get {}
  }
  var volumeIsEncrypted: Swift.Bool? {
    get {}
  }
  var volumeIsRootFileSystem: Swift.Bool? {
    get {}
  }
  var volumeSupportsCompression: Swift.Bool? {
    get {}
  }
  var isUbiquitousItem: Swift.Bool? {
    get {}
  }
  var ubiquitousItemHasUnresolvedConflicts: Swift.Bool? {
    get {}
  }
  var ubiquitousItemIsDownloading: Swift.Bool? {
    get {}
  }
  var ubiquitousItemIsUploaded: Swift.Bool? {
    get {}
  }
  var ubiquitousItemIsUploading: Swift.Bool? {
    get {}
  }
  var ubiquitousItemDownloadingError: Foundation.NSError? {
    get {}
  }
  var ubiquitousItemUploadingError: Foundation.NSError? {
    get {}
  }
  var ubiquitousItemDownloadRequested: Swift.Bool? {
    get {}
  }
  var ubiquitousItemContainerDisplayName: Swift.String? {
    get {}
  }
  var fileSize: Swift.Int? {
    get {}
  }
  var fileAllocatedSize: Swift.Int? {
    get {}
  }
  var totalFileSize: Swift.Int? {
    get {}
  }
  var totalFileAllocatedSize: Swift.Int? {
    get {}
  }
  var isAliasFile: Swift.Bool? {
    get {}
  }
}
protocol ReferenceConvertible : CustomStringConvertible, CustomDebugStringConvertible, Hashable, Equatable {
  associatedtype ReferenceType : Foundation.NSObject, NSCopying
}
protocol ProgressReporting : NSObjectProtocol {
  var progress: Foundation.Progress { get }
}
var NSURLErrorFileIsDirectory: Swift.Int {
  get {}
}
func _CFSwiftDictionaryGetCountOfKey(_ dictionary: AnyObject, key: AnyObject) -> CoreFoundation.CFIndex
func isAParagraphSeparatorTypeCharacter(_ ch: Foundation.unichar) -> Swift.Bool
@available(*, unavailable, message: "use the isInfinite property.") func isinf(_ value: Foundation.CGFloat) -> Swift.Bool
struct NSMatchingFlags : OptionSet {
  let rawValue: <null>
  init(rawValue: Swift.UInt)
  static var progress: Foundation.NSMatchingFlags
  static var completed: Foundation.NSMatchingFlags
  static var hitEnd: Foundation.NSMatchingFlags
  static var requiredEnd: Foundation.NSMatchingFlags
  static var internalError: Foundation.NSMatchingFlags
  typealias Element = Foundation.NSMatchingFlags
  typealias RawValue = Swift.UInt
}
class NSMutableOrderedSet : Foundation.NSOrderedSet {
  func insert(_ object: Any, at idx: Swift.Int)
  func removeObject(at idx: Swift.Int)
  func replaceObject(at idx: Swift.Int, with obj: Any)
  init(capacity numItems: Swift.Int)
  required convenience init(arrayLiteral elements: Any...)
  required init?(coder aDecoder: Foundation.NSCoder)
  func _removeObject(_ object: Any)
  @objc deinit
  init(objects: Swift.UnsafePointer<AnyObject>!, count cnt: Swift.Int)
}
extension NSMutableOrderedSet {
  func add(_ object: Any)
  func add(_ objects: Swift.UnsafePointer<AnyObject>!, count: Swift.Int)
  func addObjects(from array: [Any])
  func exchangeObject(at idx1: Swift.Int, withObjectAt idx2: Swift.Int)
  func moveObjects(at indexes: Foundation.IndexSet, to idx: Swift.Int)
  func insert(_ objects: [Any], at indexes: Foundation.IndexSet)
  func setObject(_ obj: Any, at idx: Swift.Int)
  func replaceObjects(in range: Foundation.NSRange, with objects: Swift.UnsafePointer<AnyObject>!, count: Swift.Int)
  func replaceObjects(at indexes: Foundation.IndexSet, with objects: [Any])
  func removeObjects(in range: Foundation.NSRange)
  func removeObjects(at indexes: Foundation.IndexSet)
  func removeAllObjects()
  func remove(_ val: Any)
  func removeObjects(in array: [Any])
  func intersect(_ other: Foundation.NSOrderedSet)
  func minus(_ other: Foundation.NSOrderedSet)
  func union(_ other: Foundation.NSOrderedSet)
  func intersectSet(_ other: Swift.Set<Swift.AnyHashable>)
  func minusSet(_ other: Swift.Set<Swift.AnyHashable>)
  func unionSet(_ other: Swift.Set<Swift.AnyHashable>)
  func sort(comparator cmptr: (Any, Any) -> Foundation.ComparisonResult)
  func sort(options opts: Foundation.NSSortOptions = default, usingComparator cmptr: (Any, Any) -> Foundation.ComparisonResult)
  func sortRange(_ range: Foundation.NSRange, options opts: Foundation.NSSortOptions = default, usingComparator cmptr: (Any, Any) -> Foundation.ComparisonResult)
}
extension NSMutableOrderedSet {
  func filter(using predicate: Foundation.NSPredicate)
}
extension NSMutableOrderedSet {
  func sortUsingDescriptors(_ sortDescriptors: [Foundation.SortDescriptor])
}
class OutputStream : Foundation.Stream {
  var _stream: <null>
  func write(_ buffer: Swift.UnsafePointer<Swift.UInt8>, maxLength len: Swift.Int) -> Swift.Int
  var hasSpaceAvailable: Swift.Bool {
    get {}
  }
  required init(toMemory: ())
  init(toBuffer buffer: Swift.UnsafeMutablePointer<Swift.UInt8>, capacity: Swift.Int)
  init?(url: Foundation.URL, append shouldAppend: Swift.Bool)
  convenience init?(toFileAtPath path: Swift.String, append shouldAppend: Swift.Bool)
  override func open()
  override func close()
  override var streamStatus: Foundation.Stream.Status {
    override get {}
  }
  class func toMemory() -> Self
  override func property(forKey key: Foundation.Stream.PropertyKey) -> AnyObject?
  override func setProperty(_ property: AnyObject?, forKey key: Foundation.Stream.PropertyKey) -> Swift.Bool
  override var streamError: Foundation.NSError? {
    override get {}
  }
  @objc deinit
  init()
}
class URLCache : Foundation.NSObject {
  class var shared: Foundation.URLCache {
    get {}
    set(newValue) {}
  }
  init(memoryCapacity: Swift.Int, diskCapacity: Swift.Int, diskPath path: Swift.String?)
  func cachedResponse(for request: Foundation.URLRequest) -> Foundation.CachedURLResponse?
  func storeCachedResponse(_ cachedResponse: Foundation.CachedURLResponse, for request: Foundation.URLRequest)
  func removeCachedResponse(for request: Foundation.URLRequest)
  func removeAllCachedResponses()
  func removeCachedResponses(since date: Foundation.Date)
  var memoryCapacity: <null>
  var diskCapacity: <null>
  var currentMemoryUsage: Swift.Int {
    get {}
  }
  var currentDiskUsage: Swift.Int {
    get {}
  }
  @objc deinit
  init()
}
extension URLCache {
  enum StoragePolicy : Swift.UInt {
    case allowed
    case allowedInMemoryOnly
    case notAllowed
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
extension URLCache {
  func storeCachedResponse(_ cachedResponse: Foundation.CachedURLResponse, for dataTask: Foundation.URLSessionDataTask)
  func getCachedResponse(for dataTask: Foundation.URLSessionDataTask, completionHandler: (Foundation.CachedURLResponse?) -> Swift.Void)
  func removeCachedResponse(for dataTask: Foundation.URLSessionDataTask)
}
struct _OperationList {
  var veryLow: [Foundation.Operation]
  var low: [Foundation.Operation]
  var normal: [Foundation.Operation]
  var high: [Foundation.Operation]
  var veryHigh: [Foundation.Operation]
  var all: [Foundation.Operation]
  mutating func insert(_ operation: Foundation.Operation)
  mutating func remove(_ operation: Foundation.Operation)
  mutating func dequeue() -> Foundation.Operation?
  var count: Swift.Int {
    get {}
  }
  func map<T>(_ transform: (Foundation.Operation) throws -> T) rethrows -> [T]
  init(veryLow: [Foundation.Operation], low: [Foundation.Operation], normal: [Foundation.Operation], high: [Foundation.Operation], veryHigh: [Foundation.Operation], all: [Foundation.Operation])
  init()
}
func acosh(_ x: Foundation.CGFloat) -> Foundation.CGFloat
func numericOrHexValue(_ ch: Foundation.unichar) -> Swift.Int
func _CFSwiftArrayReplaceValueAtIndex(_ array: AnyObject, _ idx: CoreFoundation.CFIndex, _ value: AnyObject)
func ldexp(_ x: Foundation.CGFloat, _ n: Swift.Int) -> Foundation.CGFloat
func _scanDoublesFromString(_ aString: Swift.String, number: Swift.Int) -> [Swift.Double]
var NSCoderReadCorruptError: Swift.Int {
  get {}
}
func copyDispatchData<T>(_ data: Dispatch.DispatchData, infoBuffer buffer: Swift.UnsafeMutableBufferPointer<T>)
class SortDescriptor : Foundation.NSObject, NSSecureCoding, NSCopying {
  required init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  init(key: Swift.String?, ascending: Swift.Bool)
  var key: Swift.String? {
    get {}
  }
  var ascending: Swift.Bool {
    get {}
  }
  func allowEvaluation()
  init(key: Swift.String?, ascending: Swift.Bool, comparator cmptr: (Any, Any) -> Foundation.ComparisonResult)
  var comparator: Foundation.Comparator {
    get {}
  }
  func compareObject(_ object1: AnyObject, toObject object2: AnyObject) -> Foundation.ComparisonResult
  var reversedSortDescriptor: AnyObject {
    get {}
  }
  @objc deinit
  init()
}
class _NSSwiftData : Foundation.NSData {
  var _backing: <null>
  convenience init(backing: Foundation._DataStorage)
  override var length: Swift.Int {
    override get {}
  }
  override var bytes: Swift.UnsafeRawPointer {
    override get {}
  }
  override func copy(with zone: Foundation.NSZone? = default) -> Any
  override func _providesConcreteBacking() -> Swift.Bool
  @objc deinit
  init(bytes: Swift.UnsafeMutableRawPointer?, length: Swift.Int, copy: Swift.Bool = default, deallocator: ((Swift.UnsafeMutableRawPointer, Swift.Int) -> Swift.Void)? = default)
}
func _NSXMLParserCurrentParser() -> CoreFoundation._CFXMLInterface?
struct JSONWriter {
  var indent: Swift.Int
  let pretty: <null>
  let writer: <null>
  lazy var _numberformatter: CoreFoundation.CFNumberFormatter {
    get {}
    set(value) {}
  }
  var _numberformatter.storage: <null>
  init(pretty: Swift.Bool = default, writer: @escaping (Swift.String?) -> Swift.Void)
  mutating func serializeJSON(_ obj: Any) throws
  func serializeString(_ str: Swift.String) throws
  func serializeBool(_ bool: Swift.Bool)
  mutating func serializeNumber(_ num: Foundation.NSNumber) throws
  mutating func serializeArray(_ array: [Any]) throws
  mutating func serializeDictionary(_ dict: [Swift.AnyHashable : Any]) throws
  func serializeNull(_ null: Foundation.NSNull) throws
  let indentAmount: Swift.Int
  mutating func incAndWriteIndent()
  mutating func decAndWriteIndent()
  func writeIndent()
  mutating func _serializationString(for number: Foundation.NSNumber) -> Swift.String
}
class NSCompoundPredicate : Foundation.NSPredicate {
  init(type: Foundation.NSCompoundPredicate.LogicalType, subpredicates: [Foundation.NSPredicate])
  required init?(coder: Foundation.NSCoder)
  var compoundPredicateType: <null>
  var subpredicates: <null>
  convenience init(andPredicateWithSubpredicates subpredicates: [Foundation.NSPredicate])
  convenience init(orPredicateWithSubpredicates subpredicates: [Foundation.NSPredicate])
  convenience init(notPredicateWithSubpredicate predicate: Foundation.NSPredicate)
  override func evaluate(with object: Any?, substitutionVariables bindings: [Swift.String : Any]?) -> Swift.Bool
  @objc deinit
  init(format predicateFormat: Swift.String, argumentArray arguments: [Any]?)
  init(format predicateFormat: Swift.String, arguments argList: Swift.CVaListPointer)
  init?(fromMetadataQueryString queryString: Swift.String)
  init(value: Swift.Bool)
  init(block: @escaping (Any?, [Swift.String : Any]?) -> Swift.Bool)
}
extension NSCompoundPredicate {
  enum LogicalType : Swift.UInt {
    case not
    case and
    case or
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
class UserDefaults : Foundation.NSObject {
  final let suite: <null>
  class var standard: Foundation.UserDefaults {
    get {}
  }
  class func resetStandardUserDefaults()
  convenience init()
  init?(suiteName suitename: Swift.String?)
  func object(forKey defaultName: Swift.String) -> Any?
  func set(_ value: Any?, forKey defaultName: Swift.String)
  func removeObject(forKey defaultName: Swift.String)
  func string(forKey defaultName: Swift.String) -> Swift.String?
  func array(forKey defaultName: Swift.String) -> [Any]?
  func dictionary(forKey defaultName: Swift.String) -> [Swift.String : Any]?
  func data(forKey defaultName: Swift.String) -> Foundation.Data?
  func stringArray(forKey defaultName: Swift.String) -> [Swift.String]?
  func integer(forKey defaultName: Swift.String) -> Swift.Int
  func float(forKey defaultName: Swift.String) -> Swift.Float
  func double(forKey defaultName: Swift.String) -> Swift.Double
  func bool(forKey defaultName: Swift.String) -> Swift.Bool
  func url(forKey defaultName: Swift.String) -> Foundation.URL?
  func set(_ value: Swift.Int, forKey defaultName: Swift.String)
  func set(_ value: Swift.Float, forKey defaultName: Swift.String)
  func set(_ value: Swift.Double, forKey defaultName: Swift.String)
  func set(_ value: Swift.Bool, forKey defaultName: Swift.String)
  func set(_ url: Foundation.URL?, forKey defaultName: Swift.String)
  func register(defaults registrationDictionary: [Swift.String : Any])
  func addSuite(named suiteName: Swift.String)
  func removeSuite(named suiteName: Swift.String)
  func dictionaryRepresentation() -> [Swift.String : Any]
  var volatileDomainNames: [Swift.String] {
    get {}
  }
  func volatileDomain(forName domainName: Swift.String) -> [Swift.String : Any]
  func setVolatileDomain(_ domain: [Swift.String : Any], forName domainName: Swift.String)
  func removeVolatileDomain(forName domainName: Swift.String)
  func persistentDomain(forName domainName: Swift.String) -> [Swift.String : Any]?
  func setPersistentDomain(_ domain: [Swift.String : Any], forName domainName: Swift.String)
  func removePersistentDomain(forName domainName: Swift.String)
  func synchronize() -> Swift.Bool
  func objectIsForced(forKey key: Swift.String) -> Swift.Bool
  func objectIsForced(forKey key: Swift.String, inDomain domain: Swift.String) -> Swift.Bool
  @objc deinit
}
extension UserDefaults {
  static var didChangeNotification: Foundation.NSNotification.Name
  static var globalDomain: <null>
  static var argumentDomain: <null>
  static var registrationDomain: <null>
}
func NSDecimalRound(_ result: Swift.UnsafeMutablePointer<Foundation.Decimal>, _ number: Swift.UnsafePointer<Foundation.Decimal>, _ scale: Swift.Int, _ roundingMode: Foundation.NSDecimalNumber.RoundingMode)
func _CFSwiftCopyWithZone(_ cf: CoreFoundation.CFTypeRef, _ zone: CoreFoundation.CFTypeRef?) -> Swift.Unmanaged<CoreFoundation.CFTypeRef>
var NSFileReadInapplicableStringEncodingError: Swift.Int {
  get {}
}
func NSRoundUpToMultipleOfPageSize(_ size: Swift.Int) -> Swift.Int
class NSMutableArray : Foundation.NSArray {
  func add(_ anObject: Any)
  func insert(_ anObject: Any, at index: Swift.Int)
  func removeLastObject()
  func removeObject(at index: Swift.Int)
  func replaceObject(at index: Swift.Int, with anObject: Any)
  convenience init()
  init(capacity numItems: Swift.Int)
  required convenience init(objects: Swift.UnsafePointer<AnyObject>!, count cnt: Swift.Int)
  override subscript(idx: Swift.Int) -> Any {
    override get {}
    set(newObject) {}
  }
  func addObjectsFromArray(_ otherArray: [Any])
  func exchangeObject(at idx1: Swift.Int, withObjectAt idx2: Swift.Int)
  func removeAllObjects()
  func remove(_ anObject: Any, inRange range: Foundation.NSRange)
  func remove(_ anObject: Any)
  func removeObject(identicalTo anObject: Any, inRange range: Foundation.NSRange)
  func removeObject(identicalTo anObject: Any)
  func removeObjects(in otherArray: [Any])
  func removeObjects(in range: Foundation.NSRange)
  func replaceObjects(in range: Foundation.NSRange, withObjectsFrom otherArray: [Any], range otherRange: Foundation.NSRange)
  func replaceObjects(in range: Foundation.NSRange, withObjectsFromArray otherArray: [Any])
  func setArray(_ otherArray: [Any])
  func insertObjects(_ objects: [Any], atIndexes indexes: Foundation.IndexSet)
  func removeObjects(at indexes: Foundation.IndexSet)
  func replaceObjects(at indexes: Foundation.IndexSet, withObjects objects: [Any])
  func sort(_ compare: (Any, Any, Swift.UnsafeMutableRawPointer?) -> Swift.Int, context: Swift.UnsafeMutableRawPointer?)
  func sort(_ cmptr: (Any, Any) -> Foundation.ComparisonResult)
  func sort(options opts: Foundation.NSSortOptions, usingComparator cmptr: (Any, Any) -> Foundation.ComparisonResult)
  convenience init?(contentsOfFile path: Swift.String)
  convenience init?(contentsOfURL url: Foundation.URL)
  @objc deinit
}
extension NSMutableArray {
  var _cfMutableObject: CoreFoundation.CFMutableArray {
    get {}
  }
}
extension NSMutableArray {
  func filter(using predicate: Foundation.NSPredicate)
}
extension NSMutableArray {
  func sortUsingDescriptors(_ sortDescriptors: [Foundation.SortDescriptor])
}
class UnitAcceleration : Foundation.Dimension {
  struct Symbol {
    static var metersPerSecondSquared: Swift.String
    static var gravity: Swift.String
    init()
  }
  struct Coefficient {
    static var metersPerSecondSquared: Swift.Double
    static var gravity: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var metersPerSecondSquared: Foundation.UnitAcceleration {
    get {}
  }
  class var gravity: Foundation.UnitAcceleration {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitAcceleration
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
func copysign(_ lhs: Foundation.CGFloat, _ rhs: Foundation.CGFloat) -> Foundation.CGFloat
class _SocketSources {
  var readSource: <null>
  var writeSource: <null>
  func createReadSource(fileDescriptor fd: Swift.Int, queue: Dispatch.DispatchQueue, handler: Dispatch.DispatchWorkItem)
  func createWriteSource(fileDescriptor fd: Swift.Int, queue: Dispatch.DispatchQueue, handler: Dispatch.DispatchWorkItem)
  func tearDown()
  @objc deinit
  init()
}
extension _SocketSources {
  func createSources(with action: Foundation.URLSession._MultiHandle._SocketRegisterAction, fileDescriptor fd: Swift.Int, queue: Dispatch.DispatchQueue, handler: Dispatch.DispatchWorkItem)
}
extension _SocketSources {
  static func from(socketSourcePtr ptr: Swift.UnsafeMutableRawPointer?) -> Foundation._SocketSources?
}
protocol URLSessionDataDelegate : URLSessionTaskDelegate {
  func urlSession(_ session: Foundation.URLSession, dataTask: Foundation.URLSessionDataTask, didReceive response: Foundation.URLResponse, completionHandler: @escaping (Foundation.URLSession.ResponseDisposition) -> Swift.Void)
  func urlSession(_ session: Foundation.URLSession, dataTask: Foundation.URLSessionDataTask, didBecome downloadTask: Foundation.URLSessionDownloadTask)
  func urlSession(_ session: Foundation.URLSession, dataTask: Foundation.URLSessionDataTask, didBecome streamTask: Foundation.URLSessionStreamTask)
  func urlSession(_ session: Foundation.URLSession, dataTask: Foundation.URLSessionDataTask, didReceive data: Foundation.Data)
  func urlSession(_ session: Foundation.URLSession, dataTask: Foundation.URLSessionDataTask, willCacheResponse proposedResponse: Foundation.CachedURLResponse, completionHandler: @escaping (Foundation.CachedURLResponse?) -> Swift.Void)
}
extension URLSessionDataDelegate {
  func urlSession(_ session: Foundation.URLSession, dataTask: Foundation.URLSessionDataTask, didReceive response: Foundation.URLResponse, completionHandler: @escaping (Foundation.URLSession.ResponseDisposition) -> Swift.Void)
  func urlSession(_ session: Foundation.URLSession, dataTask: Foundation.URLSessionDataTask, didBecome downloadTask: Foundation.URLSessionDownloadTask)
  func urlSession(_ session: Foundation.URLSession, dataTask: Foundation.URLSessionDataTask, didBecome streamTask: Foundation.URLSessionStreamTask)
  func urlSession(_ session: Foundation.URLSession, dataTask: Foundation.URLSessionDataTask, didReceive data: Foundation.Data)
  func urlSession(_ session: Foundation.URLSession, dataTask: Foundation.URLSessionDataTask, willCacheResponse proposedResponse: Foundation.CachedURLResponse, completionHandler: @escaping (Foundation.CachedURLResponse?) -> Swift.Void)
}
func NSIntegralRectWithOptions(_ aRect: Foundation.NSRect, _ opts: Foundation.NSAlignmentOptions) -> Foundation.NSRect
func _CFSwiftArrayInsertValueAtIndex(_ array: AnyObject, _ idx: CoreFoundation.CFIndex, _ value: AnyObject)
var NSFileReadCorruptFileError: Swift.Int {
  get {}
}
let NSKeyedArchiveNullObjectReferenceName: Swift.String
func __NSIndexSetRangeCount(_ indexSet: Foundation.NSIndexSet) -> Swift.UInt
func log(_ x: Foundation.CGFloat) -> Foundation.CGFloat
func _toNSArray<T, U>(_ a: [T], f: (T) -> U) -> Foundation.NSArray where U : AnyObject
protocol StreamDelegate : class {
  func stream(_ aStream: Foundation.Stream, handleEvent eventCode: Foundation.Stream.Event)
}
extension StreamDelegate {
  func stream(_ aStream: Foundation.Stream, handleEvent eventCode: Foundation.Stream.Event)
}
var NSUbiquitousFileUnavailableError: Swift.Int {
  get {}
}
struct _NSRange {
  var location: <null>
  var length: <null>
  init()
  init(location: Swift.Int, length: Swift.Int)
  init(_ range: CoreFoundation.CFRange)
}
extension _NSRange {
  init(_ x: Swift.Range<Swift.Int>)
  func toRange() -> Swift.Range<Swift.Int>?
  func toCountableRange() -> Swift.CountableRange<Swift.Int>?
}
extension _NSRange : NSSpecialValueCoding {
  init(bytes: Swift.UnsafeRawPointer)
  init?(coder aDecoder: Foundation.NSCoder)
  func encodeWithCoder(_ aCoder: Foundation.NSCoder)
  static func objCType() -> Swift.String
  func getValue(_ value: Swift.UnsafeMutableRawPointer)
  func isEqual(_ aValue: Any) -> Swift.Bool
  var hash: Swift.Int {
    get {}
  }
  var description: Swift.String? {
    get {}
  }
}
let NSNotFound: Swift.Int
var NSURLErrorCannotWriteToFile: Swift.Int {
  get {}
}
var NSURLErrorBackgroundSessionInUseByAnotherProcess: Swift.Int {
  get {}
}
class UnitFrequency : Foundation.Dimension {
  struct Symbol {
    static var terahertz: Swift.String
    static var gigahertz: Swift.String
    static var megahertz: Swift.String
    static var kilohertz: Swift.String
    static var hertz: Swift.String
    static var millihertz: Swift.String
    static var microhertz: Swift.String
    static var nanohertz: Swift.String
    init()
  }
  struct Coefficient {
    static var terahertz: Swift.Double
    static var gigahertz: Swift.Double
    static var megahertz: Swift.Double
    static var kilohertz: Swift.Double
    static var hertz: Swift.Double
    static var millihertz: Swift.Double
    static var microhertz: Swift.Double
    static var nanohertz: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var terahertz: Foundation.UnitFrequency {
    get {}
  }
  class var gigahertz: Foundation.UnitFrequency {
    get {}
  }
  class var megahertz: Foundation.UnitFrequency {
    get {}
  }
  class var kilohertz: Foundation.UnitFrequency {
    get {}
  }
  class var hertz: Foundation.UnitFrequency {
    get {}
  }
  class var millihertz: Foundation.UnitFrequency {
    get {}
  }
  class var microhertz: Foundation.UnitFrequency {
    get {}
  }
  class var nanohertz: Foundation.UnitFrequency {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitFrequency
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
struct _CFInfo {
  var info: <null>
  var pad: <null>
  init(typeID: CoreFoundation.CFTypeID)
  init(typeID: CoreFoundation.CFTypeID, extra: Swift.UInt32)
}
var NSURLErrorSecureConnectionFailed: Swift.Int {
  get {}
}
class MeasurementFormatter : Foundation.Formatter, NSSecureCoding {
  var unitOptions: <null>
  var unitStyle: <null>
  var locale: <null>
  var numberFormatter: <null>
  func string(from measurement: Foundation.Measurement<Foundation.Unit>) -> Swift.String
  func string(from unit: Foundation.Unit) -> Swift.String
  init()
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  @objc deinit
}
extension MeasurementFormatter {
  struct UnitOptions : OptionSet {
    var rawValue: <null>
    init(rawValue: Swift.UInt)
    static var providedUnit: Foundation.MeasurementFormatter.UnitOptions
    static var naturalScale: Foundation.MeasurementFormatter.UnitOptions
    static var temperatureWithoutUnit: Foundation.MeasurementFormatter.UnitOptions
    typealias Element = Foundation.MeasurementFormatter.UnitOptions
    typealias RawValue = Swift.UInt
  }
}
extension MeasurementFormatter {
  func string<UnitType>(from measurement: Foundation.Measurement<UnitType>) -> Swift.String where UnitType : Foundation.Unit
}
struct URLFileResourceType : RawRepresentable, Equatable, Hashable, Comparable {
  var rawValue: <null>
  init(rawValue: Swift.String)
  init(_ rawValue: Swift.String)
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.URLFileResourceType, rhs: Foundation.URLFileResourceType) -> Swift.Bool
  static func <(lhs: Foundation.URLFileResourceType, rhs: Foundation.URLFileResourceType) -> Swift.Bool
  typealias RawValue = Swift.String
}
extension URLFileResourceType {
  static var namedPipe: Foundation.URLFileResourceType
  static var characterSpecial: Foundation.URLFileResourceType
  static var directory: Foundation.URLFileResourceType
  static var blockSpecial: Foundation.URLFileResourceType
  static var regular: Foundation.URLFileResourceType
  static var symbolicLink: Foundation.URLFileResourceType
  static var socket: Foundation.URLFileResourceType
  static var unknown: Foundation.URLFileResourceType
}
final class _EasyHandle {
  final let rawHandle: CoreFoundation.CFURLSessionEasyHandle
  unowned final let delegate: <null>
  final var headerList: <null>
  final var pauseState: <null>
  final var fileLength: <null>
  init(delegate: _EasyHandleDelegate)
  @objc deinit
}
extension _EasyHandle {
  enum _Action {
    case abort
    case proceed
    case pause
    infix static func ==(a: Foundation._EasyHandle._Action, b: Foundation._EasyHandle._Action) -> Swift.Bool
    var hashValue: Swift.Int {
      get {}
    }
  }
  enum _WriteBufferResult {
    case abort
    case pause
    case bytes(Swift.Int)
  }
}
extension _EasyHandle : Equatable {
}
extension _EasyHandle {
  final func completedTransfer(withErrorCode errorCode: Swift.Int?)
}
extension _EasyHandle {
  final func set(verboseModeOn flag: Swift.Bool)
  final func set(debugOutputOn flag: Swift.Bool, task: Foundation.URLSessionTask)
  final func set(passHeadersToDataStream flag: Swift.Bool)
  final func set(followLocation flag: Swift.Bool)
  final func set(progressMeterOff flag: Swift.Bool)
  final func set(skipAllSignalHandling flag: Swift.Bool)
  final func set(errorBuffer buffer: Swift.UnsafeMutableBufferPointer<Swift.UInt8>?)
  final func set(failOnHTTPErrorCode flag: Swift.Bool)
  final func set(url: Foundation.URL)
  final func setAllowedProtocolsToHTTPAndHTTPS()
  final func set(preferredReceiveBufferSize size: Swift.Int)
  final func set(customHeaders headers: [Swift.String])
  final func set(automaticBodyDecompression flag: Swift.Bool)
  final func set(requestMethod method: Swift.String)
  final func set(noBody flag: Swift.Bool)
  final func set(upload flag: Swift.Bool)
  final func set(requestBodyLength length: Swift.Int64)
  final func set(timeout value: Swift.Int)
}
extension _EasyHandle {
  struct _PauseState : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.Int8)
    static var receivePaused: Foundation._EasyHandle._PauseState
    static var sendPaused: Foundation._EasyHandle._PauseState
    typealias Element = Foundation._EasyHandle._PauseState
    typealias RawValue = Swift.Int8
  }
}
extension _EasyHandle {
  final func pauseReceive()
  final func unpauseReceive()
  final func pauseSend()
  final func unpauseSend()
}
extension _EasyHandle {
  final var connectFailureErrno: Swift.Int {
    final get {}
  }
}
extension _EasyHandle {
  final var redirectURL: Foundation.URL? {
    final get {}
  }
}
extension _EasyHandle {
  static func from(callbackUserData userdata: Swift.UnsafeMutableRawPointer?) -> Foundation._EasyHandle?
}
extension _EasyHandle {
  final func setupCallbacks()
  final func didReceive(data: Swift.UnsafeMutablePointer<Swift.Int8>, size: Swift.Int, nmemb: Swift.Int) -> Swift.Int
  final func didReceive(headerData data: Swift.UnsafeMutablePointer<Swift.Int8>, size: Swift.Int, nmemb: Swift.Int, fileLength: Swift.Double) -> Swift.Int
  final func fill(writeBuffer data: Swift.UnsafeMutablePointer<Swift.Int8>, size: Swift.Int, nmemb: Swift.Int) -> Swift.Int
  final func setSocketOptions(for fd: Swift.CInt) throws
  final func updateProgressMeter(with propgress: Foundation._EasyHandle._Progress)
  final func seekInputStream(offset: Swift.Int64, origin: Swift.CInt) -> Swift.CInt
}
extension _EasyHandle {
  struct _Progress {
    let totalBytesSent: <null>
    let totalBytesExpectedToSend: <null>
    let totalBytesReceived: <null>
    let totalBytesExpectedToReceive: <null>
    init(totalBytesSent: Swift.Int64, totalBytesExpectedToSend: Swift.Int64, totalBytesReceived: Swift.Int64, totalBytesExpectedToReceive: Swift.Int64)
  }
}
extension _EasyHandle {
  class _CurlStringList {
    var rawList: <null>
    init()
    init(_ strings: [Swift.String])
    @objc deinit
  }
}
extension _EasyHandle {
  final func urlErrorCode(for easyCode: CoreFoundation.CFURLSessionEasyCode) -> Swift.Int?
}
let NSPersonNameComponentSuffix: Swift.String
final class _MutablePairHandle<ImmutableType, MutableType> where ImmutableType : Foundation.NSObject, ImmutableType : NSMutableCopying, MutableType : Foundation.NSObject, MutableType : NSMutableCopying {
  final var _pointer: Foundation._MutablePair<ImmutableType, MutableType>
  init(_ immutable: ImmutableType, copying: Swift.Bool = default)
  init(_ mutable: MutableType, copying: Swift.Bool = default)
  @inline(__always) final func map<ReturnType>(_ whatToDo: (ImmutableType) throws -> ReturnType) rethrows -> ReturnType
  final var reference: ImmutableType {
    final get {}
  }
  @objc deinit
}
func NSEdgeInsetsEqual(_ aInsets: Foundation.NSEdgeInsets, _ bInsets: Foundation.NSEdgeInsets) -> Swift.Bool
func nextSessionIdentifier() -> Swift.Int32
func _CFSwiftCharacterSetHasMemberInPlane(_ cset: CoreFoundation.CFTypeRef, _ plane: Swift.UInt8) -> Swift.Bool
let enableLibcurlDebugOutput: Swift.Bool
func _NSGetSizeAndAlignment(_ type: Foundation._NSSimpleObjCType, _ size: inout Swift.Int, _ align: inout Swift.Int) -> Swift.Bool
class NSOrderedSet : Foundation.NSObject, NSCopying, NSMutableCopying, NSSecureCoding, ExpressibleByArrayLiteral {
  var _storage: <null>
  var _orderedStorage: <null>
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  override func mutableCopy() -> Any
  func mutableCopy(with zone: Foundation.NSZone? = default) -> Any
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  override func isEqual(_ object: Any?) -> Swift.Bool
  func encode(with aCoder: Foundation.NSCoder)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  var count: Swift.Int {
    get {}
  }
  func object(at idx: Swift.Int) -> Any
  func index(of object: Any) -> Swift.Int
  convenience init()
  init(objects: Swift.UnsafePointer<AnyObject>!, count cnt: Swift.Int)
  required convenience init(arrayLiteral elements: Any...)
  convenience init(objects elements: Any...)
  subscript(idx: Swift.Int) -> Any {
    get {}
  }
  func _insertObject(_ object: Any)
  func _insertObjects(_ objects: Swift.UnsafePointer<AnyObject>!, count cnt: Swift.Int)
  var allObjects: [Any] {
    get {}
  }
  @objc deinit
  typealias Element = Any
}
extension NSOrderedSet : Sequence {
  typealias Iterator = Foundation.NSEnumerator.Iterator
  func makeIterator() -> Foundation.NSOrderedSet.Iterator
  typealias SubSequence = Swift.AnySequence<Any>
}
extension NSOrderedSet {
  func getObjects(_ objects: inout [AnyObject], range: Foundation.NSRange)
  func objects(at indexes: Foundation.IndexSet) -> [Any]
  var firstObject: Any? {
    get {}
  }
  var lastObject: Any? {
    get {}
  }
  func isEqual(to other: Foundation.NSOrderedSet) -> Swift.Bool
  func contains(_ object: Any) -> Swift.Bool
  func intersects(_ other: Foundation.NSOrderedSet) -> Swift.Bool
  func intersectsSet(_ set: Swift.Set<Swift.AnyHashable>) -> Swift.Bool
  func isSubset(of other: Foundation.NSOrderedSet) -> Swift.Bool
  func isSubset(of set: Swift.Set<Swift.AnyHashable>) -> Swift.Bool
  func objectEnumerator() -> Foundation.NSEnumerator
  func reverseObjectEnumerator() -> Foundation.NSEnumerator
  var reversed: Foundation.NSOrderedSet {
    get {}
  }
  var array: [Any] {
    get {}
  }
  var set: Swift.Set<Swift.AnyHashable> {
    get {}
  }
  func enumerateObjects(_ block: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func enumerateObjects(options opts: Foundation.NSEnumerationOptions = default, using block: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func enumerateObjects(at s: Foundation.IndexSet, options opts: Foundation.NSEnumerationOptions = default, using block: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func index(ofObjectPassingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Int
  func index(_ opts: Foundation.NSEnumerationOptions = default, ofObjectPassingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Int
  func index(ofObjectAt s: Foundation.IndexSet, options opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Int
  func indexes(ofObjectsPassingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Foundation.IndexSet
  func indexes(options opts: Foundation.NSEnumerationOptions = default, ofObjectsPassingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Foundation.IndexSet
  func indexes(ofObjectsAt s: Foundation.IndexSet, options opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Foundation.IndexSet
  func index(of object: Any, inSortedRange range: Foundation.NSRange, options opts: Foundation.NSBinarySearchingOptions = default, usingComparator cmp: (Any, Any) -> Foundation.ComparisonResult) -> Swift.Int
  func sortedArray(comparator cmptr: (Any, Any) -> Foundation.ComparisonResult) -> [Any]
  func sortedArray(options opts: Foundation.NSSortOptions = default, usingComparator cmptr: (Any, Any) -> Foundation.ComparisonResult) -> [Any]
  func description(withLocale locale: Foundation.Locale?) -> Swift.String
  func description(withLocale locale: Foundation.Locale?, indent level: Swift.Int) -> Swift.String
}
extension NSOrderedSet {
  convenience init(object: Any)
  convenience init(orderedSet set: Foundation.NSOrderedSet)
  convenience init(orderedSet set: Foundation.NSOrderedSet, copyItems flag: Swift.Bool)
  convenience init(orderedSet set: Foundation.NSOrderedSet, range: Foundation.NSRange, copyItems flag: Swift.Bool)
  convenience init(array: [Any])
  convenience init(array set: [Any], copyItems flag: Swift.Bool)
  convenience init(array set: [Any], range: Foundation.NSRange, copyItems flag: Swift.Bool)
  convenience init(set: Swift.Set<Swift.AnyHashable>)
  convenience init(set: Swift.Set<Swift.AnyHashable>, copyItems flag: Swift.Bool)
}
extension NSOrderedSet {
  func filtered(using predicate: Foundation.NSPredicate) -> Foundation.NSOrderedSet
}
extension NSOrderedSet {
  func sortedArrayUsingDescriptors(_ sortDescriptors: [Foundation.SortDescriptor]) -> [AnyObject]
}
class NSUUID : Foundation.NSObject, NSCopying, NSSecureCoding, NSCoding {
  var buffer: Swift.UnsafeMutablePointer<Swift.UInt8>
  @objc deinit
  init()
  convenience init?(uuidString string: Swift.String)
  init(uuidBytes bytes: Swift.UnsafePointer<Swift.UInt8>)
  func getBytes(_ uuid: Swift.UnsafeMutablePointer<Swift.UInt8>)
  var uuidString: Swift.String {
    get {}
  }
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  required convenience init?(coder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  override func isEqual(_ value: Any?) -> Swift.Bool
  override var hash: Swift.Int {
    override get {}
  }
  override var description: Swift.String {
    override get {}
  }
}
extension NSUUID : _StructTypeBridgeable {
  typealias _StructType = Foundation.UUID
  func _bridgeToSwift() -> Foundation.UUID
}
extension NSUUID : _HasCustomAnyHashableRepresentation {
  @nonobjc func _toCustomAnyHashable() -> Swift.AnyHashable?
}
class Process : Foundation.NSObject {
  static func setup()
  init()
  var launchPath: <null>
  var arguments: <null>
  var environment: <null>
  var currentDirectoryPath: <null>
  var standardInput: Any? {
    final willSet(newValue) {}
  }
  var standardOutput: Any? {
    final willSet(newValue) {}
  }
  var standardError: Any? {
    final willSet(newValue) {}
  }
  var runLoopSourceContext: <null>
  var runLoopSource: <null>
  weak var runLoop: <null>
  var processLaunchedCondition: Foundation.NSCondition
  func launch()
  func interrupt()
  func terminate()
  func suspend() -> Swift.Bool
  func resume() -> Swift.Bool
  var processIdentifier: <null>
  var isRunning: <null>
  var terminationStatus: <null>
  var terminationReason: Foundation.Process.TerminationReason {
    get {}
  }
  var terminationHandler: <null>
  var qualityOfService: <null>
  @objc deinit
}
extension Process {
  enum TerminationReason : Swift.Int {
    case exit
    case uncaughtSignal
    typealias RawValue = Swift.Int
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.Int)
    var rawValue: Swift.Int {
      get {}
    }
  }
}
extension Process {
  class func launchedProcess(launchPath path: Swift.String, arguments: [Swift.String]) -> Foundation.Process
  func waitUntilExit()
}
extension Process {
  static var didTerminateNotification: Foundation.NSNotification.Name
}
func runLoopSourceRelease(_ pointer: Swift.UnsafeRawPointer?)
func tan(_ x: Foundation.CGFloat) -> Foundation.CGFloat
var NSXPCConnectionInvalid: Swift.Int {
  get {}
}
func _CFSwiftDictionaryGetCountOfValue(_ dictionary: AnyObject, value: AnyObject) -> CoreFoundation.CFIndex
@available(*, unavailable, renamed: "String.Encoding.windowsCP1253") var NSWindowsCP1253StringEncoding: Swift.String.Encoding {
  get {}
}
class NSKeyedUnarchiver : Foundation.NSCoder {
  struct UnarchiverFlags : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var None: Foundation.NSKeyedUnarchiver.UnarchiverFlags
    static var FinishedDecoding: Foundation.NSKeyedUnarchiver.UnarchiverFlags
    static var RequiresSecureCoding: Foundation.NSKeyedUnarchiver.UnarchiverFlags
    typealias Element = Foundation.NSKeyedUnarchiver.UnarchiverFlags
    typealias RawValue = Swift.UInt
  }
  class DecodingContext {
    var dict: <null>
    var genericKey: <null>
    init(_ dict: [Swift.String : Any])
    @objc deinit
  }
  static var _classNameMap: <null>
  static var _classNameMapLock: Foundation.NSLock
  weak var delegate: <null>
  enum Stream {
    case data(Foundation.Data)
    case stream(CoreFoundation.CFReadStream)
  }
  var _stream: <null>
  var _flags: Foundation.NSKeyedUnarchiver.UnarchiverFlags
  var _containers: <null>
  var _objects: <null>
  var _objRefMap: <null>
  var _replacementMap: <null>
  var _classNameMap: <null>
  var _classes: <null>
  var _cache: <null>
  var _allowedClasses: <null>
  var _error: <null>
  override var error: Error? {
    override get {}
  }
  class func unarchiveObject(with data: Foundation.Data) -> Any?
  class func unarchiveObject(withFile path: Swift.String) -> Any?
  convenience init(forReadingWithData data: Foundation.Data)
  init(stream: Foundation.NSKeyedUnarchiver.Stream)
  func _readPropertyList() throws
  func _pushDecodingContext(_ decodingContext: Foundation.NSKeyedUnarchiver.DecodingContext)
  func _popDecodingContext()
  var _currentDecodingContext: Foundation.NSKeyedUnarchiver.DecodingContext {
    get {}
  }
  func _nextGenericKey() -> Swift.String
  func _objectInCurrentDecodingContext<T>(forKey key: Swift.String?) -> T?
  func _dereferenceObjectReference(_ unwrappedObjectRef: Foundation._NSKeyedArchiverUID) -> Any?
  override var systemVersion: Swift.UInt32 {
    override get {}
  }
  override var allowsKeyedCoding: Swift.Bool {
    override get {}
  }
  func _validateStillDecoding() -> Swift.Bool
  static func _supportsSecureCoding(_ clsv: Swift.AnyClass) -> Swift.Bool
  static func _classIsKindOfClass(_ assertedClass: Swift.AnyClass, _ allowedClass: Swift.AnyClass) -> Swift.Bool
  func _isClassAllowed(_ assertedClass: Swift.AnyClass?, allowedClasses: [Swift.AnyClass]?) -> Swift.Bool
  func _validateAndMapClassDictionary(_ classDict: [Swift.String : Any]?, allowedClasses: [Swift.AnyClass]?, classToConstruct: inout Swift.AnyClass?) -> Swift.Bool
  func _validateAndMapClassReference(_ classReference: Foundation._NSKeyedArchiverUID, allowedClasses: [Swift.AnyClass]?) throws -> Swift.AnyClass?
  func _cachedObjectForReference(_ objectRef: Foundation._NSKeyedArchiverUID) -> Any?
  func _cacheObject(_ object: Any, forReference objectRef: Foundation._NSKeyedArchiverUID)
  func _isContainer(_ object: Any) -> Swift.Bool
  func replaceObject(_ object: Any, withObject replacement: Any)
  func _decodingError(_ code: Foundation.CocoaError.Code, withDescription description: Swift.String) -> Foundation.NSError
  func _replacementObject(_ decodedObject: Any?) -> Any?
  func _validateClassSupportsSecureCoding(_ classToConstruct: Swift.AnyClass?) -> Swift.Bool
  func _decodeObject(_ objectRef: Any) throws -> Any?
  func _decodeObject(forKey key: Swift.String?) throws -> Any?
  func _decodeValue<T>(forKey key: Swift.String? = default) -> T?
  func _decodeArrayOfObjectsForKey(_ key: Swift.String, withBlock block: (Any) -> Swift.Void) throws
  override func _decodeArrayOfObjectsForKey(_ key: Swift.String) -> [Any]
  func finishDecoding()
  class func setClass(_ cls: Swift.AnyClass?, forClassName codedName: Swift.String)
  func setClass(_ cls: Swift.AnyClass?, forClassName codedName: Swift.String)
  class func `class`(forClassName codedName: Swift.String) -> Swift.AnyClass?
  func `class`(forClassName codedName: Swift.String) -> Swift.AnyClass?
  override func containsValue(forKey key: Swift.String) -> Swift.Bool
  override func decodeObject(forKey key: Swift.String) -> Any?
  func _decodeObject(of classes: [Swift.AnyClass]?, forKey key: Swift.String? = default) -> Any?
  override func decodeObject<DecodedObjectType>(of cls: DecodedObjectType.Type, forKey key: Swift.String) -> DecodedObjectType? where DecodedObjectType : Foundation.NSObject, DecodedObjectType : NSCoding
  override func decodeObject(of classes: [Swift.AnyClass]?, forKey key: Swift.String) -> Any?
  override func decodeTopLevelObject(forKey key: Swift.String) throws -> Any?
  override func decodeTopLevelObject<DecodedObjectType>(of cls: DecodedObjectType.Type, forKey key: Swift.String) throws -> DecodedObjectType? where DecodedObjectType : Foundation.NSObject, DecodedObjectType : NSCoding
  override func decodeTopLevelObject(of classes: [Swift.AnyClass], forKey key: Swift.String) throws -> Any?
  override func decodeObject() -> Any?
  override func decodePropertyList() -> Any?
  override func decodePropertyListForKey(_ key: Swift.String) -> Any?
  override func _decodePropertyListForKey(_ key: Swift.String) -> Any
  override func decodeBool(forKey key: Swift.String) -> Swift.Bool
  override func decodeInt32(forKey key: Swift.String) -> Swift.Int32
  override func decodeInt64(forKey key: Swift.String) -> Swift.Int64
  override func decodeFloat(forKey key: Swift.String) -> Swift.Float
  override func decodeDouble(forKey key: Swift.String) -> Swift.Double
  override func decodeInteger(forKey key: Swift.String) -> Swift.Int
  override func withDecodedUnsafeBufferPointer<ResultType>(forKey key: Swift.String, body: (Swift.UnsafeBufferPointer<Swift.UInt8>?) throws -> ResultType) rethrows -> ResultType
  override func decodeData() -> Foundation.Data?
  func _decodeValueOfObjCType(_ type: Foundation._NSSimpleObjCType, at addr: Swift.UnsafeMutableRawPointer)
  override func decodeValue(ofObjCType typep: Swift.UnsafePointer<Swift.Int8>, at addr: Swift.UnsafeMutableRawPointer)
  override var allowedClasses: [Swift.AnyClass]? {
    override get {}
  }
  override var requiresSecureCoding: Swift.Bool {
    override get {}
    set(newValue) {}
  }
  override var decodingFailurePolicy: Foundation.NSCoder.DecodingFailurePolicy {
    override get {}
    set(newValue) {}
  }
  class func unarchiveTopLevelObjectWithData(_ data: Foundation.Data) throws -> Any?
  @objc deinit
  init()
}
class ByteCountFormatter : Foundation.Formatter {
  init()
  required init?(coder: Foundation.NSCoder)
  class func string(fromByteCount byteCount: Swift.Int64, countStyle: Foundation.ByteCountFormatter.CountStyle) -> Swift.String
  func string(fromByteCount byteCount: Swift.Int64) -> Swift.String
  var allowedUnits: <null>
  var countStyle: <null>
  var allowsNonnumericFormatting: <null>
  var includesUnit: <null>
  var includesCount: <null>
  var includesActualByteCount: <null>
  var isAdaptive: <null>
  var zeroPadsFractionDigits: <null>
  var formattingContext: <null>
  @objc deinit
}
extension ByteCountFormatter {
  struct Units : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var useDefault: Foundation.ByteCountFormatter.Units
    static var useBytes: Foundation.ByteCountFormatter.Units
    static var useKB: Foundation.ByteCountFormatter.Units
    static var useMB: Foundation.ByteCountFormatter.Units
    static var useGB: Foundation.ByteCountFormatter.Units
    static var useTB: Foundation.ByteCountFormatter.Units
    static var usePB: Foundation.ByteCountFormatter.Units
    static var useEB: Foundation.ByteCountFormatter.Units
    static var useZB: Foundation.ByteCountFormatter.Units
    static var useYBOrHigher: Foundation.ByteCountFormatter.Units
    static var useAll: Foundation.ByteCountFormatter.Units
    typealias Element = Foundation.ByteCountFormatter.Units
    typealias RawValue = Swift.UInt
  }
  enum CountStyle : Swift.Int {
    case file
    case memory
    case decimal
    case binary
    typealias RawValue = Swift.Int
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.Int)
    var rawValue: Swift.Int {
      get {}
    }
  }
}
let NSURLErrorDomain: Swift.String
var NSURLErrorUserCancelledAuthentication: Swift.Int {
  get {}
}
let NSPersonNameComponentPrefix: Swift.String
func NSIsEmptyRect(_ aRect: Foundation.NSRect) -> Swift.Bool
var NSURLErrorDownloadDecodingFailedMidStream: Swift.Int {
  get {}
}
func UTF8STRING(_ bytes: Swift.UnsafePointer<Swift.UInt8>?) -> Swift.String?
func NSStringFromClass(_ aClass: Swift.AnyClass) -> Swift.String
var NSFileWriteUnknownError: Swift.Int {
  get {}
}
struct NSEdgeInsets {
  var top: <null>
  var left: <null>
  var bottom: <null>
  var right: <null>
  init()
  init(top: Foundation.CGFloat, left: Foundation.CGFloat, bottom: Foundation.CGFloat, right: Foundation.CGFloat)
}
extension NSEdgeInsets : NSSpecialValueCoding {
  init(bytes: Swift.UnsafeRawPointer)
  init?(coder aDecoder: Foundation.NSCoder)
  func encodeWithCoder(_ aCoder: Foundation.NSCoder)
  static func objCType() -> Swift.String
  func getValue(_ value: Swift.UnsafeMutableRawPointer)
  func isEqual(_ aValue: Any) -> Swift.Bool
  var hash: Swift.Int {
    get {}
  }
  var description: Swift.String? {
    get {}
  }
}
class NSComparisonPredicate : Foundation.NSPredicate {
  init(leftExpression lhs: Foundation.NSExpression, rightExpression rhs: Foundation.NSExpression, modifier: Foundation.NSComparisonPredicate.Modifier, type: Foundation.NSComparisonPredicate.Operator, options: Foundation.NSComparisonPredicate.Options)
  required init?(coder: Foundation.NSCoder)
  var predicateOperatorType: Foundation.NSComparisonPredicate.Operator {
    get {}
  }
  var comparisonPredicateModifier: Foundation.NSComparisonPredicate.Modifier {
    get {}
  }
  var leftExpression: Foundation.NSExpression {
    get {}
  }
  var rightExpression: Foundation.NSExpression {
    get {}
  }
  var options: Foundation.NSComparisonPredicate.Options {
    get {}
  }
  @objc deinit
  init(format predicateFormat: Swift.String, argumentArray arguments: [Any]?)
  init(format predicateFormat: Swift.String, arguments argList: Swift.CVaListPointer)
  init?(fromMetadataQueryString queryString: Swift.String)
  init(value: Swift.Bool)
  init(block: @escaping (Any?, [Swift.String : Any]?) -> Swift.Bool)
}
extension NSComparisonPredicate {
  struct Options : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var caseInsensitive: Foundation.NSComparisonPredicate.Options
    static var diacriticInsensitive: Foundation.NSComparisonPredicate.Options
    static var normalized: Foundation.NSComparisonPredicate.Options
    typealias Element = Foundation.NSComparisonPredicate.Options
    typealias RawValue = Swift.UInt
  }
  enum Modifier : Swift.UInt {
    case direct
    case all
    case any
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
  enum Operator : Swift.UInt {
    case lessThan
    case lessThanOrEqualTo
    case greaterThan
    case greaterThanOrEqualTo
    case equalTo
    case notEqualTo
    case matches
    case like
    case beginsWith
    case endsWith
    case `in`
    case contains
    case between
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
func _CFSwiftSetGetValueIfPresent(_ set: AnyObject, object: AnyObject, value: Swift.UnsafeMutablePointer<Swift.Unmanaged<AnyObject>?>?) -> Swift.Bool
class RunLoop : Foundation.NSObject {
  var _cfRunLoop: <null>
  static var _mainRunLoop: <null>
  init(cfObject: CoreFoundation.CFRunLoop)
  class var current: Foundation.RunLoop {
    get {}
  }
  class var main: Foundation.RunLoop {
    get {}
  }
  var currentMode: Foundation.RunLoopMode? {
    get {}
  }
  func getCFRunLoop() -> CoreFoundation.CFRunLoop
  func add(_ timer: Foundation.Timer, forMode mode: Foundation.RunLoopMode)
  func add(_ aPort: Foundation.Port, forMode mode: Foundation.RunLoopMode)
  func remove(_ aPort: Foundation.Port, forMode mode: Foundation.RunLoopMode)
  func limitDate(forMode mode: Foundation.RunLoopMode) -> Foundation.Date?
  func acceptInput(forMode mode: Swift.String, before limitDate: Foundation.Date)
  @objc deinit
  init()
}
extension RunLoop {
  func run()
  func run(until limitDate: Foundation.Date)
  func run(mode: Foundation.RunLoopMode, before limitDate: Foundation.Date) -> Swift.Bool
  func perform(inModes modes: [Foundation.RunLoopMode], block: @escaping () -> Swift.Void)
  func perform(_ block: @escaping () -> Swift.Void)
}
struct POSIXError : _BridgedStoredNSError {
  let _nsError: <null>
  init(_nsError error: Foundation.NSError)
  static var _nsErrorDomain: Swift.String {
    get {}
  }
  enum Code : Swift.Int, _ErrorCodeProtocol {
    typealias _ErrorType = Foundation.POSIXError
    case EPERM
    case ENOENT
    case ESRCH
    case EINTR
    case EIO
    case ENXIO
    case E2BIG
    case ENOEXEC
    case EBADF
    case ECHILD
    case EDEADLK
    case ENOMEM
    case EACCES
    case EFAULT
    case ENOTBLK
    case EBUSY
    case EEXIST
    case EXDEV
    case ENODEV
    case ENOTDIR
    case EISDIR
    case EINVAL
    case ENFILE
    case EMFILE
    case ENOTTY
    case ETXTBSY
    case EFBIG
    case ENOSPC
    case ESPIPE
    case EROFS
    case EMLINK
    case EPIPE
    case EDOM
    case ERANGE
    case EAGAIN
    case EWOULDBLOCK
    case EINPROGRESS
    case EALREADY
    case ENOTSOCK
    case EDESTADDRREQ
    case EMSGSIZE
    case EPROTOTYPE
    case ENOPROTOOPT
    case EPROTONOSUPPORT
    case ESOCKTNOSUPPORT
    case ENOTSUP
    case EPFNOSUPPORT
    case EAFNOSUPPORT
    case EADDRINUSE
    case EADDRNOTAVAIL
    case ENETDOWN
    case ENETUNREACH
    case ENETRESET
    case ECONNABORTED
    case ECONNRESET
    case ENOBUFS
    case EISCONN
    case ENOTCONN
    case ESHUTDOWN
    case ETOOMANYREFS
    case ETIMEDOUT
    case ECONNREFUSED
    case ELOOP
    case ENAMETOOLONG
    case EHOSTDOWN
    case EHOSTUNREACH
    case ENOTEMPTY
    case EPROCLIM
    case EUSERS
    case EDQUOT
    case ESTALE
    case EREMOTE
    case EBADRPC
    case ERPCMISMATCH
    case EPROGUNAVAIL
    case EPROGMISMATCH
    case EPROCUNAVAIL
    case ENOLCK
    case ENOSYS
    case EFTYPE
    case EAUTH
    case ENEEDAUTH
    case EPWROFF
    case EDEVERR
    case EOVERFLOW
    case EBADEXEC
    case EBADARCH
    case ESHLIBVERS
    case EBADMACHO
    case ECANCELED
    case EIDRM
    case ENOMSG
    case EILSEQ
    case ENOATTR
    case EBADMSG
    case EMULTIHOP
    case ENODATA
    case ENOLINK
    case ENOSR
    case ENOSTR
    case EPROTO
    case ETIME
    case ENOPOLICY
    case ENOTRECOVERABLE
    case EOWNERDEAD
    case EQFULL
    typealias RawValue = Swift.Int
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.Int)
    var rawValue: Swift.Int {
      get {}
    }
  }
}
extension POSIXError {
  static var EPERM: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOENT: Foundation.POSIXError.Code {
    get {}
  }
  static var ESRCH: Foundation.POSIXError.Code {
    get {}
  }
  static var EINTR: Foundation.POSIXError.Code {
    get {}
  }
  static var EIO: Foundation.POSIXError.Code {
    get {}
  }
  static var ENXIO: Foundation.POSIXError.Code {
    get {}
  }
  static var E2BIG: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOEXEC: Foundation.POSIXError.Code {
    get {}
  }
  static var EBADF: Foundation.POSIXError.Code {
    get {}
  }
  static var ECHILD: Foundation.POSIXError.Code {
    get {}
  }
  static var EDEADLK: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOMEM: Foundation.POSIXError.Code {
    get {}
  }
  static var EACCES: Foundation.POSIXError.Code {
    get {}
  }
  static var EFAULT: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOTBLK: Foundation.POSIXError.Code {
    get {}
  }
  static var EBUSY: Foundation.POSIXError.Code {
    get {}
  }
  static var EEXIST: Foundation.POSIXError.Code {
    get {}
  }
  static var EXDEV: Foundation.POSIXError.Code {
    get {}
  }
  static var ENODEV: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOTDIR: Foundation.POSIXError.Code {
    get {}
  }
  static var EISDIR: Foundation.POSIXError.Code {
    get {}
  }
  static var EINVAL: Foundation.POSIXError.Code {
    get {}
  }
  static var ENFILE: Foundation.POSIXError.Code {
    get {}
  }
  static var EMFILE: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOTTY: Foundation.POSIXError.Code {
    get {}
  }
  static var ETXTBSY: Foundation.POSIXError.Code {
    get {}
  }
  static var EFBIG: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOSPC: Foundation.POSIXError.Code {
    get {}
  }
  static var ESPIPE: Foundation.POSIXError.Code {
    get {}
  }
  static var EROFS: Foundation.POSIXError.Code {
    get {}
  }
  static var EMLINK: Foundation.POSIXError.Code {
    get {}
  }
  static var EPIPE: Foundation.POSIXError.Code {
    get {}
  }
  static var EDOM: Foundation.POSIXError.Code {
    get {}
  }
  static var ERANGE: Foundation.POSIXError.Code {
    get {}
  }
  static var EAGAIN: Foundation.POSIXError.Code {
    get {}
  }
  static var EWOULDBLOCK: Foundation.POSIXError.Code {
    get {}
  }
  static var EINPROGRESS: Foundation.POSIXError.Code {
    get {}
  }
  static var EALREADY: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOTSOCK: Foundation.POSIXError.Code {
    get {}
  }
  static var EDESTADDRREQ: Foundation.POSIXError.Code {
    get {}
  }
  static var EMSGSIZE: Foundation.POSIXError.Code {
    get {}
  }
  static var EPROTOTYPE: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOPROTOOPT: Foundation.POSIXError.Code {
    get {}
  }
  static var EPROTONOSUPPORT: Foundation.POSIXError.Code {
    get {}
  }
  static var ESOCKTNOSUPPORT: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOTSUP: Foundation.POSIXError.Code {
    get {}
  }
  static var EPFNOSUPPORT: Foundation.POSIXError.Code {
    get {}
  }
  static var EAFNOSUPPORT: Foundation.POSIXError.Code {
    get {}
  }
  static var EADDRINUSE: Foundation.POSIXError.Code {
    get {}
  }
  static var EADDRNOTAVAIL: Foundation.POSIXError.Code {
    get {}
  }
  static var ENETDOWN: Foundation.POSIXError.Code {
    get {}
  }
  static var ENETUNREACH: Foundation.POSIXError.Code {
    get {}
  }
  static var ENETRESET: Foundation.POSIXError.Code {
    get {}
  }
  static var ECONNABORTED: Foundation.POSIXError.Code {
    get {}
  }
  static var ECONNRESET: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOBUFS: Foundation.POSIXError.Code {
    get {}
  }
  static var EISCONN: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOTCONN: Foundation.POSIXError.Code {
    get {}
  }
  static var ESHUTDOWN: Foundation.POSIXError.Code {
    get {}
  }
  static var ETOOMANYREFS: Foundation.POSIXError.Code {
    get {}
  }
  static var ETIMEDOUT: Foundation.POSIXError.Code {
    get {}
  }
  static var ECONNREFUSED: Foundation.POSIXError.Code {
    get {}
  }
  static var ELOOP: Foundation.POSIXError.Code {
    get {}
  }
  static var ENAMETOOLONG: Foundation.POSIXError.Code {
    get {}
  }
  static var EHOSTDOWN: Foundation.POSIXError.Code {
    get {}
  }
  static var EHOSTUNREACH: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOTEMPTY: Foundation.POSIXError.Code {
    get {}
  }
  static var EPROCLIM: Foundation.POSIXError.Code {
    get {}
  }
  static var EUSERS: Foundation.POSIXError.Code {
    get {}
  }
  static var EDQUOT: Foundation.POSIXError.Code {
    get {}
  }
  static var ESTALE: Foundation.POSIXError.Code {
    get {}
  }
  static var EREMOTE: Foundation.POSIXError.Code {
    get {}
  }
  static var EBADRPC: Foundation.POSIXError.Code {
    get {}
  }
  static var ERPCMISMATCH: Foundation.POSIXError.Code {
    get {}
  }
  static var EPROGUNAVAIL: Foundation.POSIXError.Code {
    get {}
  }
  static var EPROGMISMATCH: Foundation.POSIXError.Code {
    get {}
  }
  static var EPROCUNAVAIL: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOLCK: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOSYS: Foundation.POSIXError.Code {
    get {}
  }
  static var EFTYPE: Foundation.POSIXError.Code {
    get {}
  }
  static var EAUTH: Foundation.POSIXError.Code {
    get {}
  }
  static var ENEEDAUTH: Foundation.POSIXError.Code {
    get {}
  }
  static var EPWROFF: Foundation.POSIXError.Code {
    get {}
  }
  static var EDEVERR: Foundation.POSIXError.Code {
    get {}
  }
  static var EOVERFLOW: Foundation.POSIXError.Code {
    get {}
  }
  static var EBADEXEC: Foundation.POSIXError.Code {
    get {}
  }
  static var EBADARCH: Foundation.POSIXError.Code {
    get {}
  }
  static var ESHLIBVERS: Foundation.POSIXError.Code {
    get {}
  }
  static var EBADMACHO: Foundation.POSIXError.Code {
    get {}
  }
  static var ECANCELED: Foundation.POSIXError.Code {
    get {}
  }
  static var EIDRM: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOMSG: Foundation.POSIXError.Code {
    get {}
  }
  static var EILSEQ: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOATTR: Foundation.POSIXError.Code {
    get {}
  }
  static var EBADMSG: Foundation.POSIXError.Code {
    get {}
  }
  static var EMULTIHOP: Foundation.POSIXError.Code {
    get {}
  }
  static var ENODATA: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOLINK: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOSR: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOSTR: Foundation.POSIXError.Code {
    get {}
  }
  static var EPROTO: Foundation.POSIXError.Code {
    get {}
  }
  static var ETIME: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOPOLICY: Foundation.POSIXError.Code {
    get {}
  }
  static var ENOTRECOVERABLE: Foundation.POSIXError.Code {
    get {}
  }
  static var EOWNERDEAD: Foundation.POSIXError.Code {
    get {}
  }
  static var EQFULL: Foundation.POSIXError.Code {
    get {}
  }
}
func _NSXMLParserProcessingInstruction(_ ctx: CoreFoundation._CFXMLInterface, target: Swift.UnsafePointer<Swift.UInt8>, data: Swift.UnsafePointer<Swift.UInt8>)
func NSClassFromString(_ aClassName: Swift.String) -> Swift.AnyClass?
var NSUserCancelledError: Swift.Int {
  get {}
}
var NSURLErrorClientCertificateRejected: Swift.Int {
  get {}
}
var NSURLErrorFileDoesNotExist: Swift.Int {
  get {}
}
let NSCocoaErrorDomain: Swift.String
let NSStreamSocketSSLErrorDomain: Swift.String
func _NSCleanupTemporaryFile(_ auxFilePath: Swift.String, _ filePath: Swift.String) throws
struct CGPoint {
  var x: <null>
  var y: <null>
  init()
  init(x: Foundation.CGFloat, y: Foundation.CGFloat)
}
extension CGPoint : Equatable {
}
extension CGPoint : NSSpecialValueCoding {
  init(bytes: Swift.UnsafeRawPointer)
  init?(coder aDecoder: Foundation.NSCoder)
  func encodeWithCoder(_ aCoder: Foundation.NSCoder)
  static func objCType() -> Swift.String
  func getValue(_ value: Swift.UnsafeMutableRawPointer)
  func isEqual(_ aValue: Any) -> Swift.Bool
  var hash: Swift.Int {
    get {}
  }
  var description: Swift.String? {
    get {}
  }
}
struct _NSRange {
  var location: <null>
  var length: <null>
  init()
  init(location: Swift.Int, length: Swift.Int)
  init(_ range: CoreFoundation.CFRange)
}
extension _NSRange {
  init(_ x: Swift.Range<Swift.Int>)
  func toRange() -> Swift.Range<Swift.Int>?
  func toCountableRange() -> Swift.CountableRange<Swift.Int>?
}
extension _NSRange : NSSpecialValueCoding {
  init(bytes: Swift.UnsafeRawPointer)
  init?(coder aDecoder: Foundation.NSCoder)
  func encodeWithCoder(_ aCoder: Foundation.NSCoder)
  static func objCType() -> Swift.String
  func getValue(_ value: Swift.UnsafeMutableRawPointer)
  func isEqual(_ aValue: Any) -> Swift.Bool
  var hash: Swift.Int {
    get {}
  }
  var description: Swift.String? {
    get {}
  }
}
@available(*, unavailable, renamed: "String.Encoding.isoLatin1") var NSISOLatin1StringEncoding: Swift.String.Encoding {
  get {}
}
func getString(from obj: Any) -> Swift.String
var NSFileNoSuchFileError: Swift.Int {
  get {}
}
class Host : Foundation.NSObject {
  enum ResolveType {
    case name
    case address
    case current
    infix static func ==(a: Foundation.Host.ResolveType, b: Foundation.Host.ResolveType) -> Swift.Bool
    var hashValue: Swift.Int {
      get {}
    }
  }
  var _info: <null>
  var _type: <null>
  var _resolved: Swift.Bool
  var _names: [Swift.String]
  var _addresses: [Swift.String]
  static var _current: Foundation.Host
  init(_ info: Swift.String?, _ type: Foundation.Host.ResolveType)
  static func currentHostName() -> Swift.String
  class func current() -> Foundation.Host
  convenience init(name: Swift.String?)
  convenience init(address: Swift.String)
  func isEqual(to aHost: Foundation.Host) -> Swift.Bool
  func _resolveCurrent()
  func _resolve()
  var name: Swift.String? {
    get {}
  }
  var names: [Swift.String] {
    get {}
  }
  var address: Swift.String? {
    get {}
  }
  var addresses: [Swift.String] {
    get {}
  }
  var localizedName: Swift.String? {
    get {}
  }
  @objc deinit
  init()
}
protocol _NSBridgeable {
  associatedtype NSType
  var _nsObject: Self.NSType { get }
}
func NSSizeToCGSize(_ nssize: Foundation.NSSize) -> Foundation.CGSize
func modf(_ x: Foundation.CGFloat) -> (Foundation.CGFloat, Foundation.CGFloat)
enum _NSSimpleObjCType : Swift.UnicodeScalar {
  case ID
  case Class
  case Sel
  case Char
  case UChar
  case Short
  case UShort
  case Int
  case UInt
  case Long
  case ULong
  case LongLong
  case ULongLong
  case Float
  case Double
  case Bitfield
  case Bool
  case Void
  case Undef
  case Ptr
  case CharPtr
  case Atom
  case ArrayBegin
  case ArrayEnd
  case UnionBegin
  case UnionEnd
  case StructBegin
  case StructEnd
  case Vector
  case Const
  typealias RawValue = Swift.UnicodeScalar
  var hashValue: Swift.Int {
    get {}
  }
  init?(rawValue: Swift.UnicodeScalar)
  var rawValue: Swift.UnicodeScalar {
    get {}
  }
}
extension _NSSimpleObjCType {
  init?(_ v: Swift.UInt8)
  init?(_ v: Swift.String?)
}
func escapeArchiverKey(_ key: Swift.String) -> Swift.String
class UnitTemperature : Foundation.Dimension {
  struct Symbol {
    static var kelvin: Swift.String
    static var celsius: Swift.String
    static var fahrenheit: Swift.String
    init()
  }
  struct Coefficient {
    static var kelvin: Swift.Double
    static var celsius: Swift.Double
    static var fahrenheit: Swift.Double
    init()
  }
  struct Constant {
    static var kelvin: Swift.Double
    static var celsius: Swift.Double
    static var fahrenheit: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double, constant: Swift.Double)
  class var kelvin: Foundation.UnitTemperature {
    get {}
  }
  class var celsius: Foundation.UnitTemperature {
    get {}
  }
  class var fahrenheit: Foundation.UnitTemperature {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitTemperature
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
@available(*, unavailable, message: "use the floatingPointClass property.") func fpclassify(_ x: Foundation.CGFloat) -> Swift.Int
struct Calendar : Hashable, Equatable, ReferenceConvertible, _MutableBoxing {
  typealias ReferenceType = Foundation.NSCalendar
  var _autoupdating: <null>
  var _handle: <null>
  enum Identifier {
    case gregorian
    case buddhist
    case chinese
    case coptic
    case ethiopicAmeteMihret
    case ethiopicAmeteAlem
    case hebrew
    case iso8601
    case indian
    case islamic
    case islamicCivil
    case japanese
    case persian
    case republicOfChina
    case islamicTabular
    case islamicUmmAlQura
    infix static func ==(a: Foundation.Calendar.Identifier, b: Foundation.Calendar.Identifier) -> Swift.Bool
    var hashValue: Swift.Int {
      get {}
    }
  }
  enum Component {
    case era
    case year
    case month
    case day
    case hour
    case minute
    case second
    case weekday
    case weekdayOrdinal
    case quarter
    case weekOfMonth
    case weekOfYear
    case yearForWeekOfYear
    case nanosecond
    case calendar
    case timeZone
    infix static func ==(a: Foundation.Calendar.Component, b: Foundation.Calendar.Component) -> Swift.Bool
    var hashValue: Swift.Int {
      get {}
    }
  }
  static var current: Foundation.Calendar {
    get {}
  }
  static var autoupdatingCurrent: Foundation.Calendar {
    get {}
  }
  init(identifier: Foundation.Calendar.Identifier)
  init(reference: Foundation.NSCalendar)
  init(adoptingReference reference: Foundation.NSCalendar, autoupdating: Swift.Bool)
  var identifier: Foundation.Calendar.Identifier {
    get {}
  }
  var locale: Foundation.Locale? {
    get {}
    set(newValue) {}
  }
  var timeZone: Foundation.TimeZone {
    get {}
    set(newValue) {}
  }
  var firstWeekday: Swift.Int {
    get {}
    set(newValue) {}
  }
  var minimumDaysInFirstWeek: Swift.Int {
    get {}
    set(newValue) {}
  }
  var eraSymbols: [Swift.String] {
    get {}
  }
  var longEraSymbols: [Swift.String] {
    get {}
  }
  var monthSymbols: [Swift.String] {
    get {}
  }
  var shortMonthSymbols: [Swift.String] {
    get {}
  }
  var veryShortMonthSymbols: [Swift.String] {
    get {}
  }
  var standaloneMonthSymbols: [Swift.String] {
    get {}
  }
  var shortStandaloneMonthSymbols: [Swift.String] {
    get {}
  }
  var veryShortStandaloneMonthSymbols: [Swift.String] {
    get {}
  }
  var weekdaySymbols: [Swift.String] {
    get {}
  }
  var shortWeekdaySymbols: [Swift.String] {
    get {}
  }
  var veryShortWeekdaySymbols: [Swift.String] {
    get {}
  }
  var standaloneWeekdaySymbols: [Swift.String] {
    get {}
  }
  var shortStandaloneWeekdaySymbols: [Swift.String] {
    get {}
  }
  var veryShortStandaloneWeekdaySymbols: [Swift.String] {
    get {}
  }
  var quarterSymbols: [Swift.String] {
    get {}
  }
  var shortQuarterSymbols: [Swift.String] {
    get {}
  }
  var standaloneQuarterSymbols: [Swift.String] {
    get {}
  }
  var shortStandaloneQuarterSymbols: [Swift.String] {
    get {}
  }
  var amSymbol: Swift.String {
    get {}
  }
  var pmSymbol: Swift.String {
    get {}
  }
  func minimumRange(of component: Foundation.Calendar.Component) -> Swift.Range<Swift.Int>?
  func maximumRange(of component: Foundation.Calendar.Component) -> Swift.Range<Swift.Int>?
  @available(*, unavailable, message: "use range(of:in:for:) instead") func range(of smaller: Foundation.NSCalendar.Unit, in larger: Foundation.NSCalendar.Unit, for date: Foundation.Date) -> Foundation.NSRange
  func range(of smaller: Foundation.Calendar.Component, in larger: Foundation.Calendar.Component, for date: Foundation.Date) -> Swift.Range<Swift.Int>?
  func dateInterval(of component: Foundation.Calendar.Component, start: inout Foundation.Date, interval: inout Foundation.TimeInterval, for date: Foundation.Date) -> Swift.Bool
  func dateInterval(of component: Foundation.Calendar.Component, for date: Foundation.Date) -> Foundation.DateInterval?
  func ordinality(of smaller: Foundation.Calendar.Component, in larger: Foundation.Calendar.Component, for date: Foundation.Date) -> Swift.Int?
  @available(*, unavailable, message: "use dateComponents(_:from:) instead") func getEra(_ eraValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, year yearValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, month monthValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, day dayValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, from date: Foundation.Date)
  @available(*, unavailable, message: "use dateComponents(_:from:) instead") func getEra(_ eraValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, yearForWeekOfYear yearValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, weekOfYear weekValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, weekday weekdayValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, from date: Foundation.Date)
  @available(*, unavailable, message: "use dateComponents(_:from:) instead") func getHour(_ hourValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, minute minuteValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, second secondValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, nanosecond nanosecondValuePointer: Swift.UnsafeMutablePointer<Swift.Int>?, from date: Foundation.Date)
  @available(*, unavailable, message: "use date(byAdding:to:wrappingComponents:) instead") func date(byAdding unit: Foundation.NSCalendar.Unit, value: Swift.Int, to date: Foundation.Date, options: Foundation.NSCalendar.Options = default) -> Foundation.Date?
  func date(byAdding components: Foundation.DateComponents, to date: Foundation.Date, wrappingComponents: Swift.Bool = default) -> Foundation.Date?
  @available(*, unavailable, message: "use date(byAdding:to:wrappingComponents:) instead") func date(byAdding comps: Foundation.DateComponents, to date: Foundation.Date, options opts: Foundation.NSCalendar.Options = default) -> Foundation.Date?
  func date(byAdding component: Foundation.Calendar.Component, value: Swift.Int, to date: Foundation.Date, wrappingComponents: Swift.Bool = default) -> Foundation.Date?
  func date(from components: Foundation.DateComponents) -> Foundation.Date?
  @available(*, unavailable, renamed: "dateComponents(_:from:)") func components(_ unitFlags: Foundation.NSCalendar.Unit, from date: Foundation.Date) -> Foundation.DateComponents
  func dateComponents(_ components: Swift.Set<Foundation.Calendar.Component>, from date: Foundation.Date) -> Foundation.DateComponents
  @available(*, unavailable, renamed: "dateComponents(in:from:)") func components(in timezone: Foundation.TimeZone, from date: Foundation.Date) -> Foundation.DateComponents
  func dateComponents(in timeZone: Foundation.TimeZone, from date: Foundation.Date) -> Foundation.DateComponents
  @available(*, unavailable, renamed: "dateComponents(_:from:to:)") func components(_ unitFlags: Foundation.NSCalendar.Unit, from startingDate: Foundation.Date, to resultDate: Foundation.Date, options opts: Foundation.NSCalendar.Options = default) -> Foundation.DateComponents
  func dateComponents(_ components: Swift.Set<Foundation.Calendar.Component>, from start: Foundation.Date, to end: Foundation.Date) -> Foundation.DateComponents
  @available(*, unavailable, renamed: "dateComponents(_:from:to:)") func components(_ unitFlags: Foundation.NSCalendar.Unit, from startingDateComp: Foundation.DateComponents, to resultDateComp: Foundation.DateComponents, options: Foundation.NSCalendar.Options = default) -> Foundation.DateComponents
  func dateComponents(_ components: Swift.Set<Foundation.Calendar.Component>, from start: Foundation.DateComponents, to end: Foundation.DateComponents) -> Foundation.DateComponents
  func component(_ component: Foundation.Calendar.Component, from date: Foundation.Date) -> Swift.Int
  @available(*, unavailable, message: "Use date(from:) instead") func date(era: Swift.Int, year: Swift.Int, month: Swift.Int, day: Swift.Int, hour: Swift.Int, minute: Swift.Int, second: Swift.Int, nanosecond: Swift.Int) -> Foundation.Date?
  @available(*, unavailable, message: "Use date(from:) instead") func date(era: Swift.Int, yearForWeekOfYear: Swift.Int, weekOfYear: Swift.Int, weekday: Swift.Int, hour: Swift.Int, minute: Swift.Int, second: Swift.Int, nanosecond: Swift.Int) -> Foundation.Date?
  func startOfDay(for date: Foundation.Date) -> Foundation.Date
  @available(*, unavailable, renamed: "compare(_:to:toGranularity:)") func compare(_ date1: Foundation.Date, to date2: Foundation.Date, toUnitGranularity unit: Foundation.NSCalendar.Unit) -> Foundation.ComparisonResult
  func compare(_ date1: Foundation.Date, to date2: Foundation.Date, toGranularity component: Foundation.Calendar.Component) -> Foundation.ComparisonResult
  @available(*, unavailable, renamed: "isDate(_:equalTo:toGranularity:)") func isDate(_ date1: Foundation.Date, equalTo date2: Foundation.Date, toUnitGranularity unit: Foundation.NSCalendar.Unit) -> Swift.Bool
  func isDate(_ date1: Foundation.Date, equalTo date2: Foundation.Date, toGranularity component: Foundation.Calendar.Component) -> Swift.Bool
  func isDate(_ date1: Foundation.Date, inSameDayAs date2: Foundation.Date) -> Swift.Bool
  func isDateInToday(_ date: Foundation.Date) -> Swift.Bool
  func isDateInYesterday(_ date: Foundation.Date) -> Swift.Bool
  func isDateInTomorrow(_ date: Foundation.Date) -> Swift.Bool
  func isDateInWeekend(_ date: Foundation.Date) -> Swift.Bool
  func dateIntervalOfWeekend(containing date: Foundation.Date, start: inout Foundation.Date, interval: inout Foundation.TimeInterval) -> Swift.Bool
  func dateIntervalOfWeekend(containing date: Foundation.Date) -> Foundation.DateInterval?
  func nextWeekend(startingAfter date: Foundation.Date, start: inout Foundation.Date, interval: inout Foundation.TimeInterval, direction: Foundation.Calendar.SearchDirection = default) -> Swift.Bool
  func nextWeekend(startingAfter date: Foundation.Date, direction: Foundation.Calendar.SearchDirection = default) -> Foundation.DateInterval?
  enum SearchDirection {
    case forward
    case backward
    infix static func ==(a: Foundation.Calendar.SearchDirection, b: Foundation.Calendar.SearchDirection) -> Swift.Bool
    var hashValue: Swift.Int {
      get {}
    }
  }
  enum RepeatedTimePolicy {
    case first
    case last
    infix static func ==(a: Foundation.Calendar.RepeatedTimePolicy, b: Foundation.Calendar.RepeatedTimePolicy) -> Swift.Bool
    var hashValue: Swift.Int {
      get {}
    }
  }
  enum MatchingPolicy {
    case nextTime
    case nextTimePreservingSmallerComponents
    case previousTimePreservingSmallerComponents
    case strict
    infix static func ==(a: Foundation.Calendar.MatchingPolicy, b: Foundation.Calendar.MatchingPolicy) -> Swift.Bool
    var hashValue: Swift.Int {
      get {}
    }
  }
  @available(*, unavailable, message: "use nextWeekend(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:using:) instead") func enumerateDates(startingAfter start: Foundation.Date, matching comps: Foundation.DateComponents, options opts: Foundation.NSCalendar.Options = default, using block: (Foundation.Date?, Swift.Bool, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func enumerateDates(startingAfter start: Foundation.Date, matching components: Foundation.DateComponents, matchingPolicy: Foundation.Calendar.MatchingPolicy, repeatedTimePolicy: Foundation.Calendar.RepeatedTimePolicy = default, direction: Foundation.Calendar.SearchDirection = default, using block: (Foundation.Date?, Swift.Bool, inout Swift.Bool) -> Swift.Void)
  @available(*, unavailable, message: "use nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:) instead") func nextDate(after date: Foundation.Date, matching comps: Foundation.DateComponents, options: Foundation.NSCalendar.Options = default) -> Foundation.Date?
  func nextDate(after date: Foundation.Date, matching components: Foundation.DateComponents, matchingPolicy: Foundation.Calendar.MatchingPolicy, repeatedTimePolicy: Foundation.Calendar.RepeatedTimePolicy = default, direction: Foundation.Calendar.SearchDirection = default) -> Foundation.Date?
  @available(*, unavailable, message: "use nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:) instead") func nextDate(after date: Foundation.Date, matchingHour hourValue: Swift.Int, minute minuteValue: Swift.Int, second secondValue: Swift.Int, options: Foundation.NSCalendar.Options = default) -> Foundation.Date?
  @available(*, unavailable, renamed: "date(bySetting:value:of:)") func date(bySettingUnit unit: Foundation.NSCalendar.Unit, value v: Swift.Int, of date: Foundation.Date, options opts: Foundation.NSCalendar.Options = default) -> Foundation.Date?
  func date(bySetting component: Foundation.Calendar.Component, value: Swift.Int, of date: Foundation.Date) -> Foundation.Date?
  @available(*, unavailable, message: "use date(bySettingHour:minute:second:of:matchingPolicy:repeatedTimePolicy:direction:) instead") func date(bySettingHour h: Swift.Int, minute m: Swift.Int, second s: Swift.Int, of date: Foundation.Date, options opts: Foundation.NSCalendar.Options = default) -> Foundation.Date?
  func date(bySettingHour hour: Swift.Int, minute: Swift.Int, second: Swift.Int, of date: Foundation.Date, matchingPolicy: Foundation.Calendar.MatchingPolicy = default, repeatedTimePolicy: Foundation.Calendar.RepeatedTimePolicy = default, direction: Foundation.Calendar.SearchDirection = default) -> Foundation.Date?
  func date(_ date: Foundation.Date, matchesComponents components: Foundation.DateComponents) -> Swift.Bool
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.Calendar, rhs: Foundation.Calendar) -> Swift.Bool
  static func _toCalendarOptions(matchingPolicy: Foundation.Calendar.MatchingPolicy, repeatedTimePolicy: Foundation.Calendar.RepeatedTimePolicy, direction: Foundation.Calendar.SearchDirection) -> Foundation.NSCalendar.Options
  static func _toCalendarUnit(_ units: Swift.Set<Foundation.Calendar.Component>) -> Foundation.NSCalendar.Unit
  static func _fromCalendarUnit(_ unit: Foundation.NSCalendar.Unit) -> Foundation.Calendar.Component
  static func _fromCalendarUnits(_ units: Foundation.NSCalendar.Unit) -> Swift.Set<Foundation.Calendar.Component>
  static func _toNSCalendarIdentifier(_ identifier: Foundation.Calendar.Identifier) -> Foundation.NSCalendar.Identifier
  static func _fromNSCalendarIdentifier(_ identifier: Foundation.NSCalendar.Identifier) -> Foundation.Calendar.Identifier
}
extension Calendar : _NSBridgeable, _CFBridgeable {
  typealias NSType = Foundation.NSCalendar
  typealias CFType = CoreFoundation.CFCalendar
  var _nsObject: Foundation.NSCalendar {
    get {}
  }
  var _cfObject: CoreFoundation.CFCalendar {
    get {}
  }
}
extension Calendar : CustomDebugStringConvertible, CustomStringConvertible, CustomReflectable {
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension Calendar : _ObjectTypeBridgeable {
  typealias _ObjectType = Foundation.NSCalendar
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSCalendar
  static func _forceBridgeFromObjectiveC(_ input: Foundation.NSCalendar, result: inout Foundation.Calendar?)
  @discardableResult static func _conditionallyBridgeFromObjectiveC(_ input: Foundation.NSCalendar, result: inout Foundation.Calendar?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSCalendar?) -> Foundation.Calendar
}
class InputStream : Foundation.Stream {
  final let _stream: <null>
  func read(_ buffer: Swift.UnsafeMutablePointer<Swift.UInt8>, maxLength len: Swift.Int) -> Swift.Int
  func getBuffer(_ buffer: Swift.UnsafeMutablePointer<Swift.UnsafeMutablePointer<Swift.UInt8>?>, length len: Swift.UnsafeMutablePointer<Swift.Int>) -> Swift.Bool
  var hasBytesAvailable: Swift.Bool {
    get {}
  }
  init(data: Foundation.Data)
  init?(url: Foundation.URL)
  convenience init?(fileAtPath path: Swift.String)
  override func open()
  override func close()
  override var streamStatus: Foundation.Stream.Status {
    override get {}
  }
  override var streamError: Foundation.NSError? {
    override get {}
  }
  @objc deinit
  init()
}
let NSURLErrorFailingURLErrorKey: Swift.String
func _CFSwiftCharacterSetLongCharacterIsMember(_ cset: CoreFoundation.CFTypeRef, _ ch: Swift.UInt32) -> Swift.Bool
class NSEnumerator : Foundation.NSObject {
  func nextObject() -> Any?
  @objc deinit
  init()
}
extension NSEnumerator : Sequence {
  struct Iterator : IteratorProtocol {
    let enumerator: <null>
    func next() -> Any?
    init(enumerator: Foundation.NSEnumerator)
    typealias Element = Any
  }
  func makeIterator() -> Foundation.NSEnumerator.Iterator
  typealias SubSequence = Swift.AnySequence<Any>
}
extension NSEnumerator {
  var allObjects: [Any] {
    get {}
  }
}
let NSURLProtectionSpaceHTTPProxy: Swift.String
func __NSCalendarIsAutoupdating(_ calendar: Foundation.NSCalendar) -> Swift.Bool
func NSSearchPathForDirectoriesInDomains(_ directory: Foundation.FileManager.SearchPathDirectory, _ domainMask: Foundation.FileManager.SearchPathDomainMask, _ expandTilde: Swift.Bool) -> [Swift.String]
let URLSessionDownloadTaskResumeData: Swift.String
func NSEqualRects(_ aRect: Foundation.NSRect, _ bRect: Foundation.NSRect) -> Swift.Bool
struct NSBinarySearchingOptions : OptionSet {
  let rawValue: <null>
  init(rawValue: Swift.UInt)
  static var firstEqual: Foundation.NSBinarySearchingOptions
  static var lastEqual: Foundation.NSBinarySearchingOptions
  static var insertionIndex: Foundation.NSBinarySearchingOptions
  typealias Element = Foundation.NSBinarySearchingOptions
  typealias RawValue = Swift.UInt
}
func expm1(_ x: Foundation.CGFloat) -> Foundation.CGFloat
class ProcessInfo : Foundation.NSObject {
  static var processInfo: Foundation.ProcessInfo
  init()
  static var _environment: <null>
  var environment: [Swift.String : Swift.String] {
    get {}
  }
  var arguments: [Swift.String] {
    get {}
  }
  var hostName: Swift.String {
    get {}
  }
  var processName: <null>
  var processIdentifier: Swift.Int32 {
    get {}
  }
  var globallyUniqueString: Swift.String {
    get {}
  }
  var operatingSystemVersionString: Swift.String {
    get {}
  }
  var operatingSystemVersion: Foundation.OperatingSystemVersion {
    get {}
  }
  final let _processorCount: CoreFoundation.CFIndex
  var processorCount: Swift.Int {
    get {}
  }
  final let _activeProcessorCount: CoreFoundation.CFIndex
  var activeProcessorCount: Swift.Int {
    get {}
  }
  final let _physicalMemory: Swift.UInt64
  var physicalMemory: Swift.UInt64 {
    get {}
  }
  func isOperatingSystemAtLeast(_ version: Foundation.OperatingSystemVersion) -> Swift.Bool
  var systemUptime: Foundation.TimeInterval {
    get {}
  }
  @objc deinit
}
func emptyRunLoopCallback(_ context: Swift.UnsafeMutableRawPointer?)
class NotificationQueue : Foundation.NSObject {
  typealias NotificationQueueList = Foundation.NSMutableArray
  typealias NSNotificationListEntry = (Foundation.Notification, [Foundation.RunLoopMode])
  typealias NSNotificationList = [Foundation.NotificationQueue.NSNotificationListEntry]
  final let notificationCenter: <null>
  var asapList: Foundation.NotificationQueue.NSNotificationList
  var idleList: Foundation.NotificationQueue.NSNotificationList
  lazy var idleRunloopObserver: CoreFoundation.CFRunLoopObserver {
    get {}
    set(value) {}
  }
  final var idleRunloopObserver.storage: <null>
  lazy var asapRunloopObserver: CoreFoundation.CFRunLoopObserver {
    get {}
    set(value) {}
  }
  final var asapRunloopObserver.storage: <null>
  static var _notificationQueueList: Foundation.NSThreadSpecific<Foundation.NSMutableArray>
  static var notificationQueueList: Foundation.NotificationQueue.NotificationQueueList {
    final get {}
  }
  static var _defaultQueue: Foundation.NSThreadSpecific<Foundation.NotificationQueue>
  class var `default`: Foundation.NotificationQueue {
    get {}
  }
  init(notificationCenter: Foundation.NotificationCenter)
  @objc deinit
  func enqueue(_ notification: Foundation.Notification, postingStyle: Foundation.NotificationQueue.PostingStyle)
  func enqueue(_ notification: Foundation.Notification, postingStyle: Foundation.NotificationQueue.PostingStyle, coalesceMask: Foundation.NotificationQueue.NotificationCoalescing, forModes modes: [Foundation.RunLoopMode]?)
  func dequeueNotifications(matching notification: Foundation.Notification, coalesceMask: Foundation.NotificationQueue.NotificationCoalescing)
  func addRunloopObserver(_ observer: CoreFoundation.CFRunLoopObserver)
  func removeRunloopObserver(_ observer: CoreFoundation.CFRunLoopObserver)
  func notify(_ currentMode: Foundation.RunLoopMode?, notificationList: inout Foundation.NotificationQueue.NSNotificationList)
  func notifyQueues(_ postingStyle: Foundation.NotificationQueue.PostingStyle)
  static func registerQueue(_ notificationQueue: Foundation.NotificationQueue)
  static func unregisterQueue(_ notificationQueue: Foundation.NotificationQueue)
  init()
}
extension NotificationQueue {
  enum PostingStyle : Swift.UInt {
    case whenIdle
    case asap
    case now
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
  struct NotificationCoalescing : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var none: Foundation.NotificationQueue.NotificationCoalescing
    static var onName: Foundation.NotificationQueue.NotificationCoalescing
    static var onSender: Foundation.NotificationQueue.NotificationCoalescing
    typealias Element = Foundation.NotificationQueue.NotificationCoalescing
    typealias RawValue = Swift.UInt
  }
}
class UnitElectricCurrent : Foundation.Dimension {
  struct Symbol {
    static var megaamperes: Swift.String
    static var kiloamperes: Swift.String
    static var amperes: Swift.String
    static var milliamperes: Swift.String
    static var microamperes: Swift.String
    init()
  }
  struct Coefficient {
    static var megaamperes: Swift.Double
    static var kiloamperes: Swift.Double
    static var amperes: Swift.Double
    static var milliamperes: Swift.Double
    static var microamperes: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var megaamperes: Foundation.UnitElectricCurrent {
    get {}
  }
  class var kiloamperes: Foundation.UnitElectricCurrent {
    get {}
  }
  class var amperes: Foundation.UnitElectricCurrent {
    get {}
  }
  class var milliamperes: Foundation.UnitElectricCurrent {
    get {}
  }
  class var microamperes: Foundation.UnitElectricCurrent {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitElectricCurrent
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
protocol FileManagerDelegate : NSObjectProtocol {
  func fileManager(_ fileManager: Foundation.FileManager, shouldCopyItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldCopyItemAt srcURL: Foundation.URL, to dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, copyingItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, copyingItemAt srcURL: Foundation.URL, to dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldMoveItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldMoveItemAt srcURL: Foundation.URL, to dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, movingItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, movingItemAt srcURL: Foundation.URL, to dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldLinkItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldLinkItemAt srcURL: Foundation.URL, to dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, linkingItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, linkingItemAt srcURL: Foundation.URL, to dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldRemoveItemAtPath path: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldRemoveItemAt URL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, removingItemAtPath path: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, removingItemAt URL: Foundation.URL) -> Swift.Bool
}
extension FileManagerDelegate {
  func fileManager(_ fileManager: Foundation.FileManager, shouldCopyItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldCopyItemAtURL srcURL: Foundation.URL, toURL dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, copyingItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, copyingItemAtURL srcURL: Foundation.URL, toURL dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldMoveItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldMoveItemAtURL srcURL: Foundation.URL, toURL dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, movingItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, movingItemAtURL srcURL: Foundation.URL, toURL dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldLinkItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldLinkItemAtURL srcURL: Foundation.URL, toURL dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, linkingItemAtPath srcPath: Swift.String, toPath dstPath: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, linkingItemAtURL srcURL: Foundation.URL, toURL dstURL: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldRemoveItemAtPath path: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldRemoveItemAtURL url: Foundation.URL) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, removingItemAtPath path: Swift.String) -> Swift.Bool
  func fileManager(_ fileManager: Foundation.FileManager, shouldProceedAfterError error: Error, removingItemAtURL url: Foundation.URL) -> Swift.Bool
}
func _swift_Foundation_getErrorDefaultUserInfo(_ error: Error) -> Any?
func _CFSwiftSetGetValue(_ set: AnyObject, value: AnyObject, key: AnyObject) -> Swift.Unmanaged<AnyObject>?
struct UInt : UnsignedInteger, Comparable, Equatable {
  var _value: <null>
  init()
  init(_ _v: Builtin.Int64)
  init(_bits: Builtin.Int64)
  init(_ _v: Builtin.Word)
  var _builtinWordValue: Builtin.Word {
    get {}
  }
  init(bigEndian value: Swift.UInt)
  init(littleEndian value: Swift.UInt)
  init(_builtinIntegerLiteral value: Builtin.Int2048)
  init(integerLiteral value: Swift.UInt)
  var bigEndian: Swift.UInt {
    get {}
  }
  var littleEndian: Swift.UInt {
    get {}
  }
  var byteSwapped: Swift.UInt {
    get {}
  }
  static var max: Swift.UInt {
    get {}
  }
  static var min: Swift.UInt {
    get {}
  }
  static var _sizeInBits: Swift.UInt {
    get {}
  }
  static var _sizeInBytes: Swift.UInt {
    get {}
  }
  typealias IntegerLiteralType = Swift.UInt
  typealias _DisallowMixedSignArithmetic = Swift.Int
  typealias Stride = Swift.Int
}
extension UInt : _ObjectTypeBridgeable {
  init(_ number: Foundation.NSNumber)
  typealias _ObjectType = Foundation.NSNumber
  func _bridgeToObjectiveC() -> Swift.UInt._ObjectType
  static func _forceBridgeFromObjectiveC(_ source: Swift.UInt._ObjectType, result: inout Swift.UInt?)
  @discardableResult static func _conditionallyBridgeFromObjectiveC(_ source: Swift.UInt._ObjectType, result: inout Swift.UInt?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Swift.UInt._ObjectType?) -> Swift.UInt
}
extension UInt {
  init(_ value: Foundation.CGFloat)
}
extension UInt {
  init(bitPattern pointer: Swift.OpaquePointer?)
}
extension UInt : Hashable {
  var hashValue: Swift.Int {
    @inline(__always) get {}
  }
}
extension UInt : CustomStringConvertible {
  var description: Swift.String {
    get {}
  }
}
extension UInt {
  static func addWithOverflow(_ lhs: Swift.UInt, _ rhs: Swift.UInt) -> (Swift.UInt, overflow: Swift.Bool)
  static func subtractWithOverflow(_ lhs: Swift.UInt, _ rhs: Swift.UInt) -> (Swift.UInt, overflow: Swift.Bool)
  static func multiplyWithOverflow(_ lhs: Swift.UInt, _ rhs: Swift.UInt) -> (Swift.UInt, overflow: Swift.Bool)
  static func divideWithOverflow(_ lhs: Swift.UInt, _ rhs: Swift.UInt) -> (Swift.UInt, overflow: Swift.Bool)
  static func remainderWithOverflow(_ lhs: Swift.UInt, _ rhs: Swift.UInt) -> (Swift.UInt, overflow: Swift.Bool)
  func toUIntMax() -> Swift.UIntMax
  func toIntMax() -> Swift.IntMax
}
extension UInt {
  init(_ value: Swift.UInt8)
  @available(*, message: "Converting UInt8 to UInt will always succeed.") init?(exactly value: Swift.UInt8)
}
extension UInt {
  init(_ value: Swift.Int8)
  init?(exactly value: Swift.Int8)
}
extension UInt {
  init(_ value: Swift.UInt16)
  @available(*, message: "Converting UInt16 to UInt will always succeed.") init?(exactly value: Swift.UInt16)
}
extension UInt {
  init(_ value: Swift.Int16)
  init?(exactly value: Swift.Int16)
}
extension UInt {
  init(_ value: Swift.UInt32)
  @available(*, message: "Converting UInt32 to UInt will always succeed.") init?(exactly value: Swift.UInt32)
}
extension UInt {
  init(_ value: Swift.Int32)
  init?(exactly value: Swift.Int32)
}
extension UInt {
  init(_ value: Swift.UInt64)
  @available(*, message: "Converting UInt64 to UInt will always succeed.") init?(exactly value: Swift.UInt64)
  init(truncatingBitPattern: Swift.UInt64)
}
extension UInt {
  init(_ value: Swift.Int64)
  init?(exactly value: Swift.Int64)
  init(truncatingBitPattern: Swift.Int64)
}
extension UInt {
  init(_ value: Swift.UInt)
  @available(*, message: "Converting UInt to UInt will always succeed.") init?(exactly value: Swift.UInt)
}
extension UInt {
  init(_ value: Swift.Int)
  init?(exactly value: Swift.Int)
}
extension UInt {
  init(_ value: Swift.Float)
  @inline(__always) init?(exactly value: Swift.Float)
  init(_ value: Swift.Double)
  @inline(__always) init?(exactly value: Swift.Double)
  init(_ value: Swift.Float80)
  @inline(__always) init?(exactly value: Swift.Float80)
  init(bitPattern: Swift.Int)
}
extension UInt : BitwiseOperations {
  static var allZeros: Swift.UInt {
    get {}
  }
}
extension UInt {
  typealias _DisabledRangeIndex = Swift.UInt
}
extension UInt {
  init?(_ text: Swift.String, radix: Swift.Int = default)
}
extension UInt : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension UInt : CustomPlaygroundQuickLookable {
  var customPlaygroundQuickLook: Swift.PlaygroundQuickLook {
    get {}
  }
}
extension UInt {
  init(bitPattern objectID: Swift.ObjectIdentifier)
}
extension UInt {
  @available(*, unavailable, renamed: "init(bitPattern:)") init(_ objectID: Swift.ObjectIdentifier)
}
extension UInt {
  init<U>(bitPattern: Swift.UnsafeMutablePointer<U>?)
}
extension UInt {
  init<U>(bitPattern: Swift.UnsafePointer<U>?)
}
extension UInt {
  init(bitPattern: Swift.UnsafeMutableRawPointer?)
}
extension UInt {
  init(bitPattern: Swift.UnsafeRawPointer?)
}
extension UInt : CVarArg {
  var _cVarArgEncoding: [Swift.Int] {
    get {}
  }
}
func _NSXMLParserGetContext(_ ctx: CoreFoundation._CFXMLInterface) -> CoreFoundation._CFXMLInterfaceParserContext
func atan(_ x: Foundation.CGFloat) -> Foundation.CGFloat
let NSLocalizedDescriptionKey: Swift.String
class NSIndexPath : Foundation.NSObject, NSCopying, NSSecureCoding {
  var _indexes: <null>
  init()
  init(indexes: Swift.UnsafePointer<Swift.Int>!, length: Swift.Int)
  init(indexes: [Swift.Int])
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  convenience init(index: Swift.Int)
  func encode(with aCoder: Foundation.NSCoder)
  required init?(coder aDecoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  func adding(_ index: Swift.Int) -> Foundation.IndexPath
  func removingLastIndex() -> Foundation.IndexPath
  func index(atPosition position: Swift.Int) -> Swift.Int
  var length: Swift.Int {
    get {}
  }
  func getIndexes(_ indexes: Swift.UnsafeMutablePointer<Swift.Int>, range positionRange: Foundation.NSRange)
  func compare(_ otherObject: Foundation.IndexPath) -> Foundation.ComparisonResult
  @objc deinit
}
extension NSIndexPath {
  func getIndexes(_ indexes: Swift.UnsafeMutablePointer<Swift.Int>)
}
extension NSIndexPath : _StructTypeBridgeable {
  typealias _StructType = Foundation.IndexPath
  func _bridgeToSwift() -> Foundation.IndexPath
}
extension NSIndexPath : _HasCustomAnyHashableRepresentation {
  @nonobjc func _toCustomAnyHashable() -> Swift.AnyHashable?
}
let NSPersonNameComponentDelimiter: Swift.String
protocol NSCacheDelegate : NSObjectProtocol {
  func cache(_ cache: Foundation.NSCache<AnyObject, AnyObject>, willEvictObject obj: AnyObject)
}
extension NSCacheDelegate {
  func cache(_ cache: Foundation.NSCache<AnyObject, AnyObject>, willEvictObject obj: AnyObject)
}
class UnitMass : Foundation.Dimension {
  struct Symbol {
    static var kilograms: Swift.String
    static var grams: Swift.String
    static var decigrams: Swift.String
    static var centigrams: Swift.String
    static var milligrams: Swift.String
    static var micrograms: Swift.String
    static var nanograms: Swift.String
    static var picograms: Swift.String
    static var ounces: Swift.String
    static var pounds: Swift.String
    static var stones: Swift.String
    static var metricTons: Swift.String
    static var shortTons: Swift.String
    static var carats: Swift.String
    static var ouncesTroy: Swift.String
    static var slugs: Swift.String
    init()
  }
  struct Coefficient {
    static var kilograms: Swift.Double
    static var grams: Swift.Double
    static var decigrams: Swift.Double
    static var centigrams: Swift.Double
    static var milligrams: Swift.Double
    static var micrograms: Swift.Double
    static var nanograms: Swift.Double
    static var picograms: Swift.Double
    static var ounces: Swift.Double
    static var pounds: Swift.Double
    static var stones: Swift.Double
    static var metricTons: Swift.Double
    static var shortTons: Swift.Double
    static var carats: Swift.Double
    static var ouncesTroy: Swift.Double
    static var slugs: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var kilograms: Foundation.UnitMass {
    get {}
  }
  class var grams: Foundation.UnitMass {
    get {}
  }
  class var decigrams: Foundation.UnitMass {
    get {}
  }
  class var centigrams: Foundation.UnitMass {
    get {}
  }
  class var milligrams: Foundation.UnitMass {
    get {}
  }
  class var micrograms: Foundation.UnitMass {
    get {}
  }
  class var nanograms: Foundation.UnitMass {
    get {}
  }
  class var picograms: Foundation.UnitMass {
    get {}
  }
  class var ounces: Foundation.UnitMass {
    get {}
  }
  class var pounds: Foundation.UnitMass {
    get {}
  }
  class var stones: Foundation.UnitMass {
    get {}
  }
  class var metricTons: Foundation.UnitMass {
    get {}
  }
  class var shortTons: Foundation.UnitMass {
    get {}
  }
  class var carats: Foundation.UnitMass {
    get {}
  }
  class var ouncesTroy: Foundation.UnitMass {
    get {}
  }
  class var slugs: Foundation.UnitMass {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitMass
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
let NSUnderlyingErrorKey: Swift.String
func pow(_ lhs: Foundation.CGFloat, _ rhs: Foundation.CGFloat) -> Foundation.CGFloat
func __NSCalendarCurrent() -> Foundation.NSCalendar
let enableDebugOutput: Swift.Bool
var NSURLErrorCannotFindHost: Swift.Int {
  get {}
}
class Timer : Foundation.NSObject {
  typealias CFType = CoreFoundation.CFRunLoopTimer
  var _cfObject: Foundation.Timer.CFType {
    get {}
    set(newValue) {}
  }
  var _timer: <null>
  var _fire: <null>
  init(fire date: Foundation.Date, interval: Foundation.TimeInterval, repeats: Swift.Bool, block: @escaping (Foundation.Timer) -> Swift.Void)
  convenience init(timeInterval interval: Foundation.TimeInterval, repeats: Swift.Bool, block: @escaping (Foundation.Timer) -> Swift.Void)
  class func scheduledTimer(withTimeInterval interval: Foundation.TimeInterval, repeats: Swift.Bool, block: @escaping (Foundation.Timer) -> Swift.Void) -> Foundation.Timer
  func fire()
  var fireDate: Foundation.Date {
    get {}
    set(newValue) {}
  }
  var timeInterval: Foundation.TimeInterval {
    get {}
  }
  var tolerance: Foundation.TimeInterval {
    get {}
    set(newValue) {}
  }
  func invalidate()
  var isValid: Swift.Bool {
    get {}
  }
  var userInfo: Any? {
    get {}
  }
  @objc deinit
  init()
}
let ε: Foundation.CGFloat
let _defaultCenter: Foundation.NotificationCenter
protocol _CFBridgeable {
  associatedtype CFType
  var _cfObject: Self.CFType { get }
}
var NSURLErrorCannotParseResponse: Swift.Int {
  get {}
}
func fmax(_ lhs: Foundation.CGFloat, _ rhs: Foundation.CGFloat) -> Foundation.CGFloat
class NSLocale : Foundation.NSObject, NSCopying, NSSecureCoding {
  typealias CFType = CoreFoundation.CFLocale
  var _base: Foundation._CFInfo
  var _identifier: <null>
  var _cache: <null>
  var _prefs: <null>
  var _lock: Swift.Int32
  var _nullLocale: Swift.Bool
  var _cfObject: Foundation.NSLocale.CFType {
    get {}
  }
  func object(forKey key: Foundation.NSLocale.Key) -> AnyObject?
  func displayName(forKey key: Foundation.NSLocale.Key, value: Swift.String) -> Swift.String?
  init(localeIdentifier string: Swift.String)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  override func isEqual(_ object: Any?) -> Swift.Bool
  func encode(with aCoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  @objc deinit
  init()
}
extension NSLocale {
  struct Key : RawRepresentable, Equatable, Hashable, Comparable {
    var rawValue: <null>
    init(rawValue: Swift.String)
    var hashValue: Swift.Int {
      get {}
    }
    static var identifier: Foundation.NSLocale.Key
    static var languageCode: Foundation.NSLocale.Key
    static var countryCode: Foundation.NSLocale.Key
    static var scriptCode: Foundation.NSLocale.Key
    static var variantCode: Foundation.NSLocale.Key
    static var exemplarCharacterSet: Foundation.NSLocale.Key
    static var calendar: Foundation.NSLocale.Key
    static var collationIdentifier: Foundation.NSLocale.Key
    static var usesMetricSystem: Foundation.NSLocale.Key
    static var measurementSystem: Foundation.NSLocale.Key
    static var decimalSeparator: Foundation.NSLocale.Key
    static var groupingSeparator: Foundation.NSLocale.Key
    static var currencySymbol: Foundation.NSLocale.Key
    static var currencyCode: Foundation.NSLocale.Key
    static var collatorIdentifier: Foundation.NSLocale.Key
    static var quotationBeginDelimiterKey: Foundation.NSLocale.Key
    static var quotationEndDelimiterKey: Foundation.NSLocale.Key
    static var calendarIdentifier: Foundation.NSLocale.Key
    static var alternateQuotationBeginDelimiterKey: Foundation.NSLocale.Key
    static var alternateQuotationEndDelimiterKey: Foundation.NSLocale.Key
    typealias RawValue = Swift.String
  }
  enum LanguageDirection : Swift.UInt {
    case unknown
    case leftToRight
    case rightToLeft
    case topToBottom
    case bottomToTop
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
extension NSLocale {
  class var current: Foundation.Locale {
    get {}
  }
  class func systemLocale() -> Foundation.Locale
}
extension NSLocale {
  var localeIdentifier: Swift.String {
    get {}
  }
  class var availableLocaleIdentifiers: [Swift.String] {
    get {}
  }
  class var isoLanguageCodes: [Swift.String] {
    get {}
  }
  class var isoCountryCodes: [Swift.String] {
    get {}
  }
  class var isoCurrencyCodes: [Swift.String] {
    get {}
  }
  class var commonISOCurrencyCodes: [Swift.String] {
    get {}
  }
  class var preferredLanguages: [Swift.String] {
    get {}
  }
  class func components(fromLocaleIdentifier string: Swift.String) -> [Swift.String : Swift.String]
  class func localeIdentifier(fromComponents dict: [Swift.String : Swift.String]) -> Swift.String
  class func canonicalLocaleIdentifier(from string: Swift.String) -> Swift.String
  class func canonicalLanguageIdentifier(from string: Swift.String) -> Swift.String
  class func localeIdentifier(fromWindowsLocaleCode lcid: Swift.UInt32) -> Swift.String?
  class func windowsLocaleCode(fromLocaleIdentifier localeIdentifier: Swift.String) -> Swift.UInt32
  class func characterDirection(forLanguage isoLangCode: Swift.String) -> Foundation.NSLocale.LanguageDirection
  class func lineDirection(forLanguage isoLangCode: Swift.String) -> Foundation.NSLocale.LanguageDirection
}
extension NSLocale {
  static var currentLocaleDidChangeNotification: Foundation.NSNotification.Name
}
extension NSLocale : _SwiftBridgeable {
  typealias SwiftType = Foundation.Locale
  var _swiftObject: Foundation.Locale {
    get {}
  }
}
extension NSLocale : _StructTypeBridgeable {
  typealias _StructType = Foundation.Locale
  func _bridgeToSwift() -> Foundation.Locale
}
let NSPOSIXErrorDomain: Swift.String
class URLAuthenticationChallenge : Foundation.NSObject, NSSecureCoding {
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  required init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  init(protectionSpace space: Foundation.URLProtectionSpace, proposedCredential credential: Foundation.URLCredential?, previousFailureCount: Swift.Int, failureResponse response: Foundation.URLResponse?, error: Foundation.NSError?, sender: URLAuthenticationChallengeSender)
  init(authenticationChallenge challenge: Foundation.URLAuthenticationChallenge, sender: URLAuthenticationChallengeSender)
  var protectionSpace: Foundation.URLProtectionSpace {
    get {}
  }
  var proposedCredential: Foundation.URLCredential? {
    get {}
  }
  var previousFailureCount: Swift.Int {
    get {}
  }
  var failureResponse: Foundation.URLResponse? {
    get {}
  }
  var error: Foundation.NSError? {
    get {}
  }
  var sender: URLAuthenticationChallengeSender? {
    get {}
  }
  @objc deinit
  init()
}
class NSDecimalNumberHandler : Foundation.NSObject, NSDecimalNumberBehaviors, NSCoding {
  static var defaultBehavior: Foundation.NSDecimalNumberHandler
  final let _roundingMode: <null>
  final let _scale: <null>
  final let _raiseOnExactness: <null>
  final let _raiseOnOverflow: <null>
  final let _raiseOnUnderflow: <null>
  final let _raiseOnDivideByZero: <null>
  init()
  required init?(coder: Foundation.NSCoder)
  func encode(with coder: Foundation.NSCoder)
  class func `default`() -> Foundation.NSDecimalNumberHandler
  init(roundingMode: Foundation.NSDecimalNumber.RoundingMode, scale: Swift.Int16, raiseOnExactness exact: Swift.Bool, raiseOnOverflow overflow: Swift.Bool, raiseOnUnderflow underflow: Swift.Bool, raiseOnDivideByZero divideByZero: Swift.Bool)
  func roundingMode() -> Foundation.NSDecimalNumber.RoundingMode
  func scale() -> Swift.Int16
  @objc deinit
}
func _CFSwiftSetMember(_ set: CoreFoundation.CFTypeRef, _ object: CoreFoundation.CFTypeRef) -> Swift.Unmanaged<CoreFoundation.CFTypeRef>?
func _CFSwiftStringCreateCopy(_ str: AnyObject) -> Swift.Unmanaged<AnyObject>
let NSURLErrorBackgroundTaskCancelledReasonKey: Swift.String
let NSLocalizedRecoverySuggestionErrorKey: Swift.String
class UnitElectricPotentialDifference : Foundation.Dimension {
  struct Symbol {
    static var megavolts: Swift.String
    static var kilovolts: Swift.String
    static var volts: Swift.String
    static var millivolts: Swift.String
    static var microvolts: Swift.String
    init()
  }
  struct Coefficient {
    static var megavolts: Swift.Double
    static var kilovolts: Swift.Double
    static var volts: Swift.Double
    static var millivolts: Swift.Double
    static var microvolts: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var megavolts: Foundation.UnitElectricPotentialDifference {
    get {}
  }
  class var kilovolts: Foundation.UnitElectricPotentialDifference {
    get {}
  }
  class var volts: Foundation.UnitElectricPotentialDifference {
    get {}
  }
  class var millivolts: Foundation.UnitElectricPotentialDifference {
    get {}
  }
  class var microvolts: Foundation.UnitElectricPotentialDifference {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitElectricPotentialDifference
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
func NSDecimalString(_ dcm: Swift.UnsafePointer<Foundation.Decimal>, _ locale: AnyObject?) -> Swift.String
class PortMessage : Foundation.NSObject {
  init(sendPort: Foundation.Port?, receivePort replyPort: Foundation.Port?, components: [AnyObject]?)
  var components: [AnyObject]? {
    get {}
  }
  var receivePort: Foundation.Port? {
    get {}
  }
  var sendPort: Foundation.Port? {
    get {}
  }
  func sendBeforeDate(_ date: Foundation.Date) -> Swift.Bool
  var msgid: <null>
  @objc deinit
  init()
}
struct UnsafeMutablePointer<Pointee> : Strideable, Hashable, _Pointer {
  typealias Distance = Swift.Int
  let _rawValue: <null>
  init(_ _rawValue: Builtin.RawPointer)
  init(_ from: Swift.OpaquePointer)
  init?(_ from: Swift.OpaquePointer?)
  init?(bitPattern: Swift.Int)
  init?(bitPattern: Swift.UInt)
  init(_ other: Swift.UnsafeMutablePointer<Pointee>)
  init?(_ other: Swift.UnsafeMutablePointer<Pointee>?)
  init(mutating other: Swift.UnsafePointer<Pointee>)
  init?(mutating other: Swift.UnsafePointer<Pointee>?)
  static func allocate(capacity count: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  func deallocate(capacity: Swift.Int)
  var pointee: Pointee
  var pointee: Pointee {
    unsafeAddress {}
    unsafeMutableAddress {}
  }
  func initialize(to newValue: Pointee, count: Swift.Int = default)
  func move() -> Pointee
  func assign(from source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  func moveInitialize(from source: Swift.UnsafeMutablePointer<Pointee>, count: Swift.Int)
  func initialize(from source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, deprecated, message: "it will be removed in Swift 4.0.  Please use 'UnsafeMutableBufferPointer.initialize(from:)' instead") func initialize<C>(from source: C) where C : Collection, C.Iterator.Element == Pointee
  func moveAssign(from source: Swift.UnsafeMutablePointer<Pointee>, count: Swift.Int)
  @discardableResult func deinitialize(count: Swift.Int = default) -> Swift.UnsafeMutableRawPointer
  func withMemoryRebound<T, Result>(to type: T.Type, capacity count: Swift.Int, _ body: (Swift.UnsafeMutablePointer<T>) throws -> Result) rethrows -> Result
  subscript(i: Swift.Int) -> Pointee {
    unsafeAddress {}
    unsafeMutableAddress {}
  }
  var hashValue: Swift.Int {
    get {}
  }
  func successor() -> Swift.UnsafeMutablePointer<Pointee>
  func predecessor() -> Swift.UnsafeMutablePointer<Pointee>
  func distance(to end: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Int
  func advanced(by n: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  typealias Stride = Swift.Int
  typealias _DisabledRangeIndex = Swift._DisabledRangeIndex_
}
extension UnsafeMutablePointer {
  static func ==(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Bool
  static func <(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Bool
  static func +(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  static func +(lhs: Swift.Int, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.UnsafeMutablePointer<Pointee>
  static func -(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  static func -(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Int
  static func +=(lhs: inout Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int)
  static func -=(lhs: inout Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int)
}
extension UnsafeMutablePointer : CustomDebugStringConvertible {
  var debugDescription: Swift.String {
    get {}
  }
}
extension UnsafeMutablePointer : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension UnsafeMutablePointer : CustomPlaygroundQuickLookable {
  var summary: Swift.String {
    get {}
  }
  var customPlaygroundQuickLook: Swift.PlaygroundQuickLook {
    get {}
  }
}
extension UnsafeMutablePointer {
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init<U>(_ from: Swift.UnsafeMutablePointer<U>)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init?<U>(_ from: Swift.UnsafeMutablePointer<U>?)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init<U>(_ from: Swift.UnsafePointer<U>)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init?<U>(_ from: Swift.UnsafePointer<U>?)
  @available(*, unavailable, renamed: "init(mutating:)") init(_ from: Swift.UnsafePointer<Pointee>)
  @available(*, unavailable, renamed: "init(mutating:)") init?(_ from: Swift.UnsafePointer<Pointee>?)
  @available(*, unavailable, renamed: "Pointee") typealias Memory = Pointee
  @available(*, unavailable, message: "use 'nil' literal") init()
  @available(*, unavailable, renamed: "allocate(capacity:)") static func alloc(_ num: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  @available(*, unavailable, message: "use 'UnsafeMutablePointer.allocate(capacity:)'") init(allocatingCapacity: Swift.Int)
  @available(*, unavailable, renamed: "deallocate(capacity:)") func dealloc(_ num: Swift.Int)
  @available(*, unavailable, renamed: "deallocate(capacity:)") func deallocateCapacity(_ num: Swift.Int)
  @available(*, unavailable, renamed: "pointee") var memory: Pointee {
    get {}
    set(newValue) {}
  }
  @available(*, unavailable, renamed: "initialize(to:)") func initialize(_ newvalue: Pointee)
  @available(*, unavailable, renamed: "initialize(to:count:)") func initialize(with newvalue: Pointee, count: Swift.Int = default)
  @available(*, unavailable, renamed: "deinitialize(count:)") func destroy()
  @available(*, unavailable, renamed: "deinitialize(count:)") func destroy(_ count: Swift.Int)
  @available(*, unavailable, renamed: "initialize(from:)") func initializeFrom<C>(_ source: C) where C : Collection
  @available(*, unavailable, renamed: "initialize(from:count:)") func initializeFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "assign(from:count:)") func assignFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "assign(from:count:)") func assignBackwardFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveInitialize(from:count:)") func moveInitializeFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveInitialize(from:count:)") func moveInitializeBackwardFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveAssign(from:count:)") func moveAssignFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
}
extension UnsafeMutablePointer : CVarArg {
  var _cVarArgEncoding: [Swift.Int] {
    get {}
  }
}
func multiplyByShort<T>(_ d: inout T, _ mul: Swift.UInt16) -> Foundation.NSDecimalNumber.CalculationError where T : VariableLengthNumber
func _NSXMLParserStartDocument(_ ctx: CoreFoundation._CFXMLInterface)
var NSUserActivityConnectionUnavailableError: Swift.Int {
  get {}
}
func _CFSwiftSetApplyFunction(_ set: AnyObject, applier: @convention(c) (AnyObject, Swift.UnsafeMutableRawPointer) -> Swift.Void, context: Swift.UnsafeMutableRawPointer)
let NSPersonNameComponentFamilyName: Swift.String
func numericValue(_ ch: Foundation.unichar) -> Swift.Int
func numericValue(_ ch: Foundation.unichar) -> Swift.Int
func _pathComponents(_ path: Swift.String?) -> [Swift.String]?
func scalbn(_ x: Foundation.CGFloat, _ n: Swift.Int) -> Foundation.CGFloat
func NSIntersectsRect(_ aRect: Foundation.NSRect, _ bRect: Foundation.NSRect) -> Swift.Bool
protocol URLAuthenticationChallengeSender : NSObjectProtocol {
  func use(_ credential: Foundation.URLCredential, for challenge: Foundation.URLAuthenticationChallenge)
  func continueWithoutCredential(for challenge: Foundation.URLAuthenticationChallenge)
  func cancel(_ challenge: Foundation.URLAuthenticationChallenge)
  func performDefaultHandling(for challenge: Foundation.URLAuthenticationChallenge)
  func rejectProtectionSpaceAndContinue(with challenge: Foundation.URLAuthenticationChallenge)
}
func _CFSwiftMutableSetRemoveCharactersInRange(_ characterSet: CoreFoundation.CFTypeRef, _ range: CoreFoundation.CFRange)
func integerDivide<T>(_ r: inout T, _ cu: T, _ cv: Foundation.Decimal) -> Foundation.NSDecimalNumber.CalculationError where T : VariableLengthNumber
func fitMantissa(_ big: inout Foundation.WideDecimal, _ exponent: inout Swift.Int32, _ roundingMode: Foundation.NSDecimalNumber.RoundingMode) -> Foundation.NSDecimalNumber.CalculationError
func runloopIsEqual(_ a: Swift.UnsafeRawPointer?, _ b: Swift.UnsafeRawPointer?) -> Foundation._DarwinCompatibleBoolean
class URLSessionDataTask : Foundation.URLSessionTask {
  @objc deinit
  init()
  init(session: Foundation.URLSession, request: Foundation.URLRequest, taskIdentifier: Swift.Int, body: Foundation.URLSessionTask._Body)
}
protocol _StructTypeBridgeable : _StructBridgeable {
  associatedtype _StructType
  func _bridgeToSwift() -> Self._StructType
}
extension _StructTypeBridgeable {
  func _bridgeToAny() -> Any
}
func pthread_main_np() -> Swift.Int32
protocol URLSessionProtocol : class {
  func add(handle: Foundation._EasyHandle)
  func remove(handle: Foundation._EasyHandle)
  func behaviour(for: Foundation.URLSessionTask) -> Foundation.URLSession._TaskBehaviour
}
func NSMouseInRect(_ aPoint: Foundation.NSPoint, _ aRect: Foundation.NSRect, _ flipped: Swift.Bool) -> Swift.Bool
func _NSRegularExpressionMatch(_ context: Swift.UnsafeMutableRawPointer?, ranges: Swift.UnsafeMutablePointer<CoreFoundation.CFRange>?, count: CoreFoundation.CFIndex, options: CoreFoundation._CFRegularExpressionMatchingOptions, stop: Swift.UnsafeMutablePointer<Foundation._DarwinCompatibleBoolean>)
func ===(lhs: Foundation.NSNull?, rhs: Foundation.NSNull?) -> Swift.Bool
func ===(lhs: Swift.AnyClass, rhs: Swift.AnyClass) -> Swift.Bool
struct IndexPath : ReferenceConvertible, Equatable, Hashable, MutableCollection, RandomAccessCollection, Comparable, ExpressibleByArrayLiteral {
  typealias ReferenceType = Foundation.NSIndexPath
  typealias Element = Swift.Int
  typealias Index = Swift.Array.Index
  typealias Indices = Swift.DefaultRandomAccessIndices<Foundation.IndexPath>
  var _indexes: <null>
  init()
  init<ElementSequence>(indexes: ElementSequence) where ElementSequence : Sequence, ElementSequence.Iterator.Element == Foundation.IndexPath.Element
  init(arrayLiteral indexes: Foundation.IndexPath.Element...)
  init(indexes: [Foundation.IndexPath.Element])
  init(index: Foundation.IndexPath.Element)
  func dropLast() -> Foundation.IndexPath
  mutating func append(_ other: Foundation.IndexPath)
  mutating func append(_ other: Foundation.IndexPath.Element)
  mutating func append(_ other: [Foundation.IndexPath.Element])
  func appending(_ other: Foundation.IndexPath.Element) -> Foundation.IndexPath
  func appending(_ other: Foundation.IndexPath) -> Foundation.IndexPath
  func appending(_ other: [Foundation.IndexPath.Element]) -> Foundation.IndexPath
  subscript(index: Foundation.IndexPath.Index) -> Foundation.IndexPath.Element {
    get {}
    set(newValue) {}
  }
  subscript(range: Swift.Range<Foundation.IndexPath.Index>) -> Foundation.IndexPath {
    get {}
    set(newValue) {}
  }
  func makeIterator() -> Swift.IndexingIterator<Foundation.IndexPath>
  var count: Swift.Int {
    get {}
  }
  var startIndex: Foundation.IndexPath.Index {
    get {}
  }
  var endIndex: Foundation.IndexPath.Index {
    get {}
  }
  func index(before i: Foundation.IndexPath.Index) -> Foundation.IndexPath.Index
  func index(after i: Foundation.IndexPath.Index) -> Foundation.IndexPath.Index
  func compare(_ other: Foundation.IndexPath) -> Foundation.ComparisonResult
  var hashValue: Swift.Int {
    get {}
  }
  init(nsIndexPath: Foundation.IndexPath.ReferenceType)
  func makeReference() -> Foundation.IndexPath.ReferenceType
  static func ==(lhs: Foundation.IndexPath, rhs: Foundation.IndexPath) -> Swift.Bool
  static func +(lhs: Foundation.IndexPath, rhs: Foundation.IndexPath) -> Foundation.IndexPath
  static func +=(lhs: inout Foundation.IndexPath, rhs: Foundation.IndexPath)
  static func <(lhs: Foundation.IndexPath, rhs: Foundation.IndexPath) -> Swift.Bool
  static func <=(lhs: Foundation.IndexPath, rhs: Foundation.IndexPath) -> Swift.Bool
  static func >(lhs: Foundation.IndexPath, rhs: Foundation.IndexPath) -> Swift.Bool
  static func >=(lhs: Foundation.IndexPath, rhs: Foundation.IndexPath) -> Swift.Bool
  typealias _Element = Foundation.IndexPath.Element
  typealias SubSequence = Foundation.IndexPath
  typealias Iterator = Swift.IndexingIterator<Foundation.IndexPath>
  typealias IndexDistance = Swift.Int
}
extension IndexPath : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension IndexPath : _ObjectTypeBridgeable {
  static func _getObjectiveCType() -> Any.Type
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSIndexPath
  static func _forceBridgeFromObjectiveC(_ x: Foundation.NSIndexPath, result: inout Foundation.IndexPath?)
  static func _conditionallyBridgeFromObjectiveC(_ x: Foundation.NSIndexPath, result: inout Foundation.IndexPath?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSIndexPath?) -> Foundation.IndexPath
  typealias _ObjectType = Foundation.NSIndexPath
}
protocol NSObjectProtocol : class {
  func isEqual(_ object: Any?) -> Swift.Bool
  var hash: Swift.Int { get }
  func `self`() -> Self
  func isProxy() -> Swift.Bool
  var description: Swift.String { get }
  var debugDescription: Swift.String { get }
}
extension NSObjectProtocol {
  var debugDescription: Swift.String {
    get {}
  }
}
struct NSAlignmentOptions : OptionSet {
  var rawValue: <null>
  init(rawValue: Swift.UInt64)
  static var AlignMinXInward: Foundation.NSAlignmentOptions
  static var AlignMinYInward: Foundation.NSAlignmentOptions
  static var AlignMaxXInward: Foundation.NSAlignmentOptions
  static var AlignMaxYInward: Foundation.NSAlignmentOptions
  static var AlignWidthInward: Foundation.NSAlignmentOptions
  static var AlignHeightInward: Foundation.NSAlignmentOptions
  static var AlignMinXOutward: Foundation.NSAlignmentOptions
  static var AlignMinYOutward: Foundation.NSAlignmentOptions
  static var AlignMaxXOutward: Foundation.NSAlignmentOptions
  static var AlignMaxYOutward: Foundation.NSAlignmentOptions
  static var AlignWidthOutward: Foundation.NSAlignmentOptions
  static var AlignHeightOutward: Foundation.NSAlignmentOptions
  static var AlignMinXNearest: Foundation.NSAlignmentOptions
  static var AlignMinYNearest: Foundation.NSAlignmentOptions
  static var AlignMaxXNearest: Foundation.NSAlignmentOptions
  static var AlignMaxYNearest: Foundation.NSAlignmentOptions
  static var AlignWidthNearest: Foundation.NSAlignmentOptions
  static var AlignHeightNearest: Foundation.NSAlignmentOptions
  static var AlignRectFlipped: Foundation.NSAlignmentOptions
  static var AlignAllEdgesInward: [Foundation.NSAlignmentOptions]
  static var AlignAllEdgesOutward: [Foundation.NSAlignmentOptions]
  static var AlignAllEdgesNearest: [Foundation.NSAlignmentOptions]
  typealias Element = Foundation.NSAlignmentOptions
  typealias RawValue = Swift.UInt64
}
func handle(_ error: Foundation.NSDecimalNumber.CalculationError, _ handler: NSDecimalNumberBehaviors)
func ilogb(_ x: Foundation.CGFloat) -> Swift.Int
func _NSXMLParserExternalEntityWithURL(_ interface: CoreFoundation._CFXMLInterface, urlStr: Swift.UnsafePointer<Swift.Int8>, identifier: Swift.UnsafePointer<Swift.Int8>, context: CoreFoundation._CFXMLInterfaceParserContext, originalLoaderFunction: @convention(c) (Swift.UnsafePointer<Swift.Int8>, Swift.UnsafePointer<Swift.Int8>, CoreFoundation._CFXMLInterfaceParserContext) -> CoreFoundation._CFXMLInterfaceParserInput) -> CoreFoundation._CFXMLInterfaceParserInput?
func _CFSwiftCharacterSetMutableCopy(_ cset: CoreFoundation.CFTypeRef) -> Swift.Unmanaged<CoreFoundation.CFMutableCharacterSet>
var NSFileWriteUnsupportedSchemeError: Swift.Int {
  get {}
}
func tgamma(_ x: Foundation.CGFloat) -> Foundation.CGFloat
func integerAdd(_ result: inout Foundation.WideDecimal, _ left: inout Foundation.Decimal, _ right: inout Foundation.Decimal) -> Foundation.NSDecimalNumber.CalculationError
func _CFSwiftDictionaryGetValueIfPresent(_ dictionary: AnyObject, key: AnyObject, value: Swift.UnsafeMutablePointer<Swift.Unmanaged<AnyObject>?>?) -> Swift.Bool
let NSRecoveryAttempterErrorKey: Swift.String
func _CFSwiftSetGetCountOfValue(_ set: AnyObject, value: AnyObject) -> CoreFoundation.CFIndex
protocol NSSecureCoding : NSCoding {
  static var supportsSecureCoding: Swift.Bool { get }
}
struct NSZone : ExpressibleByNilLiteral {
  init()
  init(nilLiteral: ())
}
var NSUbiquitousFileUbiquityServerNotAvailable: Swift.Int {
  get {}
}
func NSPointToCGPoint(_ nspoint: Foundation.NSPoint) -> Foundation.CGPoint
func _CFSwiftMutableSetAddCharactersInString(_ characterSet: CoreFoundation.CFTypeRef, _ string: CoreFoundation.CFString)
var NSURLErrorCancelledReasonUserForceQuitApplication: Swift.Int {
  get {}
}
class Pipe : Foundation.NSObject {
  final let readHandle: <null>
  final let writeHandle: <null>
  init()
  var fileHandleForReading: Foundation.FileHandle {
    get {}
  }
  var fileHandleForWriting: Foundation.FileHandle {
    get {}
  }
  @objc deinit
}
func getExpectedContentLength(fromHeaderFields headerFields: [Swift.String : Swift.String]?) -> Swift.Int64?
class Operation : Foundation.NSObject {
  final let lock: Foundation.NSLock
  weak var _queue: <null>
  var _cancelled: Swift.Bool
  var _executing: Swift.Bool
  var _finished: Swift.Bool
  var _ready: Swift.Bool
  var _dependencies: Swift.Set<Foundation.Operation>
  var _group: Dispatch.DispatchGroup
  var _depGroup: Dispatch.DispatchGroup
  var _groups: [Dispatch.DispatchGroup]
  init()
  func _leaveGroups()
  func start()
  func finish()
  func main()
  var isCancelled: Swift.Bool {
    get {}
  }
  func cancel()
  var isExecuting: Swift.Bool {
    get {}
  }
  var isFinished: Swift.Bool {
    get {}
  }
  var isAsynchronous: Swift.Bool {
    get {}
  }
  var isReady: Swift.Bool {
    get {}
  }
  func addDependency(_ op: Foundation.Operation)
  func removeDependency(_ op: Foundation.Operation)
  var dependencies: [Foundation.Operation] {
    get {}
  }
  var queuePriority: <null>
  var completionBlock: <null>
  func waitUntilFinished()
  var threadPriority: <null>
  var qualityOfService: <null>
  var name: <null>
  func _waitUntilReady()
  @objc deinit
}
extension Operation {
  func willChangeValue(forKey key: Swift.String)
  func didChangeValue(forKey key: Swift.String)
}
extension Operation {
  enum QueuePriority : Swift.Int {
    case veryLow
    case low
    case normal
    case high
    case veryHigh
    typealias RawValue = Swift.Int
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.Int)
    var rawValue: Swift.Int {
      get {}
    }
  }
}
let _NSObjCSizesAndAlignments: [Foundation._NSSimpleObjCType : (Swift.Int, Swift.Int)]
func __NSDataInvokeDeallocatorFree(_ mem: Swift.UnsafeMutableRawPointer, _ length: Swift.Int)
final class _MutableHandle<MutableType> where MutableType : Foundation.NSObject, MutableType : NSCopying {
  @_versioned final var _pointer: MutableType
  init(reference: MutableType)
  init(adoptingReference reference: MutableType)
  final func map<ReturnType>(_ whatToDo: (MutableType) throws -> ReturnType) rethrows -> ReturnType
  final func _copiedReference() -> MutableType
  final func _uncopiedReference() -> MutableType
  @objc deinit
}
let NSURLAuthenticationMethodClientCertificate: Swift.String
func NSTemporaryDirectory() -> Swift.String
enum ComparisonResult : Swift.Int {
  case orderedAscending
  case orderedSame
  case orderedDescending
  static func _fromCF(_ val: CoreFoundation.CFComparisonResult) -> Foundation.ComparisonResult
  typealias RawValue = Swift.Int
  var hashValue: Swift.Int {
    get {}
  }
  init?(rawValue: Swift.Int)
  var rawValue: Swift.Int {
    get {}
  }
}
class XMLElement : Foundation.XMLNode {
  convenience init(name: Swift.String)
  init(name: Swift.String, uri: Swift.String?)
  convenience init(name: Swift.String, stringValue string: Swift.String?)
  init(xmlString string: Swift.String) throws
  convenience init(kind: Foundation.XMLNode.Kind, options: Foundation.XMLNode.Options = default)
  func elements(forName name: Swift.String) -> [Foundation.XMLElement]
  func elements(forLocalName localName: Swift.String, uri: Swift.String?) -> [Foundation.XMLElement]
  func addAttribute(_ attribute: Foundation.XMLNode)
  func removeAttribute(forName name: Swift.String)
  var attributes: [Foundation.XMLNode]? {
    get {}
    set(newValue) {}
  }
  func removeAttributes()
  func setAttributesWith(_ attributes: [Swift.String : Swift.String])
  func attribute(forName name: Swift.String) -> Foundation.XMLNode?
  func attribute(forLocalName localName: Swift.String, uri: Swift.String?) -> Foundation.XMLNode?
  func addNamespace(_ aNamespace: Foundation.XMLNode)
  func removeNamespace(forPrefix name: Swift.String)
  var namespaces: [Foundation.XMLNode]? {
    get {}
  }
  func namespace(forPrefix name: Swift.String) -> Foundation.XMLNode?
  func resolveNamespace(forName name: Swift.String) -> Foundation.XMLNode?
  func resolvePrefix(forNamespaceURI namespaceURI: Swift.String) -> Swift.String?
  func insertChild(_ child: Foundation.XMLNode, at index: Swift.Int)
  func insertChildren(_ children: [Foundation.XMLNode], at index: Swift.Int)
  func removeChild(at index: Swift.Int)
  func setChildren(_ children: [Foundation.XMLNode]?)
  func addChild(_ child: Foundation.XMLNode)
  func replaceChild(at index: Swift.Int, with node: Foundation.XMLNode)
  func normalizeAdjacentTextNodesPreservingCDATA(_ preserve: Swift.Bool)
  override class func _objectNodeForNode(_ node: CoreFoundation._CFXMLNodePtr) -> Foundation.XMLElement
  init(ptr: CoreFoundation._CFXMLNodePtr)
  @objc deinit
}
extension XMLElement {
  func setAttributesAs(_ attributes: [Foundation.NSObject : AnyObject])
}
enum _NSThreadStatus {
  case initialized
  case starting
  case executing
  case finished
  infix static func ==(a: Foundation._NSThreadStatus, b: Foundation._NSThreadStatus) -> Swift.Bool
  var hashValue: Swift.Int {
    get {}
  }
}
class NumberFormatter : Foundation.Formatter {
  typealias CFType = CoreFoundation.CFNumberFormatter
  var _currentCfFormatter: <null>
  var _cfFormatter: Foundation.NumberFormatter.CFType {
    get {}
  }
  var formattingContext: <null>
  func objectValue(_ string: Swift.String, range: inout Foundation.NSRange) throws -> Any?
  override func string(for obj: Any) -> Swift.String?
  func string(from number: Foundation.NSNumber) -> Swift.String?
  func number(from string: Swift.String) -> Foundation.NSNumber?
  class func localizedString(from num: Foundation.NSNumber, number nstyle: Foundation.NumberFormatter.Style) -> Swift.String
  func _reset()
  func _setFormatterAttributes(_ formatter: CoreFoundation.CFNumberFormatter)
  func _setFormatterAttribute(_ formatter: CoreFoundation.CFNumberFormatter, attributeName: CoreFoundation.CFString, value: AnyObject?)
  var _numberStyle: <null>
  var numberStyle: Foundation.NumberFormatter.Style {
    get {}
    set(newValue) {}
  }
  var _locale: <null>
  var locale: Foundation.Locale! {
    get {}
    set(newValue) {}
  }
  var _generatesDecimalNumbers: <null>
  var generatesDecimalNumbers: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var _negativeFormat: <null>
  var negativeFormat: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _textAttributesForNegativeValues: <null>
  var textAttributesForNegativeValues: [Swift.String : Any]? {
    get {}
    set(newValue) {}
  }
  var _positiveFormat: <null>
  var positiveFormat: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _textAttributesForPositiveValues: <null>
  var textAttributesForPositiveValues: [Swift.String : Any]? {
    get {}
    set(newValue) {}
  }
  var _allowsFloats: <null>
  var allowsFloats: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var _decimalSeparator: <null>
  var decimalSeparator: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _alwaysShowsDecimalSeparator: <null>
  var alwaysShowsDecimalSeparator: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var _currencyDecimalSeparator: <null>
  var currencyDecimalSeparator: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _usesGroupingSeparator: <null>
  var usesGroupingSeparator: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var _groupingSeparator: <null>
  var groupingSeparator: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _zeroSymbol: <null>
  var zeroSymbol: Swift.String? {
    get {}
    set(newValue) {}
  }
  var _textAttributesForZero: <null>
  var textAttributesForZero: [Swift.String : Any]? {
    get {}
    set(newValue) {}
  }
  var _nilSymbol: <null>
  var nilSymbol: Swift.String {
    get {}
    set(newValue) {}
  }
  var _textAttributesForNil: <null>
  var textAttributesForNil: [Swift.String : Any]? {
    get {}
    set(newValue) {}
  }
  var _notANumberSymbol: <null>
  var notANumberSymbol: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _textAttributesForNotANumber: <null>
  var textAttributesForNotANumber: [Swift.String : Any]? {
    get {}
    set(newValue) {}
  }
  var _positiveInfinitySymbol: <null>
  var positiveInfinitySymbol: Swift.String {
    get {}
    set(newValue) {}
  }
  var _textAttributesForPositiveInfinity: <null>
  var textAttributesForPositiveInfinity: [Swift.String : Any]? {
    get {}
    set(newValue) {}
  }
  var _negativeInfinitySymbol: <null>
  var negativeInfinitySymbol: Swift.String {
    get {}
    set(newValue) {}
  }
  var _textAttributesForNegativeInfinity: <null>
  var textAttributesForNegativeInfinity: [Swift.String : Any]? {
    get {}
    set(newValue) {}
  }
  var _positivePrefix: <null>
  var positivePrefix: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _positiveSuffix: <null>
  var positiveSuffix: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _negativePrefix: <null>
  var negativePrefix: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _negativeSuffix: <null>
  var negativeSuffix: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _currencyCode: <null>
  var currencyCode: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _currencySymbol: <null>
  var currencySymbol: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _internationalCurrencySymbol: <null>
  var internationalCurrencySymbol: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _percentSymbol: <null>
  var percentSymbol: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _perMillSymbol: <null>
  var perMillSymbol: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _minusSign: <null>
  var minusSign: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _plusSign: <null>
  var plusSign: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _exponentSymbol: <null>
  var exponentSymbol: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _groupingSize: <null>
  var groupingSize: Swift.Int {
    get {}
    set(newValue) {}
  }
  var _secondaryGroupingSize: <null>
  var secondaryGroupingSize: Swift.Int {
    get {}
    set(newValue) {}
  }
  var _multiplier: <null>
  var multiplier: Foundation.NSNumber? {
    get {}
    set(newValue) {}
  }
  var _formatWidth: <null>
  var formatWidth: Swift.Int {
    get {}
    set(newValue) {}
  }
  var _paddingCharacter: <null>
  var paddingCharacter: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _paddingPosition: <null>
  var paddingPosition: Foundation.NumberFormatter.PadPosition {
    get {}
    set(newValue) {}
  }
  var _roundingMode: <null>
  var roundingMode: Foundation.NumberFormatter.RoundingMode {
    get {}
    set(newValue) {}
  }
  var _roundingIncrement: <null>
  var roundingIncrement: Foundation.NSNumber! {
    get {}
    set(newValue) {}
  }
  var _minimumIntegerDigits: <null>
  var minimumIntegerDigits: Swift.Int {
    get {}
    set(newValue) {}
  }
  var _maximumIntegerDigits: <null>
  var maximumIntegerDigits: Swift.Int {
    get {}
    set(newValue) {}
  }
  var _minimumFractionDigits: <null>
  var minimumFractionDigits: Swift.Int {
    get {}
    set(newValue) {}
  }
  var _maximumFractionDigits: <null>
  var maximumFractionDigits: Swift.Int {
    get {}
    set(newValue) {}
  }
  var _minimum: <null>
  var minimum: Foundation.NSNumber? {
    get {}
    set(newValue) {}
  }
  var _maximum: <null>
  var maximum: Foundation.NSNumber? {
    get {}
    set(newValue) {}
  }
  var _currencyGroupingSeparator: <null>
  var currencyGroupingSeparator: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _lenient: <null>
  var isLenient: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var _usesSignificantDigits: <null>
  var usesSignificantDigits: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var _minimumSignificantDigits: <null>
  var minimumSignificantDigits: Swift.Int {
    get {}
    set(newValue) {}
  }
  var _maximumSignificantDigits: <null>
  var maximumSignificantDigits: Swift.Int {
    get {}
    set(newValue) {}
  }
  var _partialStringValidationEnabled: <null>
  var isPartialStringValidationEnabled: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var _hasThousandSeparators: <null>
  var hasThousandSeparators: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var _thousandSeparator: <null>
  var thousandSeparator: Swift.String! {
    get {}
    set(newValue) {}
  }
  var _localizesFormat: <null>
  var localizesFormat: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var _format: <null>
  var format: Swift.String {
    get {}
    set(newValue) {}
  }
  var _attributedStringForZero: <null>
  var attributedStringForZero: Foundation.NSAttributedString {
    get {}
    set(newValue) {}
  }
  var _attributedStringForNil: <null>
  var attributedStringForNil: Foundation.NSAttributedString {
    get {}
    set(newValue) {}
  }
  var _attributedStringForNotANumber: <null>
  var attributedStringForNotANumber: Foundation.NSAttributedString {
    get {}
    set(newValue) {}
  }
  @objc deinit
  init()
  required init?(coder: Foundation.NSCoder)
}
extension NumberFormatter {
  enum Style : Swift.UInt {
    case none
    case decimal
    case currency
    case percent
    case scientific
    case spellOut
    case ordinal
    case currencyISOCode
    case currencyPlural
    case currencyAccounting
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
  enum PadPosition : Swift.UInt {
    case beforePrefix
    case afterPrefix
    case beforeSuffix
    case afterSuffix
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
  enum RoundingMode : Swift.UInt {
    case ceiling
    case floor
    case down
    case up
    case halfEven
    case halfDown
    case halfUp
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
var NSURLErrorCannotLoadFromNetwork: Swift.Int {
  get {}
}
func _NSXMLParserNotationDecl(_ ctx: CoreFoundation._CFXMLInterface, name: Swift.UnsafePointer<Swift.UInt8>, publicId: Swift.UnsafePointer<Swift.UInt8>, systemId: Swift.UnsafePointer<Swift.UInt8>)
func _CFSwiftGetTypeID(_ cf: AnyObject) -> CoreFoundation.CFTypeID
func cos(_ x: Foundation.CGFloat) -> Foundation.CGFloat
protocol _ObjectTypeBridgeable : _ObjectBridgeable {
  associatedtype _ObjectType : AnyObject
  func _bridgeToObjectiveC() -> Self._ObjectType
  static func _forceBridgeFromObjectiveC(_ source: Self._ObjectType, result: inout Self?)
  @discardableResult static func _conditionallyBridgeFromObjectiveC(_ source: Self._ObjectType, result: inout Self?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Self._ObjectType?) -> Self
}
extension _ObjectTypeBridgeable {
  func _bridgeToAnyObject() -> AnyObject
}
var NSURLErrorResourceUnavailable: Swift.Int {
  get {}
}
var NSURLErrorServerCertificateNotYetValid: Swift.Int {
  get {}
}
protocol _BridgedStoredNSError : __BridgedNSError, _ObjectTypeBridgeableError, CustomNSError, Hashable {
  associatedtype Code : _ErrorCodeProtocol
  var code: Self.Code { get }
  var _nsError: Foundation.NSError { get }
  init(_nsError error: Foundation.NSError)
}
extension _BridgedStoredNSError {
  static func ==(lhs: Self, rhs: Self) -> Swift.Bool
}
extension _BridgedStoredNSError where Self.Code : RawRepresentable, Self.Code.RawValue : SignedInteger {
  var code: Self.Code {
    get {}
  }
  convenience init(_ code: Self.Code, userInfo: [Swift.String : Any] = default)
  var userInfo: [Swift.String : Any] {
    get {}
  }
}
extension _BridgedStoredNSError where Self.Code : RawRepresentable, Self.Code.RawValue : UnsignedInteger {
  var code: Self.Code {
    get {}
  }
  convenience init(_ code: Self.Code, userInfo: [Swift.String : Any] = default)
}
extension _BridgedStoredNSError {
  convenience init?(_bridgedNSError error: Foundation.NSError)
}
extension _BridgedStoredNSError {
  static var errorDomain: Swift.String {
    get {}
  }
  var errorCode: Swift.Int {
    get {}
  }
  var errorUserInfo: [Swift.String : Any] {
    get {}
  }
}
extension _BridgedStoredNSError {
  var hashValue: Swift.Int {
    get {}
  }
}
var NSUbiquitousFileNotUploadedDueToQuotaError: Swift.Int {
  get {}
}
func _NSXMLParserComment(_ ctx: CoreFoundation._CFXMLInterface, value: Swift.UnsafePointer<Swift.UInt8>)
class NSMutableSet : Foundation.NSSet {
  func add(_ object: Any)
  func remove(_ object: Any)
  init(objects: Swift.UnsafePointer<AnyObject>!, count cnt: Swift.Int)
  convenience init()
  required init(capacity numItems: Swift.Int)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  func addObjects(from array: [Any])
  func intersect(_ otherSet: Swift.Set<Swift.AnyHashable>)
  func minus(_ otherSet: Swift.Set<Swift.AnyHashable>)
  func removeAllObjects()
  func union(_ otherSet: Swift.Set<Swift.AnyHashable>)
  func setSet(_ otherSet: Swift.Set<Swift.AnyHashable>)
  @objc deinit
}
extension NSMutableSet {
  func filter(using predicate: Foundation.NSPredicate)
}
extension NSMutableSet {
  var _cfMutableObject: CoreFoundation.CFMutableSet {
    get {}
  }
}
func existingHeaderField(_ key: Swift.String, inHeaderFields fields: [Swift.String : Swift.String]) -> (Swift.String, Swift.String)?
class NSDecimalNumber : Foundation.NSNumber {
  final let decimal: <null>
  convenience init(mantissa: Swift.UInt64, exponent: Swift.Int16, isNegative: Swift.Bool)
  init(decimal dcm: Foundation.Decimal)
  convenience init(string numberValue: Swift.String?)
  convenience init(string numberValue: Swift.String?, locale: AnyObject?)
  required init?(coder: Foundation.NSCoder)
  required convenience init(floatLiteral value: Swift.Double)
  required convenience init(booleanLiteral value: Swift.Bool)
  required convenience init(integerLiteral value: Swift.Int)
  required convenience init(bytes buffer: Swift.UnsafeRawPointer, objCType type: Swift.UnsafePointer<Swift.Int8>)
  override func description(withLocale locale: Foundation.Locale?) -> Swift.String
  class var zero: Foundation.NSDecimalNumber {
    get {}
  }
  class var one: Foundation.NSDecimalNumber {
    get {}
  }
  class var minimum: Foundation.NSDecimalNumber {
    get {}
  }
  class var maximum: Foundation.NSDecimalNumber {
    get {}
  }
  class var notANumber: Foundation.NSDecimalNumber {
    get {}
  }
  func adding(_ other: Foundation.NSDecimalNumber) -> Foundation.NSDecimalNumber
  func adding(_ other: Foundation.NSDecimalNumber, withBehavior b: NSDecimalNumberBehaviors?) -> Foundation.NSDecimalNumber
  func subtracting(_ other: Foundation.NSDecimalNumber) -> Foundation.NSDecimalNumber
  func subtracting(_ other: Foundation.NSDecimalNumber, withBehavior b: NSDecimalNumberBehaviors?) -> Foundation.NSDecimalNumber
  func multiplying(by other: Foundation.NSDecimalNumber) -> Foundation.NSDecimalNumber
  func multiplying(by other: Foundation.NSDecimalNumber, withBehavior b: NSDecimalNumberBehaviors?) -> Foundation.NSDecimalNumber
  func dividing(by other: Foundation.NSDecimalNumber) -> Foundation.NSDecimalNumber
  func dividing(by other: Foundation.NSDecimalNumber, withBehavior b: NSDecimalNumberBehaviors?) -> Foundation.NSDecimalNumber
  func raising(toPower power: Swift.Int) -> Foundation.NSDecimalNumber
  func raising(toPower power: Swift.Int, withBehavior b: NSDecimalNumberBehaviors?) -> Foundation.NSDecimalNumber
  func multiplying(byPowerOf10 power: Swift.Int16) -> Foundation.NSDecimalNumber
  func multiplying(byPowerOf10 power: Swift.Int16, withBehavior b: NSDecimalNumberBehaviors?) -> Foundation.NSDecimalNumber
  func rounding(accordingToBehavior b: NSDecimalNumberBehaviors?) -> Foundation.NSDecimalNumber
  override func compare(_ decimalNumber: Foundation.NSNumber) -> Foundation.ComparisonResult
  class var defaultBehavior: NSDecimalNumberBehaviors {
    get {}
  }
  static var OBJC_TYPE: Swift.ContiguousArray<Swift.CChar>
  override var objCType: Swift.UnsafePointer<Swift.Int8> {
    override get {}
  }
  override var int8Value: Swift.Int8 {
    override get {}
  }
  override var uint8Value: Swift.UInt8 {
    override get {}
  }
  override var int16Value: Swift.Int16 {
    override get {}
  }
  override var uint16Value: Swift.UInt16 {
    override get {}
  }
  override var int32Value: Swift.Int32 {
    override get {}
  }
  override var uint32Value: Swift.UInt32 {
    override get {}
  }
  override var int64Value: Swift.Int64 {
    override get {}
  }
  override var uint64Value: Swift.UInt64 {
    override get {}
  }
  override var floatValue: Swift.Float {
    override get {}
  }
  override var doubleValue: Swift.Double {
    override get {}
  }
  override var boolValue: Swift.Bool {
    override get {}
  }
  override var intValue: Swift.Int {
    override get {}
  }
  override var uintValue: Swift.UInt {
    override get {}
  }
  override func isEqual(_ value: Any?) -> Swift.Bool
  @objc deinit
  init(value: Swift.Int8)
  init(value: Swift.UInt8)
  init(value: Swift.Int16)
  init(value: Swift.UInt16)
  init(value: Swift.Int32)
  init(value: Swift.UInt32)
  init(value: Swift.Int)
  init(value: Swift.UInt)
  init(value: Swift.Int64)
  init(value: Swift.UInt64)
  init(value: Swift.Float)
  init(value: Swift.Double)
  init(value: Swift.Bool)
  init()
}
extension NSDecimalNumber {
  enum RoundingMode : Swift.UInt {
    case plain
    case down
    case up
    case bankers
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
  enum CalculationError : Swift.UInt {
    case noError
    case lossOfPrecision
    case underflow
    case overflow
    case divideByZero
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
func _NSRunLoopNew(_ cf: CoreFoundation.CFRunLoop) -> Swift.Unmanaged<AnyObject>
let NSURLAuthenticationMethodHTMLForm: Swift.String
final class _HTTPBodyFileSource {
  final let fileURL: <null>
  final let channel: <null>
  final let workQueue: <null>
  final let dataAvailableHandler: <null>
  final var hasActiveReadHandler: Swift.Bool
  final var availableChunk: <null>
  init(fileURL: Foundation.URL, workQueue: Dispatch.DispatchQueue, dataAvailableHandler: @escaping () -> Swift.Void)
  enum _Chunk {
    case empty
    case errorDetected(Swift.Int)
    case data(Dispatch.DispatchData)
    case done(Dispatch.DispatchData?)
  }
  @objc deinit
}
extension _HTTPBodyFileSource {
  final var desiredBufferLength: Swift.Int {
    final get {}
  }
  final func readNextChunk()
  final func append(data: Dispatch.DispatchData, endOfFile: Swift.Bool)
  final var availableByteCount: Swift.Int {
    final get {}
  }
}
extension _HTTPBodyFileSource : _HTTPBodySource {
  final func getNextChunk(withLength length: Swift.Int) -> Foundation._HTTPBodySourceDataChunk
}
class URLSessionDownloadTask : Foundation.URLSessionTask {
  var fileLength: Swift.Double
  func cancel(byProducingResumeData completionHandler: @escaping (Foundation.Data?) -> Swift.Void)
  @objc deinit
  init()
  init(session: Foundation.URLSession, request: Foundation.URLRequest, taskIdentifier: Swift.Int, body: Foundation.URLSessionTask._Body)
}
let __kCFGrowable: CoreFoundation.CFOptionFlags
final class _SwiftNSCharacterSet : Foundation.NSCharacterSet, _SwiftNativeFoundationType {
  typealias ImmutableType = Foundation.NSCharacterSet
  typealias MutableType = Foundation.NSMutableCharacterSet
  final var __wrapped: <null>
  init(immutableObject: AnyObject)
  init(mutableObject: AnyObject)
  required init(unmanagedImmutableObject: Swift.Unmanaged<Foundation._SwiftNSCharacterSet.ImmutableType>)
  required init(unmanagedMutableObject: Swift.Unmanaged<Foundation._SwiftNSCharacterSet.MutableType>)
  required convenience init(coder aDecoder: Foundation.NSCoder)
  @objc deinit
  override final func copy(with zone: Foundation.NSZone? = default) -> Any
  override final func mutableCopy(with zone: Foundation.NSZone? = default) -> Any
  override final var classForCoder: Swift.AnyClass {
    override final get {}
  }
  override final var bitmapRepresentation: Foundation.Data {
    override final get {}
  }
  override final var inverted: Foundation.CharacterSet {
    override final get {}
  }
  override final func hasMemberInPlane(_ thePlane: Swift.UInt8) -> Swift.Bool
  override final func characterIsMember(_ member: Foundation.unichar) -> Swift.Bool
  override final func longCharacterIsMember(_ member: Swift.UInt32) -> Swift.Bool
  override final func isSuperset(of other: Foundation.CharacterSet) -> Swift.Bool
  init()
  init(range aRange: Foundation.NSRange)
  init(charactersIn aString: Swift.String)
  init(bitmapRepresentation data: Foundation.Data)
}
func _CFSwiftDictionaryContainsValue(_ dictionary: AnyObject, value: AnyObject) -> Swift.Bool
func _CFSwiftCharacterSetRetainedBitmapRepresentation(_ cset: CoreFoundation.CFTypeRef) -> Swift.Unmanaged<CoreFoundation.CFData>
struct UnsafeMutablePointer<Pointee> : Strideable, Hashable, _Pointer {
  typealias Distance = Swift.Int
  let _rawValue: <null>
  init(_ _rawValue: Builtin.RawPointer)
  init(_ from: Swift.OpaquePointer)
  init?(_ from: Swift.OpaquePointer?)
  init?(bitPattern: Swift.Int)
  init?(bitPattern: Swift.UInt)
  init(_ other: Swift.UnsafeMutablePointer<Pointee>)
  init?(_ other: Swift.UnsafeMutablePointer<Pointee>?)
  init(mutating other: Swift.UnsafePointer<Pointee>)
  init?(mutating other: Swift.UnsafePointer<Pointee>?)
  static func allocate(capacity count: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  func deallocate(capacity: Swift.Int)
  var pointee: Pointee
  var pointee: Pointee {
    unsafeAddress {}
    unsafeMutableAddress {}
  }
  func initialize(to newValue: Pointee, count: Swift.Int = default)
  func move() -> Pointee
  func assign(from source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  func moveInitialize(from source: Swift.UnsafeMutablePointer<Pointee>, count: Swift.Int)
  func initialize(from source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, deprecated, message: "it will be removed in Swift 4.0.  Please use 'UnsafeMutableBufferPointer.initialize(from:)' instead") func initialize<C>(from source: C) where C : Collection, C.Iterator.Element == Pointee
  func moveAssign(from source: Swift.UnsafeMutablePointer<Pointee>, count: Swift.Int)
  @discardableResult func deinitialize(count: Swift.Int = default) -> Swift.UnsafeMutableRawPointer
  func withMemoryRebound<T, Result>(to type: T.Type, capacity count: Swift.Int, _ body: (Swift.UnsafeMutablePointer<T>) throws -> Result) rethrows -> Result
  subscript(i: Swift.Int) -> Pointee {
    unsafeAddress {}
    unsafeMutableAddress {}
  }
  var hashValue: Swift.Int {
    get {}
  }
  func successor() -> Swift.UnsafeMutablePointer<Pointee>
  func predecessor() -> Swift.UnsafeMutablePointer<Pointee>
  func distance(to end: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Int
  func advanced(by n: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  typealias Stride = Swift.Int
  typealias _DisabledRangeIndex = Swift._DisabledRangeIndex_
}
extension UnsafeMutablePointer {
  static func ==(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Bool
  static func <(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Bool
  static func +(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  static func +(lhs: Swift.Int, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.UnsafeMutablePointer<Pointee>
  static func -(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  static func -(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Int
  static func +=(lhs: inout Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int)
  static func -=(lhs: inout Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int)
}
extension UnsafeMutablePointer : CustomDebugStringConvertible {
  var debugDescription: Swift.String {
    get {}
  }
}
extension UnsafeMutablePointer : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension UnsafeMutablePointer : CustomPlaygroundQuickLookable {
  var summary: Swift.String {
    get {}
  }
  var customPlaygroundQuickLook: Swift.PlaygroundQuickLook {
    get {}
  }
}
extension UnsafeMutablePointer {
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init<U>(_ from: Swift.UnsafeMutablePointer<U>)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init?<U>(_ from: Swift.UnsafeMutablePointer<U>?)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init<U>(_ from: Swift.UnsafePointer<U>)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init?<U>(_ from: Swift.UnsafePointer<U>?)
  @available(*, unavailable, renamed: "init(mutating:)") init(_ from: Swift.UnsafePointer<Pointee>)
  @available(*, unavailable, renamed: "init(mutating:)") init?(_ from: Swift.UnsafePointer<Pointee>?)
  @available(*, unavailable, renamed: "Pointee") typealias Memory = Pointee
  @available(*, unavailable, message: "use 'nil' literal") init()
  @available(*, unavailable, renamed: "allocate(capacity:)") static func alloc(_ num: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  @available(*, unavailable, message: "use 'UnsafeMutablePointer.allocate(capacity:)'") init(allocatingCapacity: Swift.Int)
  @available(*, unavailable, renamed: "deallocate(capacity:)") func dealloc(_ num: Swift.Int)
  @available(*, unavailable, renamed: "deallocate(capacity:)") func deallocateCapacity(_ num: Swift.Int)
  @available(*, unavailable, renamed: "pointee") var memory: Pointee {
    get {}
    set(newValue) {}
  }
  @available(*, unavailable, renamed: "initialize(to:)") func initialize(_ newvalue: Pointee)
  @available(*, unavailable, renamed: "initialize(to:count:)") func initialize(with newvalue: Pointee, count: Swift.Int = default)
  @available(*, unavailable, renamed: "deinitialize(count:)") func destroy()
  @available(*, unavailable, renamed: "deinitialize(count:)") func destroy(_ count: Swift.Int)
  @available(*, unavailable, renamed: "initialize(from:)") func initializeFrom<C>(_ source: C) where C : Collection
  @available(*, unavailable, renamed: "initialize(from:count:)") func initializeFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "assign(from:count:)") func assignFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "assign(from:count:)") func assignBackwardFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveInitialize(from:count:)") func moveInitializeFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveInitialize(from:count:)") func moveInitializeBackwardFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveAssign(from:count:)") func moveAssignFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
}
extension UnsafeMutablePointer : CVarArg {
  var _cVarArgEncoding: [Swift.Int] {
    get {}
  }
}
func __NSLocaleCurrent() -> Foundation.NSLocale
class UnitConverterLinear : Foundation.UnitConverter, NSSecureCoding {
  var coefficient: <null>
  var constant: <null>
  convenience init(coefficient: Swift.Double)
  init(coefficient: Swift.Double, constant: Swift.Double)
  override func baseUnitValue(fromValue value: Swift.Double) -> Swift.Double
  override func value(fromBaseUnitValue baseUnitValue: Swift.Double) -> Swift.Double
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  @objc deinit
  init()
}
class XMLNode : Foundation.NSObject, NSCopying {
  enum Kind : Swift.UInt {
    case invalid
    case document
    case element
    case attribute
    case namespace
    case processingInstruction
    case comment
    case text
    case dtd
    case entityDeclaration
    case attributeDeclaration
    case elementDeclaration
    case notationDeclaration
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
  struct Options : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var nodeIsCDATA: Foundation.XMLNode.Options
    static var nodeExpandEmptyElement: Foundation.XMLNode.Options
    static var nodeCompactEmptyElement: Foundation.XMLNode.Options
    static var nodeUseSingleQuotes: Foundation.XMLNode.Options
    static var nodeUseDoubleQuotes: Foundation.XMLNode.Options
    static var nodeNeverEscapeContents: Foundation.XMLNode.Options
    static var documentTidyHTML: Foundation.XMLNode.Options
    static var documentTidyXML: Foundation.XMLNode.Options
    static var documentValidate: Foundation.XMLNode.Options
    static var nodeLoadExternalEntitiesAlways: Foundation.XMLNode.Options
    static var nodeLoadExternalEntitiesSameOriginOnly: Foundation.XMLNode.Options
    static var nodeLoadExternalEntitiesNever: Foundation.XMLNode.Options
    static var documentXInclude: Foundation.XMLNode.Options
    static var nodePrettyPrint: Foundation.XMLNode.Options
    static var documentIncludeContentTypeDeclaration: Foundation.XMLNode.Options
    static var nodePreserveNamespaceOrder: Foundation.XMLNode.Options
    static var nodePreserveAttributeOrder: Foundation.XMLNode.Options
    static var nodePreserveEntities: Foundation.XMLNode.Options
    static var nodePreservePrefixes: Foundation.XMLNode.Options
    static var nodePreserveCDATA: Foundation.XMLNode.Options
    static var nodePreserveWhitespace: Foundation.XMLNode.Options
    static var nodePreserveDTD: Foundation.XMLNode.Options
    static var nodePreserveCharacterReferences: Foundation.XMLNode.Options
    static var nodePromoteSignificantWhitespace: Foundation.XMLNode.Options
    static var nodePreserveEmptyElements: Foundation.XMLNode.Options
    static var nodePreserveQuotes: Foundation.XMLNode.Options
    static var nodePreserveAll: Foundation.XMLNode.Options
    typealias Element = Foundation.XMLNode.Options
    typealias RawValue = Swift.UInt
  }
  override func copy() -> Any
  final let _xmlNode: <null>
  func copy(with zone: Foundation.NSZone? = default) -> Any
  convenience init(kind: Foundation.XMLNode.Kind)
  init(kind: Foundation.XMLNode.Kind, options: Foundation.XMLNode.Options = default)
  class func document() -> Any
  class func document(withRootElement element: Foundation.XMLElement) -> Any
  class func element(withName name: Swift.String) -> Any
  class func element(withName name: Swift.String, uri: Swift.String) -> Any
  class func element(withName name: Swift.String, stringValue string: Swift.String) -> Any
  class func element(withName name: Swift.String, children: [Foundation.XMLNode]?, attributes: [Foundation.XMLNode]?) -> Any
  class func attribute(withName name: Swift.String, stringValue: Swift.String) -> Any
  class func attribute(withName name: Swift.String, uri: Swift.String, stringValue: Swift.String) -> Any
  class func namespace(withName name: Swift.String, stringValue: Swift.String) -> Any
  class func processingInstruction(withName name: Swift.String, stringValue: Swift.String) -> Any
  class func comment(withStringValue stringValue: Swift.String) -> Any
  class func text(withStringValue stringValue: Swift.String) -> Any
  class func dtdNode(withXMLString string: Swift.String) -> Any?
  var kind: Foundation.XMLNode.Kind {
    get {}
  }
  var name: Swift.String? {
    get {}
    set(newValue) {}
  }
  var _objectValue: <null>
  var objectValue: Any? {
    get {}
    set(newValue) {}
  }
  var stringValue: Swift.String? {
    get {}
    set(newValue) {}
  }
  func _removeAllChildNodesExceptAttributes()
  func _removeAllChildren()
  func setStringValue(_ string: Swift.String, resolvingEntities resolve: Swift.Bool)
  var index: Swift.Int {
    get {}
  }
  var level: Swift.Int {
    get {}
  }
  var rootDocument: Foundation.XMLDocument? {
    get {}
  }
  var parent: Foundation.XMLNode? {
    get {}
  }
  var childCount: Swift.Int {
    get {}
  }
  var children: [Foundation.XMLNode]? {
    get {}
  }
  func child(at index: Swift.Int) -> Foundation.XMLNode?
  var previousSibling: Foundation.XMLNode? {
    get {}
  }
  var nextSibling: Foundation.XMLNode? {
    get {}
  }
  var previousNode: Foundation.XMLNode? {
    get {}
  }
  var nextNode: Foundation.XMLNode? {
    get {}
  }
  func detach()
  var xPath: Swift.String? {
    get {}
  }
  var localName: Swift.String? {
    get {}
  }
  var prefix: Swift.String? {
    get {}
  }
  var uri: Swift.String? {
    get {}
    set(newValue) {}
  }
  class func localName(forName name: Swift.String) -> Swift.String
  class func prefix(forName name: Swift.String) -> Swift.String?
  class func predefinedNamespace(forPrefix name: Swift.String) -> Foundation.XMLNode?
  override var description: Swift.String {
    override get {}
  }
  var xmlString: Swift.String {
    get {}
  }
  func xmlString(withOptions options: Foundation.XMLNode.Options) -> Swift.String
  func canonicalXMLStringPreservingComments(_ comments: Swift.Bool) -> Swift.String
  func nodes(forXPath xpath: Swift.String) throws -> [Foundation.XMLNode]
  func objects(forXQuery xquery: Swift.String, constants: [Swift.String : Any]?) throws -> [Any]
  func objects(forXQuery xquery: Swift.String) throws -> [Any]
  var _childNodes: <null>
  @objc deinit
  init(ptr: CoreFoundation._CFXMLNodePtr)
  class func _objectNodeForNode(_ node: CoreFoundation._CFXMLNodePtr) -> Foundation.XMLNode
  func _insertChild(_ child: Foundation.XMLNode, atIndex index: Swift.Int)
  func _insertChildren(_ children: [Foundation.XMLNode], atIndex index: Swift.Int)
  func _removeChildAtIndex(_ index: Swift.Int)
  func _setChildren(_ children: [Foundation.XMLNode]?)
  func _addChild(_ child: Foundation.XMLNode)
  func _replaceChildAtIndex(_ index: Swift.Int, withNode node: Foundation.XMLNode)
  init()
}
extension XMLNode : _NSXMLNodeCollectionType {
  struct Index : Comparable {
    let node: <null>
    let offset: <null>
    init(node: CoreFoundation._CFXMLNodePtr?, offset: Swift.Int?)
  }
  subscript(index: Foundation.XMLNode.Index) -> Foundation.XMLNode {
    get {}
  }
  var startIndex: Foundation.XMLNode.Index {
    get {}
  }
  var endIndex: Foundation.XMLNode.Index {
    get {}
  }
  func index(after i: Foundation.XMLNode.Index) -> Foundation.XMLNode.Index
  typealias _Element = Foundation.XMLNode
  typealias SubSequence = Swift.Slice<Foundation.XMLNode>
  typealias Iterator = Swift.IndexingIterator<Foundation.XMLNode>
  typealias IndexDistance = Swift.Int
  typealias Indices = Swift.DefaultIndices<Foundation.XMLNode>
}
func addShort<T>(_ d: inout T, _ add: Swift.UInt16) -> Foundation.NSDecimalNumber.CalculationError where T : VariableLengthNumber
class NSCharacterSet : Foundation.NSObject, NSCopying, NSMutableCopying, NSCoding {
  typealias CFType = CoreFoundation.CFCharacterSet
  var _base: Foundation._CFInfo
  var _hashValue: CoreFoundation.CFHashCode
  var _buffer: <null>
  var _length: CoreFoundation.CFIndex
  var _annex: <null>
  var _cfObject: Foundation.NSCharacterSet.CFType {
    get {}
  }
  var _cfMutableObject: CoreFoundation.CFMutableCharacterSet {
    get {}
  }
  override var hash: Swift.Int {
    override get {}
  }
  override func isEqual(_ value: Any?) -> Swift.Bool
  override var description: Swift.String {
    override get {}
  }
  init()
  @objc deinit
  class var controlCharacters: Foundation.CharacterSet {
    get {}
  }
  class var whitespaces: Foundation.CharacterSet {
    get {}
  }
  class var whitespacesAndNewlines: Foundation.CharacterSet {
    get {}
  }
  class var decimalDigits: Foundation.CharacterSet {
    get {}
  }
  class var letters: Foundation.CharacterSet {
    get {}
  }
  class var lowercaseLetters: Foundation.CharacterSet {
    get {}
  }
  class var uppercaseLetters: Foundation.CharacterSet {
    get {}
  }
  class var nonBaseCharacters: Foundation.CharacterSet {
    get {}
  }
  class var alphanumerics: Foundation.CharacterSet {
    get {}
  }
  class var decomposables: Foundation.CharacterSet {
    get {}
  }
  class var illegalCharacters: Foundation.CharacterSet {
    get {}
  }
  class var punctuationCharacters: Foundation.CharacterSet {
    get {}
  }
  class var capitalizedLetters: Foundation.CharacterSet {
    get {}
  }
  class var symbols: Foundation.CharacterSet {
    get {}
  }
  class var newlines: Foundation.CharacterSet {
    get {}
  }
  init(range aRange: Foundation.NSRange)
  init(charactersIn aString: Swift.String)
  init(bitmapRepresentation data: Foundation.Data)
  convenience init?(contentsOfFile fName: Swift.String)
  required convenience init(coder aDecoder: Foundation.NSCoder)
  func characterIsMember(_ aCharacter: Foundation.unichar) -> Swift.Bool
  var bitmapRepresentation: Foundation.Data {
    get {}
  }
  var inverted: Foundation.CharacterSet {
    get {}
  }
  func longCharacterIsMember(_ theLongChar: Swift.UInt32) -> Swift.Bool
  func isSuperset(of theOtherSet: Foundation.CharacterSet) -> Swift.Bool
  func hasMemberInPlane(_ thePlane: Swift.UInt8) -> Swift.Bool
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  override func mutableCopy() -> Any
  func mutableCopy(with zone: Foundation.NSZone? = default) -> Any
  func encode(with aCoder: Foundation.NSCoder)
}
extension NSCharacterSet : _SwiftBridgeable {
  typealias SwiftType = Foundation.CharacterSet
  var _swiftObject: Foundation.NSCharacterSet.SwiftType {
    get {}
  }
}
extension NSCharacterSet : _StructTypeBridgeable {
  typealias _StructType = Foundation.CharacterSet
  func _bridgeToSwift() -> Foundation.CharacterSet
}
extension NSCharacterSet {
  class var urlUserAllowed: Foundation.CharacterSet {
    get {}
  }
  class var urlPasswordAllowed: Foundation.CharacterSet {
    get {}
  }
  class var urlHostAllowed: Foundation.CharacterSet {
    get {}
  }
  class var urlPathAllowed: Foundation.CharacterSet {
    get {}
  }
  class var urlQueryAllowed: Foundation.CharacterSet {
    get {}
  }
  class var urlFragmentAllowed: Foundation.CharacterSet {
    get {}
  }
}
let NSURLProtectionSpaceHTTPS: Swift.String
protocol LocalizedError : Error {
  var errorDescription: Swift.String? { get }
  var failureReason: Swift.String? { get }
  var recoverySuggestion: Swift.String? { get }
  var helpAnchor: Swift.String? { get }
}
extension LocalizedError {
  var errorDescription: Swift.String? {
    get {}
  }
  var failureReason: Swift.String? {
    get {}
  }
  var recoverySuggestion: Swift.String? {
    get {}
  }
  var helpAnchor: Swift.String? {
    get {}
  }
}
func _CFSwiftDictionaryRemoveAllValues(_ dictionary: AnyObject)
func frexp(_ x: Foundation.CGFloat) -> (Foundation.CGFloat, Swift.Int)
func _CFSwiftStringGetCString(_ str: AnyObject, buffer: Swift.UnsafeMutablePointer<Swift.Int8>, maxLength: Swift.Int, encoding: CoreFoundation.CFStringEncoding) -> Swift.Bool
var NSURLErrorServerCertificateUntrusted: Swift.Int {
  get {}
}
let NSZeroRect: Foundation.NSRect
struct Locale : CustomStringConvertible, CustomDebugStringConvertible, Hashable, Equatable, ReferenceConvertible {
  typealias ReferenceType = Foundation.NSLocale
  typealias LanguageDirection = Foundation.NSLocale.LanguageDirection
  var _wrapped: <null>
  var _autoupdating: <null>
  static var current: Foundation.Locale {
    get {}
  }
  static var autoupdatingCurrent: Foundation.Locale {
    get {}
  }
  @available(*, unavailable, message: "Consider using the user's locale or nil instead, depending on use case") static var system: Foundation.Locale {
    get {}
  }
  init(identifier: Swift.String)
  init(reference: Foundation.NSLocale)
  init(adoptingReference reference: Foundation.NSLocale, autoupdating: Swift.Bool)
  func localizedString(forIdentifier identifier: Swift.String) -> Swift.String?
  func localizedString(forLanguageCode languageCode: Swift.String) -> Swift.String?
  func localizedString(forRegionCode regionCode: Swift.String) -> Swift.String?
  func localizedString(forScriptCode scriptCode: Swift.String) -> Swift.String?
  func localizedString(forVariantCode variantCode: Swift.String) -> Swift.String?
  func localizedString(for calendarIdentifier: Foundation.Calendar.Identifier) -> Swift.String?
  func localizedString(forCurrencyCode currencyCode: Swift.String) -> Swift.String?
  func localizedString(forCollationIdentifier collationIdentifier: Swift.String) -> Swift.String?
  func localizedString(forCollatorIdentifier collatorIdentifier: Swift.String) -> Swift.String?
  var identifier: Swift.String {
    get {}
  }
  var languageCode: Swift.String? {
    get {}
  }
  var regionCode: Swift.String? {
    get {}
  }
  var scriptCode: Swift.String? {
    get {}
  }
  var variantCode: Swift.String? {
    get {}
  }
  var exemplarCharacterSet: Foundation.CharacterSet? {
    get {}
  }
  var calendar: Foundation.Calendar {
    get {}
  }
  var collationIdentifier: Swift.String? {
    get {}
  }
  var usesMetricSystem: Swift.Bool {
    get {}
  }
  var decimalSeparator: Swift.String? {
    get {}
  }
  var groupingSeparator: Swift.String? {
    get {}
  }
  var currencySymbol: Swift.String? {
    get {}
  }
  var currencyCode: Swift.String? {
    get {}
  }
  var collatorIdentifier: Swift.String? {
    get {}
  }
  var quotationBeginDelimiter: Swift.String? {
    get {}
  }
  var quotationEndDelimiter: Swift.String? {
    get {}
  }
  var alternateQuotationBeginDelimiter: Swift.String? {
    get {}
  }
  var alternateQuotationEndDelimiter: Swift.String? {
    get {}
  }
  static var availableIdentifiers: [Swift.String] {
    get {}
  }
  static var isoLanguageCodes: [Swift.String] {
    get {}
  }
  static var isoRegionCodes: [Swift.String] {
    get {}
  }
  static var isoCurrencyCodes: [Swift.String] {
    get {}
  }
  static var commonISOCurrencyCodes: [Swift.String] {
    get {}
  }
  static var preferredLanguages: [Swift.String] {
    get {}
  }
  static func components(fromIdentifier string: Swift.String) -> [Swift.String : Swift.String]
  static func identifier(fromComponents components: [Swift.String : Swift.String]) -> Swift.String
  static func canonicalIdentifier(from string: Swift.String) -> Swift.String
  static func canonicalLanguageIdentifier(from string: Swift.String) -> Swift.String
  static func identifier(fromWindowsLocaleCode code: Swift.Int) -> Swift.String?
  static func windowsLocaleCode(fromIdentifier identifier: Swift.String) -> Swift.Int?
  static func characterDirection(forLanguage isoLangCode: Swift.String) -> Foundation.Locale.LanguageDirection
  static func lineDirection(forLanguage isoLangCode: Swift.String) -> Foundation.Locale.LanguageDirection
  @available(*, unavailable, renamed: "init(identifier:)") init(localeIdentifier: Swift.String)
  @available(*, unavailable, renamed: "identifier") var localeIdentifier: Swift.String {
    get {}
  }
  @available(*, unavailable, renamed: "localizedString(forIdentifier:)") func localizedString(forLocaleIdentifier localeIdentifier: Swift.String) -> Swift.String
  @available(*, unavailable, renamed: "availableIdentifiers") static var availableLocaleIdentifiers: [Swift.String] {
    get {}
  }
  @available(*, unavailable, renamed: "components(fromIdentifier:)") static func components(fromLocaleIdentifier string: Swift.String) -> [Swift.String : Swift.String]
  @available(*, unavailable, renamed: "identifier(fromComponents:)") static func localeIdentifier(fromComponents dict: [Swift.String : Swift.String]) -> Swift.String
  @available(*, unavailable, renamed: "canonicalIdentifier(from:)") static func canonicalLocaleIdentifier(from string: Swift.String) -> Swift.String
  @available(*, unavailable, renamed: "identifier(fromWindowsLocaleCode:)") static func localeIdentifier(fromWindowsLocaleCode lcid: Swift.UInt32) -> Swift.String?
  @available(*, unavailable, renamed: "windowsLocaleCode(fromIdentifier:)") static func windowsLocaleCode(fromLocaleIdentifier localeIdentifier: Swift.String) -> Swift.UInt32
  @available(*, unavailable, message: "use regionCode instead") var countryCode: Swift.String {
    get {}
  }
  @available(*, unavailable, message: "use localizedString(forRegionCode:) instead") func localizedString(forCountryCode countryCode: Swift.String) -> Swift.String
  @available(*, unavailable, renamed: "isoRegionCodes") static var isoCountryCodes: [Swift.String] {
    get {}
  }
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  var hashValue: Swift.Int {
    get {}
  }
}
extension Locale : _CFBridgeable {
  typealias CFType = CoreFoundation.CFLocale
  var _cfObject: CoreFoundation.CFLocale {
    get {}
  }
}
extension Locale : _ObjectTypeBridgeable {
  static func _isBridgedToObjectiveC() -> Swift.Bool
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSLocale
  static func _forceBridgeFromObjectiveC(_ input: Foundation.NSLocale, result: inout Foundation.Locale?)
  static func _conditionallyBridgeFromObjectiveC(_ input: Foundation.NSLocale, result: inout Foundation.Locale?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSLocale?) -> Foundation.Locale
  typealias _ObjectType = Foundation.NSLocale
}
let NSStreamSOCKSErrorDomain: Swift.String
let NSURLAuthenticationMethodNegotiate: Swift.String
var NSURLErrorCannotMoveFile: Swift.Int {
  get {}
}
class UnitPressure : Foundation.Dimension {
  struct Symbol {
    static var newtonsPerMetersSquared: Swift.String
    static var gigapascals: Swift.String
    static var megapascals: Swift.String
    static var kilopascals: Swift.String
    static var hectopascals: Swift.String
    static var inchesOfMercury: Swift.String
    static var bars: Swift.String
    static var millibars: Swift.String
    static var millimetersOfMercury: Swift.String
    static var poundsForcePerSquareInch: Swift.String
    init()
  }
  struct Coefficient {
    static var newtonsPerMetersSquared: Swift.Double
    static var gigapascals: Swift.Double
    static var megapascals: Swift.Double
    static var kilopascals: Swift.Double
    static var hectopascals: Swift.Double
    static var inchesOfMercury: Swift.Double
    static var bars: Swift.Double
    static var millibars: Swift.Double
    static var millimetersOfMercury: Swift.Double
    static var poundsForcePerSquareInch: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var newtonsPerMetersSquared: Foundation.UnitPressure {
    get {}
  }
  class var gigapascals: Foundation.UnitPressure {
    get {}
  }
  class var megapascals: Foundation.UnitPressure {
    get {}
  }
  class var kilopascals: Foundation.UnitPressure {
    get {}
  }
  class var hectopascals: Foundation.UnitPressure {
    get {}
  }
  class var inchesOfMercury: Foundation.UnitPressure {
    get {}
  }
  class var bars: Foundation.UnitPressure {
    get {}
  }
  class var millibars: Foundation.UnitPressure {
    get {}
  }
  class var millimetersOfMercury: Foundation.UnitPressure {
    get {}
  }
  class var poundsForcePerSquareInch: Foundation.UnitPressure {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitPressure
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
@available(*, unavailable, renamed: "CGFloat.greatestFiniteMagnitude") var CGFLOAT_MAX: Foundation.CGFloat {
  get {}
}
var NSFormattingError: Swift.Int {
  get {}
}
func fmin(_ lhs: Foundation.CGFloat, _ rhs: Foundation.CGFloat) -> Foundation.CGFloat
func _CFSwiftSetGetCount(_ set: AnyObject) -> CoreFoundation.CFIndex
func _CFSwiftSetRemoveValue(_ set: AnyObject, value: AnyObject)
var NSExecutableLoadError: Swift.Int {
  get {}
}
class UnitIlluminance : Foundation.Dimension {
  struct Symbol {
    static var lux: Swift.String
    init()
  }
  struct Coefficient {
    static var lux: Swift.Double
    init()
  }
  init(symbol: Swift.String, coefficient: Swift.Double)
  class var lux: Foundation.UnitIlluminance {
    get {}
  }
  override class func baseUnit() -> Foundation.UnitIlluminance
  required init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  @objc deinit
  init(symbol: Swift.String, converter: Foundation.UnitConverter)
}
func NSPointFromCGPoint(_ cgpoint: Foundation.CGPoint) -> Foundation.NSPoint
protocol NSCoding {
  func encode(with aCoder: Foundation.NSCoder)
  init?(coder aDecoder: Foundation.NSCoder)
}
struct FileAttributeType : RawRepresentable, Equatable, Hashable, Comparable {
  let rawValue: <null>
  init(_ rawValue: Swift.String)
  init(rawValue: Swift.String)
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.FileAttributeType, rhs: Foundation.FileAttributeType) -> Swift.Bool
  static func <(lhs: Foundation.FileAttributeType, rhs: Foundation.FileAttributeType) -> Swift.Bool
  static var typeDirectory: Foundation.FileAttributeType
  static var typeRegular: Foundation.FileAttributeType
  static var typeSymbolicLink: Foundation.FileAttributeType
  static var typeSocket: Foundation.FileAttributeType
  static var typeCharacterSpecial: Foundation.FileAttributeType
  static var typeBlockSpecial: Foundation.FileAttributeType
  static var typeUnknown: Foundation.FileAttributeType
  typealias RawValue = Swift.String
}
let NSURLAuthenticationMethodHTTPBasic: Swift.String
protocol PortDelegate : class {
  func handlePortMessage(_ message: Foundation.PortMessage)
}
extension PortDelegate {
  func handle(_ message: Foundation.PortMessage)
}
var NSFeatureUnsupportedError: Swift.Int {
  get {}
}
@available(*, unavailable, renamed: "String.Encoding.shiftJIS") var NSShiftJISStringEncoding: Swift.String.Encoding {
  get {}
}
func NSDivideRect(_ inRect: Foundation.NSRect, _ slice: Swift.UnsafeMutablePointer<Foundation.NSRect>, _ rem: Swift.UnsafeMutablePointer<Foundation.NSRect>, _ amount: Foundation.CGFloat, _ edge: Foundation.NSRectEdge)
protocol _NSXMLNodeCollectionType : Collection {
}
func NSSizeFromString(_ aString: Swift.String) -> Foundation.NSSize
struct Notification : ReferenceConvertible, Equatable, Hashable {
  typealias ReferenceType = Foundation.NSNotification
  var name: <null>
  var object: <null>
  var userInfo: <null>
  init(name: Foundation.Notification.Name, object: Any? = default, userInfo: [Swift.AnyHashable : Any]? = default)
  var hashValue: Swift.Int {
    get {}
  }
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  typealias Name = Foundation.NSNotification.Name
  static func ==(lhs: Foundation.Notification, rhs: Foundation.Notification) -> Swift.Bool
}
extension Notification : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension Notification : _ObjectTypeBridgeable {
  static func _getObjectiveCType() -> Any.Type
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSNotification
  static func _forceBridgeFromObjectiveC(_ x: Foundation.NSNotification, result: inout Foundation.Notification?)
  static func _conditionallyBridgeFromObjectiveC(_ x: Foundation.NSNotification, result: inout Foundation.Notification?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSNotification?) -> Foundation.Notification
  typealias _ObjectType = Foundation.NSNotification
}
class Stream : Foundation.NSObject {
  init()
  func open()
  func close()
  weak var delegate: <null>
  func property(forKey key: Foundation.Stream.PropertyKey) -> AnyObject?
  func setProperty(_ property: AnyObject?, forKey key: Foundation.Stream.PropertyKey) -> Swift.Bool
  func schedule(in aRunLoop: Foundation.RunLoop, forMode mode: Foundation.RunLoopMode)
  func remove(from aRunLoop: Foundation.RunLoop, forMode mode: Foundation.RunLoopMode)
  var streamStatus: Foundation.Stream.Status {
    get {}
  }
  var streamError: Foundation.NSError? {
    get {}
  }
  @objc deinit
}
extension Stream {
  struct PropertyKey : RawRepresentable, Equatable, Hashable, Comparable {
    var rawValue: <null>
    init(_ rawValue: Swift.String)
    init(rawValue: Swift.String)
    var hashValue: Swift.Int {
      get {}
    }
    static func ==(lhs: Foundation.Stream.PropertyKey, rhs: Foundation.Stream.PropertyKey) -> Swift.Bool
    static func <(lhs: Foundation.Stream.PropertyKey, rhs: Foundation.Stream.PropertyKey) -> Swift.Bool
    typealias RawValue = Swift.String
  }
  enum Status : Swift.UInt {
    case notOpen
    case opening
    case open
    case reading
    case writing
    case atEnd
    case closed
    case error
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
  struct Event : OptionSet {
    let rawValue: <null>
    init(rawValue: Swift.UInt)
    static var openCompleted: Foundation.Stream.Event
    static var hasBytesAvailable: Foundation.Stream.Event
    static var hasSpaceAvailable: Foundation.Stream.Event
    static var errorOccurred: Foundation.Stream.Event
    static var endEncountered: Foundation.Stream.Event
    typealias Element = Foundation.Stream.Event
    typealias RawValue = Swift.UInt
  }
}
func _utfRangeToNSRange(_ inRange: Swift.Range<Swift.UnicodeScalar>) -> Foundation.NSRange
func _utfRangeToNSRange(_ inRange: Swift.ClosedRange<Swift.UnicodeScalar>) -> Foundation.NSRange
class SocketPort : Foundation.Port {
  convenience init()
  required init?(coder aDecoder: Foundation.NSCoder)
  convenience init?(tcpPort port: Swift.UInt16)
  init?(protocolFamily family: Swift.Int32, socketType type: Swift.Int32, protocol: Swift.Int32, address: Foundation.Data)
  init?(protocolFamily family: Swift.Int32, socketType type: Swift.Int32, protocol: Swift.Int32, socket sock: Foundation.SocketNativeHandle)
  convenience init?(remoteWithTCPPort port: Swift.UInt16, host hostName: Swift.String?)
  init(remoteWithProtocolFamily family: Swift.Int32, socketType type: Swift.Int32, protocol: Swift.Int32, address: Foundation.Data)
  var protocolFamily: Swift.Int32 {
    get {}
  }
  var socketType: Swift.Int32 {
    get {}
  }
  var `protocol`: Swift.Int32 {
    get {}
  }
  var address: Foundation.Data {
    get {}
  }
  var socket: Foundation.SocketNativeHandle {
    get {}
  }
  @objc deinit
}
var NSURLErrorUnknown: Swift.Int {
  get {}
}
struct CocoaError : _BridgedStoredNSError {
  let _nsError: <null>
  init(_nsError error: Foundation.NSError)
  static var _nsErrorDomain: Swift.String {
    get {}
  }
  struct Code : RawRepresentable, _ErrorCodeProtocol {
    typealias _ErrorType = Foundation.CocoaError
    let rawValue: <null>
    init(rawValue: Swift.Int)
    static var fileNoSuchFile: Foundation.CocoaError.Code {
      get {}
    }
    static var fileLocking: Foundation.CocoaError.Code {
      get {}
    }
    static var fileReadUnknown: Foundation.CocoaError.Code {
      get {}
    }
    static var fileReadNoPermission: Foundation.CocoaError.Code {
      get {}
    }
    static var fileReadInvalidFileName: Foundation.CocoaError.Code {
      get {}
    }
    static var fileReadCorruptFile: Foundation.CocoaError.Code {
      get {}
    }
    static var fileReadNoSuchFile: Foundation.CocoaError.Code {
      get {}
    }
    static var fileReadInapplicableStringEncoding: Foundation.CocoaError.Code {
      get {}
    }
    static var fileReadUnsupportedScheme: Foundation.CocoaError.Code {
      get {}
    }
    static var fileReadTooLarge: Foundation.CocoaError.Code {
      get {}
    }
    static var fileReadUnknownStringEncoding: Foundation.CocoaError.Code {
      get {}
    }
    static var fileWriteUnknown: Foundation.CocoaError.Code {
      get {}
    }
    static var fileWriteNoPermission: Foundation.CocoaError.Code {
      get {}
    }
    static var fileWriteInvalidFileName: Foundation.CocoaError.Code {
      get {}
    }
    static var fileWriteFileExists: Foundation.CocoaError.Code {
      get {}
    }
    static var fileWriteInapplicableStringEncoding: Foundation.CocoaError.Code {
      get {}
    }
    static var fileWriteUnsupportedScheme: Foundation.CocoaError.Code {
      get {}
    }
    static var fileWriteOutOfSpace: Foundation.CocoaError.Code {
      get {}
    }
    static var fileWriteVolumeReadOnly: Foundation.CocoaError.Code {
      get {}
    }
    static var fileManagerUnmountUnknown: Foundation.CocoaError.Code {
      get {}
    }
    static var fileManagerUnmountBusy: Foundation.CocoaError.Code {
      get {}
    }
    static var keyValueValidation: Foundation.CocoaError.Code {
      get {}
    }
    static var formatting: Foundation.CocoaError.Code {
      get {}
    }
    static var userCancelled: Foundation.CocoaError.Code {
      get {}
    }
    static var featureUnsupported: Foundation.CocoaError.Code {
      get {}
    }
    static var executableNotLoadable: Foundation.CocoaError.Code {
      get {}
    }
    static var executableArchitectureMismatch: Foundation.CocoaError.Code {
      get {}
    }
    static var executableRuntimeMismatch: Foundation.CocoaError.Code {
      get {}
    }
    static var executableLoad: Foundation.CocoaError.Code {
      get {}
    }
    static var executableLink: Foundation.CocoaError.Code {
      get {}
    }
    static var propertyListReadCorrupt: Foundation.CocoaError.Code {
      get {}
    }
    static var propertyListReadUnknownVersion: Foundation.CocoaError.Code {
      get {}
    }
    static var propertyListReadStream: Foundation.CocoaError.Code {
      get {}
    }
    static var propertyListWriteStream: Foundation.CocoaError.Code {
      get {}
    }
    static var propertyListWriteInvalid: Foundation.CocoaError.Code {
      get {}
    }
    static var xpcConnectionInterrupted: Foundation.CocoaError.Code {
      get {}
    }
    static var xpcConnectionInvalid: Foundation.CocoaError.Code {
      get {}
    }
    static var xpcConnectionReplyInvalid: Foundation.CocoaError.Code {
      get {}
    }
    static var ubiquitousFileUnavailable: Foundation.CocoaError.Code {
      get {}
    }
    static var ubiquitousFileNotUploadedDueToQuota: Foundation.CocoaError.Code {
      get {}
    }
    static var ubiquitousFileUbiquityServerNotAvailable: Foundation.CocoaError.Code {
      get {}
    }
    static var userActivityHandoffFailed: Foundation.CocoaError.Code {
      get {}
    }
    static var userActivityConnectionUnavailable: Foundation.CocoaError.Code {
      get {}
    }
    static var userActivityRemoteApplicationTimedOut: Foundation.CocoaError.Code {
      get {}
    }
    static var userActivityHandoffUserInfoTooLarge: Foundation.CocoaError.Code {
      get {}
    }
    static var coderReadCorrupt: Foundation.CocoaError.Code {
      get {}
    }
    static var coderValueNotFound: Foundation.CocoaError.Code {
      get {}
    }
    typealias RawValue = Swift.Int
  }
}
extension CocoaError {
  var _nsUserInfo: [Swift.AnyHashable : Any] {
    get {}
  }
  var filePath: Swift.String? {
    get {}
  }
  var stringEncoding: Swift.String.Encoding? {
    get {}
  }
  var underlying: Error? {
    get {}
  }
  var url: Foundation.URL? {
    get {}
  }
}
extension CocoaError {
  static var fileNoSuchFile: Foundation.CocoaError.Code {
    get {}
  }
  static var fileLocking: Foundation.CocoaError.Code {
    get {}
  }
  static var fileReadUnknown: Foundation.CocoaError.Code {
    get {}
  }
  static var fileReadNoPermission: Foundation.CocoaError.Code {
    get {}
  }
  static var fileReadInvalidFileName: Foundation.CocoaError.Code {
    get {}
  }
  static var fileReadCorruptFile: Foundation.CocoaError.Code {
    get {}
  }
  static var fileReadNoSuchFile: Foundation.CocoaError.Code {
    get {}
  }
  static var fileReadInapplicableStringEncoding: Foundation.CocoaError.Code {
    get {}
  }
  static var fileReadUnsupportedScheme: Foundation.CocoaError.Code {
    get {}
  }
  static var fileReadTooLarge: Foundation.CocoaError.Code {
    get {}
  }
  static var fileReadUnknownStringEncoding: Foundation.CocoaError.Code {
    get {}
  }
  static var fileWriteUnknown: Foundation.CocoaError.Code {
    get {}
  }
  static var fileWriteNoPermission: Foundation.CocoaError.Code {
    get {}
  }
  static var fileWriteInvalidFileName: Foundation.CocoaError.Code {
    get {}
  }
  static var fileWriteFileExists: Foundation.CocoaError.Code {
    get {}
  }
  static var fileWriteInapplicableStringEncoding: Foundation.CocoaError.Code {
    get {}
  }
  static var fileWriteUnsupportedScheme: Foundation.CocoaError.Code {
    get {}
  }
  static var fileWriteOutOfSpace: Foundation.CocoaError.Code {
    get {}
  }
  static var fileWriteVolumeReadOnly: Foundation.CocoaError.Code {
    get {}
  }
  static var fileManagerUnmountUnknown: Foundation.CocoaError.Code {
    get {}
  }
  static var fileManagerUnmountBusy: Foundation.CocoaError.Code {
    get {}
  }
  static var keyValueValidation: Foundation.CocoaError.Code {
    get {}
  }
  static var formatting: Foundation.CocoaError.Code {
    get {}
  }
  static var userCancelled: Foundation.CocoaError.Code {
    get {}
  }
  static var featureUnsupported: Foundation.CocoaError.Code {
    get {}
  }
  static var executableNotLoadable: Foundation.CocoaError.Code {
    get {}
  }
  static var executableArchitectureMismatch: Foundation.CocoaError.Code {
    get {}
  }
  static var executableRuntimeMismatch: Foundation.CocoaError.Code {
    get {}
  }
  static var executableLoad: Foundation.CocoaError.Code {
    get {}
  }
  static var executableLink: Foundation.CocoaError.Code {
    get {}
  }
  static var propertyListReadCorrupt: Foundation.CocoaError.Code {
    get {}
  }
  static var propertyListReadUnknownVersion: Foundation.CocoaError.Code {
    get {}
  }
  static var propertyListReadStream: Foundation.CocoaError.Code {
    get {}
  }
  static var propertyListWriteStream: Foundation.CocoaError.Code {
    get {}
  }
  static var propertyListWriteInvalid: Foundation.CocoaError.Code {
    get {}
  }
  static var xpcConnectionInterrupted: Foundation.CocoaError.Code {
    get {}
  }
  static var xpcConnectionInvalid: Foundation.CocoaError.Code {
    get {}
  }
  static var xpcConnectionReplyInvalid: Foundation.CocoaError.Code {
    get {}
  }
  static var ubiquitousFileUnavailable: Foundation.CocoaError.Code {
    get {}
  }
  static var ubiquitousFileNotUploadedDueToQuota: Foundation.CocoaError.Code {
    get {}
  }
  static var ubiquitousFileUbiquityServerNotAvailable: Foundation.CocoaError.Code {
    get {}
  }
  static var userActivityHandoffFailed: Foundation.CocoaError.Code {
    get {}
  }
  static var userActivityConnectionUnavailable: Foundation.CocoaError.Code {
    get {}
  }
  static var userActivityRemoteApplicationTimedOut: Foundation.CocoaError.Code {
    get {}
  }
  static var userActivityHandoffUserInfoTooLarge: Foundation.CocoaError.Code {
    get {}
  }
  static var coderReadCorrupt: Foundation.CocoaError.Code {
    get {}
  }
  static var coderValueNotFound: Foundation.CocoaError.Code {
    get {}
  }
}
extension CocoaError {
  var isCoderError: Swift.Bool {
    get {}
  }
  var isExecutableError: Swift.Bool {
    get {}
  }
  var isFileError: Swift.Bool {
    get {}
  }
  var isFormattingError: Swift.Bool {
    get {}
  }
  var isPropertyListError: Swift.Bool {
    get {}
  }
  var isUbiquitousFileError: Swift.Bool {
    get {}
  }
  var isUserActivityError: Swift.Bool {
    get {}
  }
  var isValidationError: Swift.Bool {
    get {}
  }
  var isXPCConnectionError: Swift.Bool {
    get {}
  }
}
struct URL : ReferenceConvertible, Equatable {
  typealias ReferenceType = Foundation.NSURL
  var _url: <null>
  init?(string: Swift.String)
  init?(string: Swift.String, relativeTo url: Foundation.URL?)
  init(fileURLWithPath path: Swift.String, isDirectory: Swift.Bool, relativeTo base: Foundation.URL?)
  init(fileURLWithPath path: Swift.String, relativeTo base: Foundation.URL?)
  init(fileURLWithPath path: Swift.String, isDirectory: Swift.Bool)
  init(fileURLWithPath path: Swift.String)
  init?(dataRepresentation: Foundation.Data, relativeTo url: Foundation.URL?, isAbsolute: Swift.Bool = default)
  init(fileURLWithFileSystemRepresentation path: Swift.UnsafePointer<Swift.Int8>, isDirectory: Swift.Bool, relativeTo baseURL: Foundation.URL?)
  var hashValue: Swift.Int {
    get {}
  }
  var dataRepresentation: Foundation.Data {
    get {}
  }
  var absoluteString: Swift.String {
    get {}
  }
  var relativeString: Swift.String {
    get {}
  }
  var baseURL: Foundation.URL? {
    get {}
  }
  var absoluteURL: Foundation.URL {
    get {}
  }
  var scheme: Swift.String? {
    get {}
  }
  var isFileURL: Swift.Bool {
    get {}
  }
  @available(*, unavailable, message: "Use `path`, `query`, and `fragment` instead") var resourceSpecifier: Swift.String {
    get {}
  }
  var host: Swift.String? {
    get {}
  }
  var port: Swift.Int? {
    get {}
  }
  var user: Swift.String? {
    get {}
  }
  var password: Swift.String? {
    get {}
  }
  var path: Swift.String {
    get {}
  }
  var relativePath: Swift.String {
    get {}
  }
  var fragment: Swift.String? {
    get {}
  }
  @available(*, unavailable, message: "use the 'path' property") var parameterString: Swift.String? {
    get {}
  }
  var query: Swift.String? {
    get {}
  }
  var hasDirectoryPath: Swift.Bool {
    get {}
  }
  func withUnsafeFileSystemRepresentation<ResultType>(_ block: (Swift.UnsafePointer<Swift.Int8>?) throws -> ResultType) rethrows -> ResultType
  var pathComponents: [Swift.String] {
    get {}
  }
  var lastPathComponent: Swift.String {
    get {}
  }
  var pathExtension: Swift.String {
    get {}
  }
  func appendingPathComponent(_ pathComponent: Swift.String, isDirectory: Swift.Bool) -> Foundation.URL
  func appendingPathComponent(_ pathComponent: Swift.String) -> Foundation.URL
  func deletingLastPathComponent() -> Foundation.URL
  func appendingPathExtension(_ pathExtension: Swift.String) -> Foundation.URL
  func deletingPathExtension() -> Foundation.URL
  mutating func appendPathComponent(_ pathComponent: Swift.String, isDirectory: Swift.Bool)
  mutating func appendPathComponent(_ pathComponent: Swift.String)
  mutating func appendPathExtension(_ pathExtension: Swift.String)
  mutating func deleteLastPathComponent()
  mutating func deletePathExtension()
  var standardized: Foundation.URL {
    get {}
  }
  mutating func standardize()
  var standardizedFileURL: Foundation.URL {
    get {}
  }
  func resolvingSymlinksInPath() -> Foundation.URL
  mutating func resolveSymlinksInPath()
  mutating func setResourceValues(_ values: Foundation.URLResourceValues) throws
  func resourceValues(forKeys keys: Swift.Set<Foundation.URLResourceKey>) throws -> Foundation.URLResourceValues
  mutating func setTemporaryResourceValue(_ value: Any, forKey key: Foundation.URLResourceKey)
  mutating func removeAllCachedResourceValues()
  mutating func removeCachedResourceValue(forKey key: Foundation.URLResourceKey)
  static func _converted(from url: Foundation.NSURL) -> Foundation.NSURL
  init(reference: Foundation.NSURL)
  var reference: Foundation.NSURL {
    get {}
  }
  static func ==(lhs: Foundation.URL, rhs: Foundation.URL) -> Swift.Bool
}
extension URL : _NSBridgeable, _CFBridgeable {
  typealias NSType = Foundation.NSURL
  typealias CFType = CoreFoundation.CFURL
  var _nsObject: Foundation.URL.NSType {
    get {}
  }
  var _cfObject: Foundation.URL.CFType {
    get {}
  }
}
extension URL : _ObjectTypeBridgeable {
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSURL
  static func _forceBridgeFromObjectiveC(_ source: Foundation.NSURL, result: inout Foundation.URL?)
  static func _conditionallyBridgeFromObjectiveC(_ source: Foundation.NSURL, result: inout Foundation.URL?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSURL?) -> Foundation.URL
  typealias _ObjectType = Foundation.NSURL
}
extension URL : CustomStringConvertible, CustomDebugStringConvertible {
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
}
extension URL : CustomPlaygroundQuickLookable {
  var customPlaygroundQuickLook: Swift.PlaygroundQuickLook {
    get {}
  }
}
extension URL : _ExpressibleByFileReferenceLiteral {
  init(fileReferenceLiteralResourceName name: Swift.String)
}
class NSCache<KeyType, ObjectType> : Foundation.NSObject where KeyType : AnyObject, ObjectType : AnyObject {
  var _entries: [Foundation.NSCacheKey : Foundation.NSCacheEntry<KeyType, ObjectType>]
  final let _lock: Foundation.NSLock
  var _totalCost: Swift.Int
  var _byCost: Foundation.NSCacheEntry<KeyType, ObjectType>?
  var name: <null>
  var totalCostLimit: <null>
  var countLimit: <null>
  var evictsObjectsWithDiscardedContent: <null>
  init()
  weak var delegate: <null>
  func object(forKey key: KeyType) -> ObjectType?
  func setObject(_ obj: ObjectType, forKey key: KeyType)
  func remove(_ entry: Foundation.NSCacheEntry<KeyType, ObjectType>)
  func insert(_ entry: Foundation.NSCacheEntry<KeyType, ObjectType>)
  func setObject(_ obj: ObjectType, forKey key: KeyType, cost g: Swift.Int)
  func removeObject(forKey key: KeyType)
  func removeAllObjects()
  @objc deinit
}
let __kCFDontDeallocate: CoreFoundation.CFOptionFlags
@available(*, unavailable, renamed: "String.Encoding.symbol") var NSSymbolStringEncoding: Swift.String.Encoding {
  get {}
}
var NSFileReadUnknownError: Swift.Int {
  get {}
}
protocol __BridgedNSError : Error {
  static var _nsErrorDomain: Swift.String { get }
}
extension __BridgedNSError where Self.RawValue : SignedInteger {
  static func ==(lhs: Self, rhs: Self) -> Swift.Bool
}
extension __BridgedNSError where Self.RawValue : UnsignedInteger {
  static func ==(lhs: Self, rhs: Self) -> Swift.Bool
}
extension __BridgedNSError where Self.RawValue : SignedInteger {
  var _domain: Swift.String {
    get {}
  }
  var _code: Swift.Int {
    get {}
  }
  convenience init?(rawValue: Self.RawValue)
  convenience init?(_bridgedNSError: Foundation.NSError)
  var hashValue: Swift.Int {
    get {}
  }
}
extension __BridgedNSError where Self.RawValue : UnsignedInteger {
  var _domain: Swift.String {
    get {}
  }
  var _code: Swift.Int {
    get {}
  }
  convenience init?(rawValue: Self.RawValue)
  convenience init?(_bridgedNSError: Foundation.NSError)
  var hashValue: Swift.Int {
    get {}
  }
}
var NSURLErrorNetworkConnectionLost: Swift.Int {
  get {}
}
struct UnsafeMutablePointer<Pointee> : Strideable, Hashable, _Pointer {
  typealias Distance = Swift.Int
  let _rawValue: <null>
  init(_ _rawValue: Builtin.RawPointer)
  init(_ from: Swift.OpaquePointer)
  init?(_ from: Swift.OpaquePointer?)
  init?(bitPattern: Swift.Int)
  init?(bitPattern: Swift.UInt)
  init(_ other: Swift.UnsafeMutablePointer<Pointee>)
  init?(_ other: Swift.UnsafeMutablePointer<Pointee>?)
  init(mutating other: Swift.UnsafePointer<Pointee>)
  init?(mutating other: Swift.UnsafePointer<Pointee>?)
  static func allocate(capacity count: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  func deallocate(capacity: Swift.Int)
  var pointee: Pointee
  var pointee: Pointee {
    unsafeAddress {}
    unsafeMutableAddress {}
  }
  func initialize(to newValue: Pointee, count: Swift.Int = default)
  func move() -> Pointee
  func assign(from source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  func moveInitialize(from source: Swift.UnsafeMutablePointer<Pointee>, count: Swift.Int)
  func initialize(from source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, deprecated, message: "it will be removed in Swift 4.0.  Please use 'UnsafeMutableBufferPointer.initialize(from:)' instead") func initialize<C>(from source: C) where C : Collection, C.Iterator.Element == Pointee
  func moveAssign(from source: Swift.UnsafeMutablePointer<Pointee>, count: Swift.Int)
  @discardableResult func deinitialize(count: Swift.Int = default) -> Swift.UnsafeMutableRawPointer
  func withMemoryRebound<T, Result>(to type: T.Type, capacity count: Swift.Int, _ body: (Swift.UnsafeMutablePointer<T>) throws -> Result) rethrows -> Result
  subscript(i: Swift.Int) -> Pointee {
    unsafeAddress {}
    unsafeMutableAddress {}
  }
  var hashValue: Swift.Int {
    get {}
  }
  func successor() -> Swift.UnsafeMutablePointer<Pointee>
  func predecessor() -> Swift.UnsafeMutablePointer<Pointee>
  func distance(to end: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Int
  func advanced(by n: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  typealias Stride = Swift.Int
  typealias _DisabledRangeIndex = Swift._DisabledRangeIndex_
}
extension UnsafeMutablePointer {
  static func ==(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Bool
  static func <(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Bool
  static func +(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  static func +(lhs: Swift.Int, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.UnsafeMutablePointer<Pointee>
  static func -(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  static func -(lhs: Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.UnsafeMutablePointer<Pointee>) -> Swift.Int
  static func +=(lhs: inout Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int)
  static func -=(lhs: inout Swift.UnsafeMutablePointer<Pointee>, rhs: Swift.Int)
}
extension UnsafeMutablePointer : CustomDebugStringConvertible {
  var debugDescription: Swift.String {
    get {}
  }
}
extension UnsafeMutablePointer : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension UnsafeMutablePointer : CustomPlaygroundQuickLookable {
  var summary: Swift.String {
    get {}
  }
  var customPlaygroundQuickLook: Swift.PlaygroundQuickLook {
    get {}
  }
}
extension UnsafeMutablePointer {
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init<U>(_ from: Swift.UnsafeMutablePointer<U>)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init?<U>(_ from: Swift.UnsafeMutablePointer<U>?)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init<U>(_ from: Swift.UnsafePointer<U>)
  @available(*, unavailable, message: "use 'withMemoryRebound(to:capacity:_)' to temporarily view memory as another layout-compatible type.") init?<U>(_ from: Swift.UnsafePointer<U>?)
  @available(*, unavailable, renamed: "init(mutating:)") init(_ from: Swift.UnsafePointer<Pointee>)
  @available(*, unavailable, renamed: "init(mutating:)") init?(_ from: Swift.UnsafePointer<Pointee>?)
  @available(*, unavailable, renamed: "Pointee") typealias Memory = Pointee
  @available(*, unavailable, message: "use 'nil' literal") init()
  @available(*, unavailable, renamed: "allocate(capacity:)") static func alloc(_ num: Swift.Int) -> Swift.UnsafeMutablePointer<Pointee>
  @available(*, unavailable, message: "use 'UnsafeMutablePointer.allocate(capacity:)'") init(allocatingCapacity: Swift.Int)
  @available(*, unavailable, renamed: "deallocate(capacity:)") func dealloc(_ num: Swift.Int)
  @available(*, unavailable, renamed: "deallocate(capacity:)") func deallocateCapacity(_ num: Swift.Int)
  @available(*, unavailable, renamed: "pointee") var memory: Pointee {
    get {}
    set(newValue) {}
  }
  @available(*, unavailable, renamed: "initialize(to:)") func initialize(_ newvalue: Pointee)
  @available(*, unavailable, renamed: "initialize(to:count:)") func initialize(with newvalue: Pointee, count: Swift.Int = default)
  @available(*, unavailable, renamed: "deinitialize(count:)") func destroy()
  @available(*, unavailable, renamed: "deinitialize(count:)") func destroy(_ count: Swift.Int)
  @available(*, unavailable, renamed: "initialize(from:)") func initializeFrom<C>(_ source: C) where C : Collection
  @available(*, unavailable, renamed: "initialize(from:count:)") func initializeFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "assign(from:count:)") func assignFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "assign(from:count:)") func assignBackwardFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveInitialize(from:count:)") func moveInitializeFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveInitialize(from:count:)") func moveInitializeBackwardFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
  @available(*, unavailable, renamed: "moveAssign(from:count:)") func moveAssignFrom(_ source: Swift.UnsafePointer<Pointee>, count: Swift.Int)
}
extension UnsafeMutablePointer : CVarArg {
  var _cVarArgEncoding: [Swift.Int] {
    get {}
  }
}
let NSZeroSize: Foundation.NSSize
protocol URLSessionStreamDelegate : URLSessionTaskDelegate {
  func urlSession(_ session: Foundation.URLSession, readClosedFor streamTask: Foundation.URLSessionStreamTask)
  func urlSession(_ session: Foundation.URLSession, writeClosedFor streamTask: Foundation.URLSessionStreamTask)
  func urlSession(_ session: Foundation.URLSession, betterRouteDiscoveredFor streamTask: Foundation.URLSessionStreamTask)
  func urlSession(_ session: Foundation.URLSession, streamTask: Foundation.URLSessionStreamTask, didBecome inputStream: Foundation.InputStream, outputStream: Foundation.OutputStream)
}
extension URLSessionStreamDelegate {
  func urlSession(_ session: Foundation.URLSession, readClosedFor streamTask: Foundation.URLSessionStreamTask)
  func urlSession(_ session: Foundation.URLSession, writeClosedFor streamTask: Foundation.URLSessionStreamTask)
  func urlSession(_ session: Foundation.URLSession, betterRouteDiscoveredFor streamTask: Foundation.URLSessionStreamTask)
  func urlSession(_ session: Foundation.URLSession, streamTask: Foundation.URLSessionStreamTask, didBecome inputStream: Foundation.InputStream, outputStream: Foundation.OutputStream)
}
class NSSpecialValue : Foundation.NSValue {
  static var _specialTypes: <null>
  static func _typeFromFlags(_ flags: Swift.Int) -> NSSpecialValueCoding.Type?
  static func _flagsFromType(_ type: NSSpecialValueCoding.Type) -> Swift.Int
  static func _objCTypeFromType(_ type: NSSpecialValueCoding.Type) -> Swift.String?
  static func _typeFromObjCType(_ type: Swift.UnsafePointer<Swift.Int8>) -> NSSpecialValueCoding.Type?
  var _value: <null>
  init(_ value: NSSpecialValueCoding)
  required init(bytes value: Swift.UnsafeRawPointer, objCType type: Swift.UnsafePointer<Swift.Int8>)
  override func getValue(_ value: Swift.UnsafeMutableRawPointer)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  override func encode(with aCoder: Foundation.NSCoder)
  override var objCType: Swift.UnsafePointer<Swift.Int8> {
    override get {}
  }
  override var classForCoder: Swift.AnyClass {
    override get {}
  }
  override var description: Swift.String {
    override get {}
  }
  override func isEqual(_ value: Any?) -> Swift.Bool
  override var hash: Swift.Int {
    override get {}
  }
  @objc deinit
  init()
}
struct CGFloat {
  typealias NativeType = Swift.Double
  init()
  init(_ value: Swift.Float)
  init(_ value: Swift.Double)
  init(_ value: Swift.Float80)
  init(_ value: Foundation.CGFloat)
  init(_ value: Swift.UInt8)
  init(_ value: Swift.Int8)
  init(_ value: Swift.UInt16)
  init(_ value: Swift.Int16)
  init(_ value: Swift.UInt32)
  init(_ value: Swift.Int32)
  init(_ value: Swift.UInt64)
  init(_ value: Swift.Int64)
  init(_ value: Swift.UInt)
  init(_ value: Swift.Int)
  var native: <null>
}
extension CGFloat : BinaryFloatingPoint {
  typealias RawSignificand = Swift.UInt
  typealias Exponent = Swift.Int
  static var exponentBitCount: Swift.Int {
    get {}
  }
  static var significandBitCount: Swift.Int {
    get {}
  }
  var bitPattern: Swift.UInt {
    get {}
  }
  init(bitPattern: Swift.UInt)
  var sign: Swift.FloatingPointSign {
    get {}
  }
  var exponentBitPattern: Swift.UInt {
    get {}
  }
  var significandBitPattern: Swift.UInt {
    get {}
  }
  init(sign: Swift.FloatingPointSign, exponentBitPattern: Swift.UInt, significandBitPattern: Swift.UInt)
  init(nan payload: Foundation.CGFloat.RawSignificand, signaling: Swift.Bool)
  static var infinity: Foundation.CGFloat {
    get {}
  }
  static var nan: Foundation.CGFloat {
    get {}
  }
  static var signalingNaN: Foundation.CGFloat {
    get {}
  }
  @available(*, unavailable, renamed: "nan") static var quietNaN: Foundation.CGFloat {
    get {}
  }
  static var greatestFiniteMagnitude: Foundation.CGFloat {
    get {}
  }
  static var pi: Foundation.CGFloat {
    get {}
  }
  var ulp: Foundation.CGFloat {
    get {}
  }
  static var leastNormalMagnitude: Foundation.CGFloat {
    get {}
  }
  static var leastNonzeroMagnitude: Foundation.CGFloat {
    get {}
  }
  var exponent: Swift.Int {
    get {}
  }
  var significand: Foundation.CGFloat {
    get {}
  }
  init(sign: Swift.FloatingPointSign, exponent: Swift.Int, significand: Foundation.CGFloat)
  mutating func round(_ rule: Swift.FloatingPointRoundingRule)
  var nextUp: Foundation.CGFloat {
    get {}
  }
  var magnitude: Foundation.CGFloat {
    get {}
  }
  mutating func negate()
  mutating func add(_ other: Foundation.CGFloat)
  mutating func subtract(_ other: Foundation.CGFloat)
  mutating func multiply(by other: Foundation.CGFloat)
  mutating func divide(by other: Foundation.CGFloat)
  mutating func formTruncatingRemainder(dividingBy other: Foundation.CGFloat)
  mutating func formRemainder(dividingBy other: Foundation.CGFloat)
  mutating func formSquareRoot()
  mutating func addProduct(_ lhs: Foundation.CGFloat, _ rhs: Foundation.CGFloat)
  func isEqual(to other: Foundation.CGFloat) -> Swift.Bool
  func isLess(than other: Foundation.CGFloat) -> Swift.Bool
  func isLessThanOrEqualTo(_ other: Foundation.CGFloat) -> Swift.Bool
  var isNormal: Swift.Bool {
    get {}
  }
  var isFinite: Swift.Bool {
    get {}
  }
  var isZero: Swift.Bool {
    get {}
  }
  var isSubnormal: Swift.Bool {
    get {}
  }
  var isInfinite: Swift.Bool {
    get {}
  }
  var isNaN: Swift.Bool {
    get {}
  }
  var isSignalingNaN: Swift.Bool {
    get {}
  }
  @available(*, unavailable, renamed: "isSignalingNaN") var isSignaling: Swift.Bool {
    get {}
  }
  var isCanonical: Swift.Bool {
    get {}
  }
  var floatingPointClass: Swift.FloatingPointClassification {
    get {}
  }
  var binade: Foundation.CGFloat {
    get {}
  }
  var significandWidth: Swift.Int {
    get {}
  }
  init(floatLiteral value: Foundation.CGFloat.NativeType)
  init(integerLiteral value: Swift.Int)
  typealias RawExponent = Swift.UInt
  typealias FloatLiteralType = Foundation.CGFloat.NativeType
  typealias IntegerLiteralType = Swift.Int
}
extension CGFloat {
  @available(*, unavailable, renamed: "leastNormalMagnitude") static var min: Foundation.CGFloat {
    get {}
  }
  @available(*, unavailable, renamed: "greatestFiniteMagnitude") static var max: Foundation.CGFloat {
    get {}
  }
  @available(*, unavailable, message: "Please use the `abs(_:)` free function") static func abs(_ x: Foundation.CGFloat) -> Foundation.CGFloat
}
extension CGFloat : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension CGFloat : CustomStringConvertible {
  var description: Swift.String {
    get {}
  }
}
extension CGFloat : Hashable {
  var hashValue: Swift.Int {
    get {}
  }
}
extension CGFloat : Strideable {
  func distance(to other: Foundation.CGFloat) -> Foundation.CGFloat
  func advanced(by amount: Foundation.CGFloat) -> Foundation.CGFloat
  typealias Stride = Foundation.CGFloat
  typealias _DisabledRangeIndex = Swift._DisabledRangeIndex_
}
extension CGFloat : _CVarArgPassedAsDouble, _CVarArgAligned {
  var _cVarArgEncoding: [Swift.Int] {
    get {}
  }
  var _cVarArgAlignment: Swift.Int {
    get {}
  }
}
func _NSXMLParserIsStandalone(_ ctx: CoreFoundation._CFXMLInterface) -> Swift.Int32
var NSDateComponentUndefined: Swift.Int
var sessionCounter: Swift.Int32
func NSEdgeInsetsMake(_ top: Foundation.CGFloat, _ left: Foundation.CGFloat, _ bottom: Foundation.CGFloat, _ right: Foundation.CGFloat) -> Foundation.NSEdgeInsets
func __NSTimeZoneCurrent() -> Foundation.NSTimeZone
var NSURLErrorNotConnectedToInternet: Swift.Int {
  get {}
}
var NSFileReadInvalidFileNameError: Swift.Int {
  get {}
}
var NSURLErrorCannotOpenFile: Swift.Int {
  get {}
}
let NSPersonNameComponentKey: Swift.String
var NSURLErrorBadURL: Swift.Int {
  get {}
}
func _CFSwiftStringCreateWithSubstring(_ str: AnyObject, range: CoreFoundation.CFRange) -> Swift.Unmanaged<AnyObject>
func NSDecimalDivide(_ result: Swift.UnsafeMutablePointer<Foundation.Decimal>, _ leftOperand: Swift.UnsafePointer<Foundation.Decimal>, _ rightOperand: Swift.UnsafePointer<Foundation.Decimal>, _ roundingMode: Foundation.NSDecimalNumber.RoundingMode) -> Foundation.NSDecimalNumber.CalculationError
func acos(_ x: Foundation.CGFloat) -> Foundation.CGFloat
func __NSFireTimer(_ timer: CoreFoundation.CFRunLoopTimer?, info: Swift.UnsafeMutableRawPointer?)
@available(*, unavailable, renamed: "String.Encoding.windowsCP1252") var NSWindowsCP1252StringEncoding: Swift.String.Encoding {
  get {}
}
var NSURLErrorRedirectToNonExistentLocation: Swift.Int {
  get {}
}
let NSURLErrorFailingURLPeerTrustErrorKey: Swift.String
let NSURLProtectionSpaceSOCKSProxy: Swift.String
class HTTPCookieStorage : Foundation.NSObject {
  init()
  var cookies: [Foundation.HTTPCookie]? {
    get {}
  }
  class var shared: Foundation.HTTPCookieStorage {
    get {}
  }
  class func sharedCookieStorage(forGroupContainerIdentifier identifier: Swift.String) -> Foundation.HTTPCookieStorage
  func setCookie(_ cookie: Foundation.HTTPCookie)
  func deleteCookie(_ cookie: Foundation.HTTPCookie)
  func removeCookies(since date: Foundation.Date)
  func cookies(for url: Foundation.URL) -> [Foundation.HTTPCookie]?
  func setCookies(_ cookies: [Foundation.HTTPCookie], for url: Foundation.URL?, mainDocumentURL: Foundation.URL?)
  var cookieAcceptPolicy: <null>
  func sortedCookies(using sortOrder: [Foundation.SortDescriptor]) -> [Foundation.HTTPCookie]
  @objc deinit
}
var NSFileLockingError: Swift.Int {
  get {}
}
class OperationQueue : Foundation.NSObject {
  final let lock: Foundation.NSLock
  var __concurrencyGate: <null>
  var __underlyingQueue: <null>
  final let queueGroup: Dispatch.DispatchGroup
  var _operations: Foundation._OperationList
  var _concurrencyGate: Dispatch.DispatchSemaphore? {
    get {}
  }
  var _underlyingQueue: Dispatch.DispatchQueue {
    get {}
  }
  init()
  init(_queue queue: Dispatch.DispatchQueue, maxConcurrentOperations: Swift.Int = default)
  func _dequeueOperation() -> Foundation.Operation?
  func addOperation(_ op: Foundation.Operation)
  func _runOperation()
  func addOperations(_ ops: [Foundation.Operation], waitUntilFinished wait: Swift.Bool)
  func _operationFinished(_ operation: Foundation.Operation)
  func addOperation(_ block: @escaping () -> Swift.Void)
  var operations: [Foundation.Operation] {
    get {}
  }
  var operationCount: Swift.Int {
    get {}
  }
  var maxConcurrentOperationCount: <null>
  var _suspended: Swift.Bool
  var isSuspended: Swift.Bool {
    get {}
    set(newValue) {}
  }
  var _name: <null>
  var name: Swift.String? {
    get {}
    set(newValue) {}
  }
  var qualityOfService: <null>
  var underlyingQueue: Dispatch.DispatchQueue? {
    get {}
    set(newValue) {}
  }
  func cancelAllOperations()
  func waitUntilAllOperationsAreFinished()
  static var OperationQueueKey: Dispatch.DispatchSpecificKey<Swift.Unmanaged<Foundation.OperationQueue>>
  class var current: Foundation.OperationQueue? {
    get {}
  }
  class var main: Foundation.OperationQueue {
    get {}
  }
  @objc deinit
}
extension OperationQueue {
  static var defaultMaxConcurrentOperationCount: <null>
}
func NSPageSize() -> Swift.Int
func _CFSwiftCharacterSetExpandedCFCharacterSet(_ cset: CoreFoundation.CFTypeRef) -> Swift.Unmanaged<CoreFoundation.CFCharacterSet>?
class NSMutableAttributedString : Foundation.NSAttributedString {
  func replaceCharacters(in range: Foundation.NSRange, with str: Swift.String)
  func setAttributes(_ attrs: [Swift.String : Any]?, range: Foundation.NSRange)
  var mutableString: Foundation.NSMutableString {
    get {}
  }
  func addAttribute(_ name: Swift.String, value: Any, range: Foundation.NSRange)
  func addAttributes(_ attrs: [Swift.String : Any], range: Foundation.NSRange)
  func removeAttribute(_ name: Swift.String, range: Foundation.NSRange)
  func replaceCharacters(in range: Foundation.NSRange, with attrString: Foundation.NSAttributedString)
  func insert(_ attrString: Foundation.NSAttributedString, at loc: Swift.Int)
  func append(_ attrString: Foundation.NSAttributedString)
  func deleteCharacters(in range: Foundation.NSRange)
  func setAttributedString(_ attrString: Foundation.NSAttributedString)
  func beginEditing()
  func endEditing()
  init(string str: Swift.String)
  required init?(coder aDecoder: Foundation.NSCoder)
  @objc deinit
  init(string str: Swift.String, attributes attrs: [Swift.String : Any]?)
  init(NSAttributedString attrStr: Foundation.NSAttributedString)
}
extension NSMutableAttributedString {
  var _cfMutableObject: CoreFoundation.CFMutableAttributedString {
    get {}
  }
}
func _CFSwiftArrayExchangeValuesAtIndices(_ array: AnyObject, _ idx1: CoreFoundation.CFIndex, _ idx2: CoreFoundation.CFIndex)
struct Int32 : SignedInteger, Comparable, Equatable {
  var _value: <null>
  init()
  init(_ _v: Builtin.Int32)
  init(_bits: Builtin.Int32)
  init(bigEndian value: Swift.Int32)
  init(littleEndian value: Swift.Int32)
  init(_builtinIntegerLiteral value: Builtin.Int2048)
  init(integerLiteral value: Swift.Int32)
  var bigEndian: Swift.Int32 {
    get {}
  }
  var littleEndian: Swift.Int32 {
    get {}
  }
  var byteSwapped: Swift.Int32 {
    get {}
  }
  static var max: Swift.Int32 {
    get {}
  }
  static var min: Swift.Int32 {
    get {}
  }
  static var _sizeInBits: Swift.Int32 {
    get {}
  }
  static var _sizeInBytes: Swift.Int32 {
    get {}
  }
  typealias IntegerLiteralType = Swift.Int32
  typealias Stride = Swift.Int
}
extension Int32 : _IntegerLike {
}
extension Int32 {
  init(_ value: Foundation.CGFloat)
}
extension Int32 : Hashable {
  var hashValue: Swift.Int {
    @inline(__always) get {}
  }
}
extension Int32 : CustomStringConvertible {
  var description: Swift.String {
    get {}
  }
}
extension Int32 {
  static func addWithOverflow(_ lhs: Swift.Int32, _ rhs: Swift.Int32) -> (Swift.Int32, overflow: Swift.Bool)
  static func subtractWithOverflow(_ lhs: Swift.Int32, _ rhs: Swift.Int32) -> (Swift.Int32, overflow: Swift.Bool)
  static func multiplyWithOverflow(_ lhs: Swift.Int32, _ rhs: Swift.Int32) -> (Swift.Int32, overflow: Swift.Bool)
  static func divideWithOverflow(_ lhs: Swift.Int32, _ rhs: Swift.Int32) -> (Swift.Int32, overflow: Swift.Bool)
  static func remainderWithOverflow(_ lhs: Swift.Int32, _ rhs: Swift.Int32) -> (Swift.Int32, overflow: Swift.Bool)
  func toIntMax() -> Swift.IntMax
}
extension Int32 : SignedNumber {
}
extension Int32 {
  init(_ value: Swift.UInt8)
  @available(*, message: "Converting UInt8 to Int32 will always succeed.") init?(exactly value: Swift.UInt8)
}
extension Int32 {
  init(_ value: Swift.Int8)
  @available(*, message: "Converting Int8 to Int32 will always succeed.") init?(exactly value: Swift.Int8)
}
extension Int32 {
  init(_ value: Swift.UInt16)
  @available(*, message: "Converting UInt16 to Int32 will always succeed.") init?(exactly value: Swift.UInt16)
}
extension Int32 {
  init(_ value: Swift.Int16)
  @available(*, message: "Converting Int16 to Int32 will always succeed.") init?(exactly value: Swift.Int16)
}
extension Int32 {
  init(_ value: Swift.UInt32)
  init?(exactly value: Swift.UInt32)
}
extension Int32 {
  init(_ value: Swift.Int32)
  @available(*, message: "Converting Int32 to Int32 will always succeed.") init?(exactly value: Swift.Int32)
}
extension Int32 {
  init(_ value: Swift.UInt64)
  init?(exactly value: Swift.UInt64)
  init(truncatingBitPattern: Swift.UInt64)
}
extension Int32 {
  init(_ value: Swift.Int64)
  init?(exactly value: Swift.Int64)
  init(truncatingBitPattern: Swift.Int64)
}
extension Int32 {
  init(_ value: Swift.UInt)
  init?(exactly value: Swift.UInt)
  init(truncatingBitPattern: Swift.UInt)
}
extension Int32 {
  init(_ value: Swift.Int)
  init?(exactly value: Swift.Int)
  init(truncatingBitPattern: Swift.Int)
}
extension Int32 {
  init(_ value: Swift.Float)
  @inline(__always) init?(exactly value: Swift.Float)
  init(_ value: Swift.Double)
  @inline(__always) init?(exactly value: Swift.Double)
  init(_ value: Swift.Float80)
  @inline(__always) init?(exactly value: Swift.Float80)
  init(bitPattern: Swift.UInt32)
}
extension Int32 : BitwiseOperations {
  static var allZeros: Swift.Int32 {
    get {}
  }
}
extension Int32 {
  typealias _DisabledRangeIndex = Swift.Int32
}
extension Int32 {
  init?(_ text: Swift.String, radix: Swift.Int = default)
}
extension Int32 : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension Int32 : CustomPlaygroundQuickLookable {
  var customPlaygroundQuickLook: Swift.PlaygroundQuickLook {
    get {}
  }
}
extension Int32 : CVarArg {
  var _cVarArgEncoding: [Swift.Int] {
    get {}
  }
}
func erf(_ x: Foundation.CGFloat) -> Foundation.CGFloat
func createDispatchData(_ data: Foundation.Data) -> Dispatch.DispatchData
func erfc(_ x: Foundation.CGFloat) -> Foundation.CGFloat
class NSRecursiveLock : Foundation.NSObject, NSLocking {
  var mutex: Swift.UnsafeMutablePointer<SwiftGlibc.pthread_mutex_t>
  init()
  @objc deinit
  func lock()
  func unlock()
  func `try`() -> Swift.Bool
  func lock(before limit: Foundation.Date)
  var name: <null>
}
func NSLog(_ format: Swift.String, _ args: CVarArg...)
struct DateInterval : ReferenceConvertible, Comparable, Hashable {
  typealias ReferenceType = Foundation.NSDateInterval
  var start: <null>
  var end: Foundation.Date {
    get {}
    set(newValue) {}
  }
  var duration: Foundation.TimeInterval {
    willSet(newValue) {}
  }
  init()
  init(start: Foundation.Date, end: Foundation.Date)
  init(start: Foundation.Date, duration: Foundation.TimeInterval)
  func compare(_ dateInterval: Foundation.DateInterval) -> Foundation.ComparisonResult
  func intersects(_ dateInterval: Foundation.DateInterval) -> Swift.Bool
  func intersection(with dateInterval: Foundation.DateInterval) -> Foundation.DateInterval?
  func contains(_ date: Foundation.Date) -> Swift.Bool
  var hashValue: Swift.Int {
    get {}
  }
  static func ==(lhs: Foundation.DateInterval, rhs: Foundation.DateInterval) -> Swift.Bool
  static func <(lhs: Foundation.DateInterval, rhs: Foundation.DateInterval) -> Swift.Bool
}
extension DateInterval : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension DateInterval : _ObjectTypeBridgeable {
  static func _isBridgedToObjectiveC() -> Swift.Bool
  static func _getObjectiveCType() -> Any.Type
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSDateInterval
  static func _forceBridgeFromObjectiveC(_ dateInterval: Foundation.NSDateInterval, result: inout Foundation.DateInterval?)
  static func _conditionallyBridgeFromObjectiveC(_ dateInterval: Foundation.NSDateInterval, result: inout Foundation.DateInterval?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSDateInterval?) -> Foundation.DateInterval
  typealias _ObjectType = Foundation.NSDateInterval
}
class Scanner : Foundation.NSObject, NSCopying {
  var _scanString: <null>
  var _skipSet: <null>
  var _invertedSkipSet: <null>
  var _scanLocation: <null>
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  var string: Swift.String {
    get {}
  }
  var scanLocation: Swift.Int {
    get {}
    set(newValue) {}
  }
  var charactersToBeSkipped: Foundation.CharacterSet? {
    get {}
    set(newValue) {}
  }
  var invertedSkipSet: Foundation.CharacterSet? {
    get {}
  }
  var caseSensitive: <null>
  var locale: <null>
  static var defaultSkipSet: Foundation.CharacterSet
  init(string: Swift.String)
  @objc deinit
  init()
}
extension Scanner {
  func scanDecimal(_ dcm: inout Foundation.Decimal) -> Swift.Bool
  func scanDecimal() -> Foundation.Decimal?
}
extension Scanner {
  func scanInt(_ result: Swift.UnsafeMutablePointer<Swift.Int32>) -> Swift.Bool
  func scanInteger(_ result: Swift.UnsafeMutablePointer<Swift.Int>) -> Swift.Bool
  func scanLongLong(_ result: Swift.UnsafeMutablePointer<Swift.Int64>) -> Swift.Bool
  func scanUnsignedLongLong(_ result: Swift.UnsafeMutablePointer<Swift.UInt64>) -> Swift.Bool
  func scanFloat(_ result: Swift.UnsafeMutablePointer<Swift.Float>) -> Swift.Bool
  func scanDouble(_ result: Swift.UnsafeMutablePointer<Swift.Double>) -> Swift.Bool
  func scanHexInt(_ result: Swift.UnsafeMutablePointer<Swift.UInt32>) -> Swift.Bool
  func scanHexLongLong(_ result: Swift.UnsafeMutablePointer<Swift.UInt64>) -> Swift.Bool
  func scanHexFloat(_ result: Swift.UnsafeMutablePointer<Swift.Float>) -> Swift.Bool
  func scanHexDouble(_ result: Swift.UnsafeMutablePointer<Swift.Double>) -> Swift.Bool
  var atEnd: Swift.Bool {
    get {}
  }
  class func localizedScannerWithString(_ string: Swift.String) -> AnyObject
}
extension Scanner {
  func scanInt() -> Swift.Int32?
  func scanInteger() -> Swift.Int?
  func scanLongLong() -> Swift.Int64?
  func scanUnsignedLongLong() -> Swift.UInt64?
  func scanFloat() -> Swift.Float?
  func scanDouble() -> Swift.Double?
  func scanHexInt() -> Swift.UInt32?
  func scanHexLongLong() -> Swift.UInt64?
  func scanHexFloat() -> Swift.Float?
  func scanHexDouble() -> Swift.Double?
  func scanString(string searchString: Swift.String) -> Swift.String?
  func scanCharactersFromSet(_ set: Foundation.CharacterSet) -> Swift.String?
  func scanUpToString(_ string: Swift.String) -> Swift.String?
  func scanUpToCharactersFromSet(_ set: Foundation.CharacterSet) -> Swift.String?
}
func NSDecimalCopy(_ destination: Swift.UnsafeMutablePointer<Foundation.Decimal>, _ source: Swift.UnsafePointer<Foundation.Decimal>)
func getSuggestedFilename(fromHeaderFields headerFields: [Swift.String : Swift.String]?) -> Swift.String?
struct CGRect {
  var origin: <null>
  var size: <null>
  init()
  init(origin: Foundation.CGPoint, size: Foundation.CGSize)
}
extension CGRect : Equatable {
}
extension CGRect : NSSpecialValueCoding {
  init(bytes: Swift.UnsafeRawPointer)
  init?(coder aDecoder: Foundation.NSCoder)
  func encodeWithCoder(_ aCoder: Foundation.NSCoder)
  static func objCType() -> Swift.String
  func getValue(_ value: Swift.UnsafeMutableRawPointer)
  func isEqual(_ aValue: Any) -> Swift.Bool
  var hash: Swift.Int {
    get {}
  }
  var description: Swift.String? {
    get {}
  }
}
func createHeaders(from lines: Swift.ArraySlice<Swift.String>) -> [Foundation.URLSessionTask._HTTPMessage._Header]?
class NSExpression : Foundation.NSObject, NSSecureCoding, NSCopying {
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  required init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  init(format expressionFormat: Swift.String, argumentArray arguments: [Any])
  init(format expressionFormat: Swift.String, arguments argList: Swift.CVaListPointer)
  init(forConstantValue obj: Any?)
  class func expressionForEvaluatedObject() -> Foundation.NSExpression
  init(forVariable string: Swift.String)
  init(forKeyPath keyPath: Swift.String)
  init(forFunction name: Swift.String, arguments parameters: [Any])
  init(forAggregate subexpressions: [Any])
  init(forUnionSet left: Foundation.NSExpression, with right: Foundation.NSExpression)
  init(forIntersectSet left: Foundation.NSExpression, with right: Foundation.NSExpression)
  init(forMinusSet left: Foundation.NSExpression, with right: Foundation.NSExpression)
  init(forSubquery expression: Foundation.NSExpression, usingIteratorVariable variable: Swift.String, predicate: Any)
  init(forFunction target: Foundation.NSExpression, selectorName name: Swift.String, arguments parameters: [Any]?)
  class func expressionForAnyKey() -> Foundation.NSExpression
  init(block: @escaping (Any?, [Any], Foundation.NSMutableDictionary?) -> Any, arguments: [Foundation.NSExpression]?)
  init(forConditional predicate: Any, trueExpression: Foundation.NSExpression, falseExpression: Foundation.NSExpression)
  init(expressionType type: Foundation.NSExpression.ExpressionType)
  var expressionType: Foundation.NSExpression.ExpressionType {
    get {}
  }
  var constantValue: Any {
    get {}
  }
  var keyPath: Swift.String {
    get {}
  }
  var function: Swift.String {
    get {}
  }
  var variable: Swift.String {
    get {}
  }
  var operand: Foundation.NSExpression {
    get {}
  }
  var arguments: [Foundation.NSExpression]? {
    get {}
  }
  var collection: Any {
    get {}
  }
  var predicate: Foundation.NSPredicate {
    get {}
  }
  var left: Foundation.NSExpression {
    get {}
  }
  var right: Foundation.NSExpression {
    get {}
  }
  var `true`: Foundation.NSExpression {
    get {}
  }
  var `false`: Foundation.NSExpression {
    get {}
  }
  var expressionBlock: (Any?, [Any], Foundation.NSMutableDictionary?) -> Any {
    get {}
  }
  func expressionValue(with object: Any?, context: Foundation.NSMutableDictionary?) -> Any?
  func allowEvaluation()
  @objc deinit
  init()
}
extension NSExpression {
  enum ExpressionType : Swift.UInt {
    case constantValue
    case evaluatedObject
    case variable
    case keyPath
    case function
    case unionSet
    case intersectSet
    case minusSet
    case subquery
    case aggregate
    case anyKey
    case block
    case conditional
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
extension NSExpression {
  convenience init(format expressionFormat: Swift.String, _ args: CVarArg...)
}
func sinh(_ x: Foundation.CGFloat) -> Foundation.CGFloat
class _TimeoutSource {
  final let rawSource: <null>
  final let milliseconds: <null>
  init(queue: Dispatch.DispatchQueue, milliseconds: Swift.Int, handler: Dispatch.DispatchWorkItem)
  @objc deinit
}
class NSArray : Foundation.NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSCoding {
  final let _cfinfo: Foundation._CFInfo
  var _storage: [AnyObject]
  var count: Swift.Int {
    get {}
  }
  func object(at index: Swift.Int) -> Any
  convenience init()
  required init(objects: Swift.UnsafePointer<AnyObject>!, count cnt: Swift.Int)
  required convenience init(arrayLiteral elements: Any...)
  required convenience init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  override func mutableCopy() -> Any
  func mutableCopy(with zone: Foundation.NSZone? = default) -> Any
  convenience init(object anObject: Any)
  convenience init(array: [Any])
  convenience init(array: [Any], copyItems: Swift.Bool)
  override func isEqual(_ value: Any?) -> Swift.Bool
  override var hash: Swift.Int {
    override get {}
  }
  var allObjects: [Any] {
    get {}
  }
  func adding(_ anObject: Any) -> [Any]
  func addingObjects(from otherArray: [Any]) -> [Any]
  func componentsJoined(by separator: Swift.String) -> Swift.String
  func contains(_ anObject: Any) -> Swift.Bool
  func description(withLocale locale: Foundation.Locale?) -> Swift.String
  func description(withLocale locale: Foundation.Locale?, indent level: Swift.Int) -> Swift.String
  func firstObjectCommon(with otherArray: [Any]) -> Any?
  func getObjects(_ objects: inout [Any], range: Foundation.NSRange)
  func index(of anObject: Any) -> Swift.Int
  func index(of anObject: Any, in range: Foundation.NSRange) -> Swift.Int
  func indexOfObjectIdentical(to anObject: Any) -> Swift.Int
  func indexOfObjectIdentical(to anObject: Any, in range: Foundation.NSRange) -> Swift.Int
  func isEqual(to otherArray: [Any]) -> Swift.Bool
  var firstObject: Any? {
    get {}
  }
  var lastObject: Any? {
    get {}
  }
  struct Iterator : IteratorProtocol {
    let array: <null>
    let sentinel: <null>
    let reverse: <null>
    var idx: <null>
    mutating func next() -> Any?
    init(_ array: Foundation.NSArray, reverse: Swift.Bool = default)
    typealias Element = Any
  }
  func objectEnumerator() -> Foundation.NSEnumerator
  func reverseObjectEnumerator() -> Foundation.NSEnumerator
  var sortedArrayHint: Foundation.Data {
    get {}
  }
  func sortedArray(_ comparator: (Any, Any, Swift.UnsafeMutableRawPointer?) -> Swift.Int, context: Swift.UnsafeMutableRawPointer?) -> [Any]
  func sortedArray(_ comparator: (Any, Any, Swift.UnsafeMutableRawPointer?) -> Swift.Int, context: Swift.UnsafeMutableRawPointer?, hint: Foundation.Data?) -> [Any]
  func subarray(with range: Foundation.NSRange) -> [Any]
  func write(toFile path: Swift.String, atomically useAuxiliaryFile: Swift.Bool) -> Swift.Bool
  func write(to url: Foundation.URL, atomically: Swift.Bool) -> Swift.Bool
  func objects(at indexes: Foundation.IndexSet) -> [Any]
  subscript(idx: Swift.Int) -> Any {
    get {}
  }
  func enumerateObjects(_ block: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func enumerateObjects(options opts: Foundation.NSEnumerationOptions = default, using block: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func enumerateObjects(at s: Foundation.IndexSet, options opts: Foundation.NSEnumerationOptions = default, using block: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Void)
  func indexOfObject(passingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Int
  func indexOfObject(_ opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Int
  func indexOfObject(at s: Foundation.IndexSet, options opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Swift.Int
  func indexesOfObjects(passingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Foundation.IndexSet
  func indexesOfObjects(options opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Foundation.IndexSet
  func indexesOfObjects(at s: Foundation.IndexSet, options opts: Foundation.NSEnumerationOptions = default, passingTest predicate: (Any, Swift.Int, Swift.UnsafeMutablePointer<Foundation.ObjCBool>) -> Swift.Bool) -> Foundation.IndexSet
  func sortedArray(from range: Foundation.NSRange, options: Foundation.NSSortOptions, usingComparator cmptr: (Any, Any) -> Foundation.ComparisonResult) -> [Any]
  func sortedArray(comparator cmptr: (Any, Any) -> Foundation.ComparisonResult) -> [Any]
  func sortedArray(options opts: Foundation.NSSortOptions = default, usingComparator cmptr: (Any, Any) -> Foundation.ComparisonResult) -> [Any]
  func index(of obj: Any, inSortedRange r: Foundation.NSRange, options opts: Foundation.NSBinarySearchingOptions = default, usingComparator cmp: (Any, Any) -> Foundation.ComparisonResult) -> Swift.Int
  convenience init?(contentsOfFile path: Swift.String)
  convenience init?(contentsOfURL url: Foundation.URL)
  override var _cfTypeID: CoreFoundation.CFTypeID {
    override get {}
  }
  @objc deinit
}
extension NSArray : _CFBridgeable, _SwiftBridgeable {
  var _cfObject: CoreFoundation.CFArray {
    get {}
  }
  var _swiftObject: [AnyObject] {
    get {}
  }
  typealias CFType = CoreFoundation.CFArray
  typealias SwiftType = [AnyObject]
}
extension NSArray : Sequence {
  final func makeIterator() -> Foundation.NSArray.Iterator
  typealias SubSequence = Swift.AnySequence<Any>
}
extension NSArray : ExpressibleByArrayLiteral {
  typealias Element = Any
}
extension NSArray : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension NSArray : _StructTypeBridgeable {
  typealias _StructType = [Any]
  func _bridgeToSwift() -> Foundation.NSArray._StructType
}
extension NSArray {
  func filtered(using predicate: Foundation.NSPredicate) -> [Any]
}
extension NSArray {
  func sortedArrayUsingDescriptors(_ sortDescriptors: [Foundation.SortDescriptor]) -> [AnyObject]
}
func _CFSwiftStringReplaceAll(_ str: AnyObject, replacement: AnyObject)
func _CFSwiftStringAppendCharacters(_ str: AnyObject, chars: Swift.UnsafePointer<CoreFoundation.UniChar>, length: CoreFoundation.CFIndex)
struct IndexSet : ReferenceConvertible, Equatable, BidirectionalCollection, SetAlgebra {
  struct RangeView : Equatable, BidirectionalCollection {
    typealias Index = Swift.Int
    let startIndex: <null>
    let endIndex: <null>
    var indexSet: <null>
    var intersectingRange: <null>
    init(indexSet: Foundation.IndexSet, intersecting range: Swift.Range<Foundation.IndexSet.Element>?)
    func makeIterator() -> Swift.IndexingIterator<Foundation.IndexSet.RangeView>
    subscript(index: Foundation.IndexSet.RangeView.Index) -> Swift.CountableRange<Foundation.IndexSet.Element> {
      get {}
    }
    subscript(bounds: Swift.Range<Foundation.IndexSet.RangeView.Index>) -> Swift.BidirectionalSlice<Foundation.IndexSet.RangeView> {
      get {}
    }
    func index(after i: Foundation.IndexSet.RangeView.Index) -> Foundation.IndexSet.RangeView.Index
    func index(before i: Foundation.IndexSet.RangeView.Index) -> Foundation.IndexSet.RangeView.Index
    typealias _Element = Swift.CountableRange<Foundation.IndexSet.Element>
    typealias SubSequence = Swift.BidirectionalSlice<Foundation.IndexSet.RangeView>
    typealias IndexDistance = Swift.Int
    typealias Iterator = Swift.IndexingIterator<Foundation.IndexSet.RangeView>
    typealias Indices = Swift.DefaultBidirectionalIndices<Foundation.IndexSet.RangeView>
  }
  struct Index : CustomStringConvertible, Comparable {
    var value: <null>
    var extent: <null>
    var rangeIndex: <null>
    let rangeCount: <null>
    init(value: Swift.Int, extent: Swift.Range<Swift.Int>, rangeIndex: Swift.Int, rangeCount: Swift.Int)
    var description: Swift.String {
      get {}
    }
  }
  typealias ReferenceType = Foundation.NSIndexSet
  typealias Element = Swift.Int
  var _handle: <null>
  init(integersIn range: Swift.Range<Foundation.IndexSet.Element>)
  init(integersIn range: Swift.ClosedRange<Foundation.IndexSet.Element>)
  init(integersIn range: Swift.CountableClosedRange<Foundation.IndexSet.Element>)
  init(integersIn range: Swift.CountableRange<Foundation.IndexSet.Element>)
  init(integer: Foundation.IndexSet.Element)
  init()
  var hashValue: Swift.Int {
    get {}
  }
  var count: Swift.Int {
    get {}
  }
  func makeIterator() -> Swift.IndexingIterator<Foundation.IndexSet>
  var rangeView: Foundation.IndexSet.RangeView {
    get {}
  }
  func rangeView(of range: Swift.Range<Foundation.IndexSet.Element>) -> Foundation.IndexSet.RangeView
  func rangeView(of range: Swift.ClosedRange<Foundation.IndexSet.Element>) -> Foundation.IndexSet.RangeView
  func rangeView(of range: Swift.CountableClosedRange<Foundation.IndexSet.Element>) -> Foundation.IndexSet.RangeView
  func rangeView(of range: Swift.CountableRange<Foundation.IndexSet.Element>) -> Foundation.IndexSet.RangeView
  func _indexOfRange(containing integer: Foundation.IndexSet.Element) -> Foundation.IndexSet.RangeView.Index?
  func _range(at index: Foundation.IndexSet.RangeView.Index) -> Swift.Range<Foundation.IndexSet.Element>
  var _rangeCount: Swift.Int {
    get {}
  }
  var startIndex: Foundation.IndexSet.Index {
    get {}
  }
  var endIndex: Foundation.IndexSet.Index {
    get {}
  }
  subscript(index: Foundation.IndexSet.Index) -> Foundation.IndexSet.Element {
    get {}
  }
  subscript(bounds: Swift.Range<Foundation.IndexSet.Index>) -> Swift.BidirectionalSlice<Foundation.IndexSet> {
    get {}
  }
  func _toOptional(_ x: Swift.Int) -> Swift.Int?
  var first: Foundation.IndexSet.Element? {
    get {}
  }
  var last: Foundation.IndexSet.Element? {
    get {}
  }
  func integerGreaterThan(_ integer: Foundation.IndexSet.Element) -> Foundation.IndexSet.Element?
  func integerLessThan(_ integer: Foundation.IndexSet.Element) -> Foundation.IndexSet.Element?
  func integerGreaterThanOrEqualTo(_ integer: Foundation.IndexSet.Element) -> Foundation.IndexSet.Element?
  func integerLessThanOrEqualTo(_ integer: Foundation.IndexSet.Element) -> Foundation.IndexSet.Element?
  func indexRange(in range: Swift.Range<Foundation.IndexSet.Element>) -> Swift.Range<Foundation.IndexSet.Index>
  func indexRange(in range: Swift.CountableRange<Foundation.IndexSet.Element>) -> Swift.Range<Foundation.IndexSet.Index>
  func indexRange(in range: Swift.ClosedRange<Foundation.IndexSet.Element>) -> Swift.Range<Foundation.IndexSet.Index>
  func indexRange(in range: Swift.CountableClosedRange<Foundation.IndexSet.Element>) -> Swift.Range<Foundation.IndexSet.Index>
  func count(in range: Swift.Range<Foundation.IndexSet.Element>) -> Swift.Int
  func count(in range: Swift.CountableRange<Foundation.IndexSet.Element>) -> Swift.Int
  func count(in range: Swift.ClosedRange<Foundation.IndexSet.Element>) -> Swift.Int
  func count(in range: Swift.CountableClosedRange<Foundation.IndexSet.Element>) -> Swift.Int
  func contains(_ integer: Foundation.IndexSet.Element) -> Swift.Bool
  func contains(integersIn range: Swift.Range<Foundation.IndexSet.Element>) -> Swift.Bool
  func contains(integersIn range: Swift.CountableRange<Foundation.IndexSet.Element>) -> Swift.Bool
  func contains(integersIn range: Swift.ClosedRange<Foundation.IndexSet.Element>) -> Swift.Bool
  func contains(integersIn range: Swift.CountableClosedRange<Foundation.IndexSet.Element>) -> Swift.Bool
  func contains(integersIn indexSet: Foundation.IndexSet) -> Swift.Bool
  func intersects(integersIn range: Swift.Range<Foundation.IndexSet.Element>) -> Swift.Bool
  func intersects(integersIn range: Swift.CountableRange<Foundation.IndexSet.Element>) -> Swift.Bool
  func intersects(integersIn range: Swift.ClosedRange<Foundation.IndexSet.Element>) -> Swift.Bool
  func intersects(integersIn range: Swift.CountableClosedRange<Foundation.IndexSet.Element>) -> Swift.Bool
  func index(after i: Foundation.IndexSet.Index) -> Foundation.IndexSet.Index
  func formIndex(after i: inout Foundation.IndexSet.Index)
  func index(before i: Foundation.IndexSet.Index) -> Foundation.IndexSet.Index
  func formIndex(before i: inout Foundation.IndexSet.Index)
  func _index(ofInteger integer: Foundation.IndexSet.Element) -> Foundation.IndexSet.Index
  mutating func formUnion(_ other: Foundation.IndexSet)
  func union(_ other: Foundation.IndexSet) -> Foundation.IndexSet
  func symmetricDifference(_ other: Foundation.IndexSet) -> Foundation.IndexSet
  mutating func formSymmetricDifference(_ other: Foundation.IndexSet)
  func intersection(_ other: Foundation.IndexSet) -> Foundation.IndexSet
  mutating func formIntersection(_ other: Foundation.IndexSet)
  @discardableResult mutating func insert(_ integer: Foundation.IndexSet.Element) -> (inserted: Swift.Bool, memberAfterInsert: Foundation.IndexSet.Element)
  @discardableResult mutating func update(with integer: Foundation.IndexSet.Element) -> Foundation.IndexSet.Element?
  @discardableResult mutating func remove(_ integer: Foundation.IndexSet.Element) -> Foundation.IndexSet.Element?
  mutating func removeAll()
  mutating func insert(integersIn range: Swift.Range<Foundation.IndexSet.Element>)
  mutating func insert(integersIn range: Swift.CountableRange<Foundation.IndexSet.Element>)
  mutating func insert(integersIn range: Swift.ClosedRange<Foundation.IndexSet.Element>)
  mutating func insert(integersIn range: Swift.CountableClosedRange<Foundation.IndexSet.Element>)
  mutating func remove(integersIn range: Swift.Range<Foundation.IndexSet.Element>)
  mutating func remove(integersIn range: Swift.CountableRange<Foundation.IndexSet.Element>)
  mutating func remove(integersIn range: Swift.ClosedRange<Foundation.IndexSet.Element>)
  mutating func remove(integersIn range: Swift.CountableClosedRange<Foundation.IndexSet.Element>)
  var isEmpty: Swift.Bool {
    get {}
  }
  func filteredIndexSet(in range: Swift.Range<Foundation.IndexSet.Element>, includeInteger: (Foundation.IndexSet.Element) throws -> Swift.Bool) rethrows -> Foundation.IndexSet
  func filteredIndexSet(in range: Swift.CountableRange<Foundation.IndexSet.Element>, includeInteger: (Foundation.IndexSet.Element) throws -> Swift.Bool) rethrows -> Foundation.IndexSet
  func filteredIndexSet(in range: Swift.ClosedRange<Foundation.IndexSet.Element>, includeInteger: (Foundation.IndexSet.Element) throws -> Swift.Bool) rethrows -> Foundation.IndexSet
  func filteredIndexSet(in range: Swift.CountableClosedRange<Foundation.IndexSet.Element>, includeInteger: (Foundation.IndexSet.Element) throws -> Swift.Bool) rethrows -> Foundation.IndexSet
  func filteredIndexSet(includeInteger: (Foundation.IndexSet.Element) throws -> Swift.Bool) rethrows -> Foundation.IndexSet
  mutating func shift(startingAt integer: Foundation.IndexSet.Element, by delta: Swift.Int)
  mutating func _applyMutation<ReturnType>(_ whatToDo: (Foundation.NSMutableIndexSet) throws -> ReturnType) rethrows -> ReturnType
  var reference: Foundation.NSIndexSet {
    get {}
  }
  init(reference: Foundation.NSIndexSet)
  typealias IndexDistance = Swift.Int
  typealias _Element = Foundation.IndexSet.Element
  typealias SubSequence = Swift.BidirectionalSlice<Foundation.IndexSet>
  typealias Indices = Swift.DefaultBidirectionalIndices<Foundation.IndexSet>
  typealias Iterator = Swift.IndexingIterator<Foundation.IndexSet>
}
extension IndexSet {
  static func ==(lhs: Foundation.IndexSet, rhs: Foundation.IndexSet) -> Swift.Bool
}
extension IndexSet : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
  var description: Swift.String {
    get {}
  }
  var debugDescription: Swift.String {
    get {}
  }
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension IndexSet : _ObjectTypeBridgeable {
  static func _getObjectiveCType() -> Any.Type
  @_semantics("convertToObjectiveC") func _bridgeToObjectiveC() -> Foundation.NSIndexSet
  static func _forceBridgeFromObjectiveC(_ x: Foundation.NSIndexSet, result: inout Foundation.IndexSet?)
  static func _conditionallyBridgeFromObjectiveC(_ x: Foundation.NSIndexSet, result: inout Foundation.IndexSet?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Foundation.NSIndexSet?) -> Foundation.IndexSet
  typealias _ObjectType = Foundation.NSIndexSet
}
func NSEqualSizes(_ aSize: Foundation.NSSize, _ bSize: Foundation.NSSize) -> Swift.Bool
class URLCredential : Foundation.NSObject, NSSecureCoding, NSCopying {
  var _user: <null>
  var _password: <null>
  var _persistence: <null>
  init(user: Swift.String, password: Swift.String, persistence: Foundation.URLCredential.Persistence)
  required init?(coder aDecoder: Foundation.NSCoder)
  func encode(with aCoder: Foundation.NSCoder)
  static var supportsSecureCoding: Swift.Bool {
    final get {}
  }
  override func copy() -> Any
  func copy(with zone: Foundation.NSZone? = default) -> Any
  override func isEqual(_ object: Any?) -> Swift.Bool
  var persistence: Foundation.URLCredential.Persistence {
    get {}
  }
  var user: Swift.String? {
    get {}
  }
  var password: Swift.String? {
    get {}
  }
  var hasPassword: Swift.Bool {
    get {}
  }
  @objc deinit
  init()
}
extension URLCredential {
  enum Persistence : Swift.UInt {
    case none
    case forSession
    case permanent
    case synchronizable
    typealias RawValue = Swift.UInt
    var hashValue: Swift.Int {
      get {}
    }
    init?(rawValue: Swift.UInt)
    var rawValue: Swift.UInt {
      get {}
    }
  }
}
protocol NSSpecialValueCoding {
  static func objCType() -> Swift.String
  init(bytes value: Swift.UnsafeRawPointer)
  func encodeWithCoder(_ aCoder: Foundation.NSCoder)
  init?(coder aDecoder: Foundation.NSCoder)
  func getValue(_ value: Swift.UnsafeMutableRawPointer)
  func isEqual(_ value: Any) -> Swift.Bool
  var hash: Swift.Int { get }
  var description: Swift.String? { get }
}
struct Double {
  var _value: <null>
  init()
  init(_bits v: Builtin.FPIEEE64)
}
extension Double : _ObjectTypeBridgeable {
  init(_ number: Foundation.NSNumber)
  typealias _ObjectType = Foundation.NSNumber
  func _bridgeToObjectiveC() -> Swift.Double._ObjectType
  static func _forceBridgeFromObjectiveC(_ source: Swift.Double._ObjectType, result: inout Swift.Double?)
  @discardableResult static func _conditionallyBridgeFromObjectiveC(_ source: Swift.Double._ObjectType, result: inout Swift.Double?) -> Swift.Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Swift.Double._ObjectType?) -> Swift.Double
}
extension Double {
  init(_ value: Foundation.CGFloat)
}
extension Double : LosslessStringConvertible {
  init?(_ text: Swift.String)
}
extension Double : CustomStringConvertible {
  var description: Swift.String {
    get {}
  }
}
extension Double : CustomDebugStringConvertible {
  var debugDescription: Swift.String {
    get {}
  }
}
extension Double : BinaryFloatingPoint {
  typealias Exponent = Swift.Int
  typealias RawSignificand = Swift.UInt64
  static var exponentBitCount: Swift.Int {
    get {}
  }
  static var significandBitCount: Swift.Int {
    get {}
  }
  @_versioned static var _infinityExponent: Swift.UInt {
    @inline(__always) get {}
  }
  static var _exponentBias: Swift.UInt {
    @inline(__always) get {}
  }
  static var _significandMask: Swift.UInt64 {
    @inline(__always) get {}
  }
  @_versioned static var _quietNaNMask: Swift.UInt64 {
    @inline(__always) get {}
  }
  var bitPattern: Swift.UInt64 {
    get {}
  }
  init(bitPattern: Swift.UInt64)
  var sign: Swift.FloatingPointSign {
    get {}
  }
  @available(*, unavailable, renamed: "sign") var isSignMinus: Swift.Bool {
    get {}
  }
  var exponentBitPattern: Swift.UInt {
    get {}
  }
  var significandBitPattern: Swift.UInt64 {
    get {}
  }
  init(sign: Swift.FloatingPointSign, exponentBitPattern: Swift.UInt, significandBitPattern: Swift.UInt64)
  var isCanonical: Swift.Bool {
    get {}
  }
  static var infinity: Swift.Double {
    get {}
  }
  static var nan: Swift.Double {
    get {}
  }
  static var signalingNaN: Swift.Double {
    get {}
  }
  @available(*, unavailable, renamed: "nan") static var quietNaN: Swift.Double {
    get {}
  }
  static var greatestFiniteMagnitude: Swift.Double {
    get {}
  }
  static var pi: Swift.Double {
    get {}
  }
  var ulp: Swift.Double {
    get {}
  }
  static var leastNormalMagnitude: Swift.Double {
    get {}
  }
  static var leastNonzeroMagnitude: Swift.Double {
    get {}
  }
  var exponent: Swift.Int {
    get {}
  }
  var significand: Swift.Double {
    get {}
  }
  init(sign: Swift.FloatingPointSign, exponent: Swift.Int, significand: Swift.Double)
  init(nan payload: Swift.Double.RawSignificand, signaling: Swift.Bool)
  var nextUp: Swift.Double {
    get {}
  }
  mutating func round(_ rule: Swift.FloatingPointRoundingRule)
  mutating func negate()
  mutating func add(_ other: Swift.Double)
  mutating func subtract(_ other: Swift.Double)
  mutating func multiply(by other: Swift.Double)
  mutating func divide(by other: Swift.Double)
  mutating func formRemainder(dividingBy other: Swift.Double)
  mutating func formTruncatingRemainder(dividingBy other: Swift.Double)
  mutating func formSquareRoot()
  mutating func addProduct(_ lhs: Swift.Double, _ rhs: Swift.Double)
  func isEqual(to other: Swift.Double) -> Swift.Bool
  func isLess(than other: Swift.Double) -> Swift.Bool
  func isLessThanOrEqualTo(_ other: Swift.Double) -> Swift.Bool
  var isNormal: Swift.Bool {
    get {}
  }
  var isFinite: Swift.Bool {
    get {}
  }
  var isZero: Swift.Bool {
    get {}
  }
  var isSubnormal: Swift.Bool {
    get {}
  }
  var isInfinite: Swift.Bool {
    get {}
  }
  var isNaN: Swift.Bool {
    get {}
  }
  var isSignalingNaN: Swift.Bool {
    get {}
  }
  var binade: Swift.Double {
    get {}
  }
  var significandWidth: Swift.Int {
    get {}
  }
  init(floatLiteral value: Swift.Double)
  typealias FloatLiteralType = Swift.Double
  typealias RawExponent = Swift.UInt
}
extension Double : _ExpressibleByBuiltinIntegerLiteral, ExpressibleByIntegerLiteral {
  init(_builtinIntegerLiteral value: Builtin.Int2048)
  init(integerLiteral value: Swift.Int64)
  typealias IntegerLiteralType = Swift.Int64
}
extension Double : _ExpressibleByBuiltinFloatLiteral {
  init(_builtinFloatLiteral value: Builtin.FPIEEE80)
}
extension Double : Hashable {
  var hashValue: Swift.Int {
    get {}
  }
}
extension Double {
  var magnitude: Swift.Double {
    get {}
  }
}
extension Double {
  init(_ v: Swift.UInt8)
  @available(*, message: "Converting UInt8 to Double will always succeed.") @inline(__always) init?(exactly value: Swift.UInt8)
  init(_ v: Swift.Int8)
  @available(*, message: "Converting Int8 to Double will always succeed.") @inline(__always) init?(exactly value: Swift.Int8)
  init(_ v: Swift.UInt16)
  @available(*, message: "Converting UInt16 to Double will always succeed.") @inline(__always) init?(exactly value: Swift.UInt16)
  init(_ v: Swift.Int16)
  @available(*, message: "Converting Int16 to Double will always succeed.") @inline(__always) init?(exactly value: Swift.Int16)
  init(_ v: Swift.UInt32)
  @available(*, message: "Converting UInt32 to Double will always succeed.") @inline(__always) init?(exactly value: Swift.UInt32)
  init(_ v: Swift.Int32)
  @available(*, message: "Converting Int32 to Double will always succeed.") @inline(__always) init?(exactly value: Swift.Int32)
  init(_ v: Swift.UInt64)
  @inline(__always) init?(exactly value: Swift.UInt64)
  init(_ v: Swift.Int64)
  @inline(__always) init?(exactly value: Swift.Int64)
  init(_ v: Swift.UInt)
  @inline(__always) init?(exactly value: Swift.UInt)
  init(_ v: Swift.Int)
  @inline(__always) init?(exactly value: Swift.Int)
}
extension Double {
  init(_ other: Swift.Float)
  @inline(__always) init?(exactly other: Swift.Float)
  init(_ other: Swift.Double)
  @inline(__always) init?(exactly other: Swift.Double)
  init(_ other: Swift.Float80)
  @inline(__always) init?(exactly other: Swift.Float80)
}
extension Double : Strideable {
  func distance(to other: Swift.Double) -> Swift.Double
  func advanced(by amount: Swift.Double) -> Swift.Double
  typealias Stride = Swift.Double
  typealias _DisabledRangeIndex = Swift._DisabledRangeIndex_
}
extension Double {
  @available(swift, deprecated: 3.1, obsoleted: 4.0, message: "Please use the `abs(_:)` free function") static func abs(_ x: Swift.Double) -> Swift.Double
}
extension Double : CustomReflectable {
  var customMirror: Swift.Mirror {
    get {}
  }
}
extension Double : CustomPlaygroundQuickLookable {
  var customPlaygroundQuickLook: Swift.PlaygroundQuickLook {
    get {}
  }
}
extension Double : _CVarArgPassedAsDouble, _CVarArgAligned {
  var _cVarArgEncoding: [Swift.Int] {
    get {}
  }
  var _cVarArgAlignment: Swift.Int {
    get {}
  }
}
func integerSubtract(_ result: inout Foundation.Decimal, _ left: inout Foundation.Decimal, _ right: inout Foundation.Decimal) -> Foundation.NSDecimalNumber.CalculationError
class URLSessionStreamTask : Foundation.URLSessionTask {
  func readData(ofMinLength minBytes: Swift.Int, maxLength maxBytes: Swift.Int, timeout: Foundation.TimeInterval, completionHandler: @escaping (Foundation.Data?, Swift.Bool, Error?) -> Swift.Void)
  func write(_ data: Foundation.Data, timeout: Foundation.TimeInterval, completionHandler: @escaping (Error?) -> Swift.Void)
  func captureStreams()
  func closeWrite()
  func closeRead()
  func startSecureConnection()
  func stopSecureConnection()
  @objc deinit
  init()
  init(session: Foundation.URLSession, request: Foundation.URLRequest, taskIdentifier: Swift.Int, body: Foundation.URLSessionTask._Body)
}
var NSURLErrorCannotCloseFile: Swift.Int {
  get {}
}
