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
            url: "https://github.com/DRybochkin/Packages/files/11016003/OKTracer.xcframework.zip",
            checksum: "31d2aff69c034f56bb76bbdf37a26e3eb5f058dbf74cc469a0acf06db14976a6")
    ]
)
