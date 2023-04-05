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
            url: "https://github.com/DRybochkin/Packages/files/11158158/OKTracer.xcframework.zip",
            checksum: "d985eba0c833d1157b796df9a96895d95bd3ba2b0fd4f26f6e7ad19de1d89805")
    ]
)
