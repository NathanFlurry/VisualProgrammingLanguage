#!/bin/bash

# Compile models
/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc compile ./VPL/Models/Alphanum_28x28.mlmodel ./MLExports --language Swift --swift-version 4.0
/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc generate ./VPL/Models/Alphanum_28x28.mlmodel ./MLExports --language Swift --swift-version 4.0

/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc compile ./VPL/Models/Chars74k.mlmodel ./MLExports --language Swift --swift-version 4.0
/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc generate ./VPL/Models/Chars74k.mlmodel ./MLExports --language Swift --swift-version 4.0

/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc compile ./VPL/Models/MNIST.mlmodel ./MLExports --language Swift --swift-version 4.0
/Applications/Xcode.app/Contents/Developer/usr/bin/coremlc generate ./VPL/Models/MNIST.mlmodel ./MLExports --language Swift --swift-version 4.0

# Clear current source files
rm -r WWDC18.playgroundbook/Contents/Sources/*
#rm -r WWDC18.playgroundbook/Contents/PrivateResources/*

# Copy over the models
cp -r MLExports/*.mlmodelc WWDC18.playgroundbook/Contents/PrivateResources
mkdir WWDC18.playgroundbook/Contents/Sources/Models
cp -r MLExports/*.swift WWDC18.playgroundbook/Contents/Sources/Models

# Copy over the sources
cp -r VPL/{Data,OCR,Rendering,Utils.swift} WWDC18.playgroundbook/Contents/Sources

# Copy images
cp -r VPL/Images/* WWDC18.playgroundbook/Contents/PrivateResources
