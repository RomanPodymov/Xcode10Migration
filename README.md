# Xcode9to10Preparation

Xcode 10 functions in Xcode 9.

[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/Xcode9to10Preparation.svg)](https://cocoapods.org/pods/Xcode9to10Preparation)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/RomanPodymov/Xcode9to10Preparation)

## Contents

- [Requirements](#requirements)
- [Installation](#installation)

## Requirements

- iOS 8.0+ / tvOS 9.0+
- Xcode 9.4+
- Swift 3.3+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate Xcode9to10Preparation into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'Xcode9to10Preparation'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate Xcode9to10Preparation into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "RomanPodymov/Xcode9to10Preparation"
```

Run `carthage update` to build the framework and drag the built `Xcode9to10Preparation.framework` into your Xcode project.
