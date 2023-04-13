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
            url: "https://nexus.odkl.ru/repository/dists/ios-debug-symbols/OKTracer/xcframeworks/0.1.19.28/OKTracer.xcframework.zip",
            checksum: "dd89ed571b2083030568b020e4c233ff0f74b60830118ab30bdb354329a0add6")
    ]
)
