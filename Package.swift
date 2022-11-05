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
    targets: [
        .target(
            name: "LPNetworkManager",
            dependencies: []),
        .testTarget(
            name: "LPNetworkManagerTests",
            dependencies: ["LPNetworkManager"]),
    ]
)
