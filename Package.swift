// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HaversineDistance",
    products: [
        .library(
            name: "haversineFormula",
            targets: ["haversineFormula"]),
    ],
    targets: [
        .target(
            name: "haversineFormula",
            path: "src",
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .testTarget(
            name: "haversineFormulaTests",
            dependencies: ["haversineFormula"],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
    ]
)
