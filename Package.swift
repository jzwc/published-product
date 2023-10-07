// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PublishedProductPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PublishedProductPackage",
            targets: ["PublishedProduct"]),
    ],
    targets: [
        .binaryTarget(
            name: "PublishedProduct",
            url: "https://sdk.smartlook.com/ios/smartlook-ios-sdk-2.2.8.241.zip",
            checksum: "81fa500cc5ba1ca151d282cf5522e0d4a9cdb56b35e901382c38fa685af40f3e"
        ),
    ]
)
