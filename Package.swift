// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "OKTracerPackage",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "OKTracerPackage",
            targets: ["OKTracerPackage", "OKTracer"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OKTracerPackage",
            path: "Sources"
        ),
        .binaryTarget(
            name: "OKTracer",
            url: "https://github.com/DRybochkin/Packages/files/11011512/OKTracer.xcframework.zip",
            checksum: "9373fdee27eda6c2a79c45a7abca12b528bc763c52fb4d90c381ed1112d3e186")
    ]
)
