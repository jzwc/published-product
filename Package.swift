// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PublishedProductPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PublishedProductPackage",
            targets: ["PublishedFramework"]),
    ],
    targets: [
        .binaryTarget(
            name: "PublishedFramework",
            url: "https://sdk.smartlook.com/ios/others/PublishedFramework.zip",
            checksum: "5454c04c4aef02e1ee4b06bc5784e44334c8b984f38eb45b8db172a132951199"
        ),
    ]
)
