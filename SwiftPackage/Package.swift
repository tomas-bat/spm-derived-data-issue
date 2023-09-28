// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPackage",
    products: [
        .library(
            name: "SwiftPackage",
            targets: ["SwiftPackage"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", .upToNextMajor(from: "6.6.0"))
    ],
    targets: [
        .target(
            name: "SwiftPackage",
            dependencies: [],
            plugins: [
                .plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")
            ]
        )
    ]
)
