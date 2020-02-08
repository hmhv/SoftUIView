
![SoftUIView](https://raw.githubusercontent.com/hmhv/SoftUIView/master/assets/softuiview.png)

[![Platforms](https://img.shields.io/badge/platforms-iOS-lightgrey.svg)](https://github.com/hmhv/SoftUIView)
[![Cocoapods](https://img.shields.io/cocoapods/v/SoftUIView.svg)](https://cocoapods.org/pods/SoftUIView)
[![SPM compatible](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-11.3-blue.svg)](https://developer.apple.com/xcode)
[![MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)

# SoftUIView

SoftUIView is a [Soft-UI (Neumorphism)](https://uxdesign.cc/neumorphism-in-user-interfaces-b47cef3bf3a6) view written in Swift.

## Requirements

- **iOS** 10.0+
- Swift 5.0+

## Installation

### CocoaPods

```
pod 'SoftUIView'
```

### Swift Package Manager

Open your Xcode project, select File -> Swift Packages -> Add Package Dependency.... and type `https://github.com/hmhv/SoftUIView.git`.


### Manually 

Add the <a href="https://github.com/hmhv/SoftUIView/tree/master/Sources/SoftUIView">SoftUIView</a> folder to your Xcode project to use SoftUIView.</p>

## Usage

### add soft ui view

```swift
let softUIView = SoftUIView(frame: .init(x: 100, y: 100, width: 200, height: 200))
view.addSubview(softUIView)
```

![add soft ui view](https://raw.githubusercontent.com/hmhv/SoftUIView/master/assets/addview.png)

### view customize 

```swift
softUIView.mainColor = UIColor.brown.cgColor
softUIView.cornerRadius = 50
softUIView.darkShadowColor = UIColor.black.cgColor
softUIView.lightShadowColor = UIColor.yellow.cgColor
softUIView.shadowOpacity = 0.5
softUIView.shadowOffset = .init(width: -6, height: 6)
softUIView.shadowRadius = 10
```

![add soft ui view](https://raw.githubusercontent.com/hmhv/SoftUIView/master/assets/customview.png)

### handle event 

SoftUIView is a subclass of  UIControl, so you can use controlEvents.

```swift
softUIView.addTarget(self, action: #selector(handleTap), for: .touchUpInside)

@objc func handleTap() {
    // code
}
```

### Example

for more infomation, check [ViewController.swift](https://raw.githubusercontent.com/hmhv/SoftUIView/master/Example/Example/ViewController.swift) of Example project.

![SoftUIView](https://raw.githubusercontent.com/hmhv/SoftUIView/master/assets/softuiview.gif)

## License

SoftUIView is released under the MIT license. See [LICENSE](https://github.com/hmhv/SoftUIView/blob/master/LICENSE) for more information.