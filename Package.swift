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
            path: "Sources",
            swiftSettings: [
                .define("TRACER_SPM"),
            ]
       ),
        .binaryTarget(
            name: "OKTracer",
            url: "https://github.com/DRybochkin/Packages/files/11158460/OKTracer.xcframework.zip",
            checksum: "1d506114696849069691d2c9620f88f18f16250e0343460c616a4c2bdff35db0")
    ]
)
