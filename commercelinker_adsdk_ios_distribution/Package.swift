// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommerceLinkerAdSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CommerceLinkerAdSDK",
            targets: ["CommerceLinkerAdSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CommerceLinkerAdSDK",
            path: "CommerceLinkerAdSDK.xcframework"
        ),
    ]
)
