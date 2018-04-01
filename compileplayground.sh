#!/bin/bash

# Compile models
/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc compile ./VPL/Models/Alphanum_28x28.mlmodel ./MLExports --language Swift --swift-version 4.0
/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc generate ./VPL/Models/Alphanum_28x28.mlmodel ./MLExports --language Swift --swift-version 4.0

/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc compile ./VPL/Models/Chars74k.mlmodel ./MLExports --language Swift --swift-version 4.0
/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc generate ./VPL/Models/Chars74k.mlmodel ./MLExports --language Swift --swift-version 4.0

/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc compile ./VPL/Models/MNIST.mlmodel ./MLExports --language Swift --swift-version 4.0
/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc generate ./VPL/Models/MNIST.mlmodel ./MLExports --language Swift --swift-version 4.0

# Clear current files there
rm -r Playground.playground/Sources/* Playground.playground/Resources/*

# Copy over the models
cp -r MLExports/*.mlmodelc Playground.playground/Resources
mkdir Playground.playground/Sources/Models
cp -r MLExports/*.swift Playground.playground/Sources/Models

# Copy over the sources
cp -r VPL/{Data,OCR,Rendering,Utils.swift} Playground.playground/Sources

# Copy images
cp -r VPL/Images/* Playground.playground/Resources
