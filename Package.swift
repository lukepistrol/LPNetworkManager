// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "LPNetworkManager",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
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
