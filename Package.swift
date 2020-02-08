// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SoftUIView",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "SoftUIView",
            targets: ["SoftUIView"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SoftUIView",
            dependencies: [],
            path: "Sources"),
    ]
)
