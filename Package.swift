// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "LPNetworkManager",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8),
    ],
    products: [
        .library(
            name: "LPNetworkManager",
            targets: ["LPNetworkManager"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lukepistrol/SwiftLintPlugin", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "LPNetworkManager",
            dependencies: [],
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin")
            ]),
        .testTarget(
            name: "LPNetworkManagerTests",
            dependencies: ["LPNetworkManager"]),
    ]
)
