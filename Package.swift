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
        .package(
            url: "https://github.com/jzwc/external-package.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/apple/swift-protobuf.git",
            exact: "1.20.2"
        )
    ],
    targets: [
        .binaryTarget(
            name: "PublishedFramework",
            url: "https://sdk.smartlook.com/ios/others/PublishedFramework8.zip",
            checksum: "9eac4e2fe8d9fcafe2a6ab625c39154cb9b011c28b7db5984c614effb20fbd89"
        ),
        .target(
            name: "DummyDependencyHolder",
            dependencies: [
                .product(name: "ExternalPackage", package: "external-package"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]
        ),
    ]
)
