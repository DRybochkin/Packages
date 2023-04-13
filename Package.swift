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
            targets: ["OKTracer"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "OKTracer",
            url: "https://nexus.odkl.ru/repository/dists/ios-debug-symbols/OKTracer/xcframeworks/0.1.19.30/OKTracerWrapperFramework.xcframework.zip",
            checksum: "0170feddd2c99efd735abe66bbaf6656d3b519ec3492ecb472c9f7cdbe1e8c2e")
    ]
)
