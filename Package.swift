// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Lasso",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Auto
        .library(
            name: "Lasso",
            targets: ["Lasso"]
        ),
        .library(
            name: "LassoTestUtilities",
            targets: ["LassoTestUtilities"]
        ),
        // Static
        .library(
            name: "LassoStatic",
            type: .static,
            targets: ["Lasso"]
        ),
        .library(
            name: "LassoTestUtilitiesStatic",
            type: .static,
            targets: ["LassoTestUtilities"]
        ),
        // Dynamic
        .library(
            name: "LassoDynamic",
            type: .dynamic,
            targets: ["Lasso"]
        ),
        .library(
            name: "LassoTestUtilitiesDynamic",
            type: .dynamic,
            targets: ["LassoTestUtilities"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Lasso",
            dependencies: []
        ),
        .target(
            name: "LassoTestUtilities",
            dependencies: [
                .target(name: "Lasso")
            ]
        )
    ]
)
