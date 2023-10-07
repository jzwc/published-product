// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PublishedProductPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PublishedProductPackage",
            targets: ["PublishedFramework", "DummyDependencyHolder"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/jzwc/external-package.git", branch: "main")
    ],
    targets: [
        .binaryTarget(
            name: "PublishedFramework",
            url: "https://sdk.smartlook.com/ios/others/PublishedFramework5.zip",
            checksum: "91203f615d7f4563c6f504311739a3d27eb440531335e1c9d8480b599ecac437"
        ),
        .target(
            name: "DummyDependencyHolder",
            dependencies: [
                .product(name: "ExternalPackage", package: "external-package")
            ]
        ),
    ]
)
