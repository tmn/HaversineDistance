// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HaversineDistance",
    products: [
        .library(
            name: "HaversineDistance",
            targets: ["HaversineDistance"]),
    ],
    targets: [
        .target(
            name: "HaversineDistance",
            dependencies: []),
        .testTarget(
            name: "HaversineDistanceTests",
            dependencies: ["HaversineDistance"]),
    ]
)
