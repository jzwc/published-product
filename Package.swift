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
            url: "https://sdk.smartlook.com/ios/others/PublishedFramework2.zip",
            checksum: "27d05286540dedb1d23af73f919c61d1c23721b824d52819b46b24dd69d48239"
        ),
    ]
)
