// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PublishedProductPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PublishedProductPackage",
            targets: ["PublishedFramework", "DummyWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/jzwc/external-package.git", branch: "main")
    ],
    targets: [
        .binaryTarget(
            name: "PublishedFramework",
            url: "https://sdk.smartlook.com/ios/others/PublishedFramework4.zip",
            checksum: "bd8866f9fc0d569d0e856eef345af7462a9bea14728171ae4286fcad000201ed"
        ),
        .target(
            name: "DummyWrapper",
            dependencies: [
                .product(name: "ExternalPackage", package: "external-package")
            ]
        ),
    ]
)
