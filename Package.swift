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
            targets: ["OKTracer", "OKTracerBundle"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "OKTracer",
            url: "https://nexus.odkl.ru/repository/dists/ios-debug-symbols/OKTracer/xcframeworks/0.1.19.70/OKTracer.xcframework.zip",
            checksum: "3cc56abfa51b44a9792dffc2ca310332619de2c5fad91f91fb9991540eb52d19"),
        .binaryTarget(
            name: "OKTracerBundle",
            url: "https://nexus.odkl.ru/repository/dists/ios-debug-symbols/OKTracer/xcframeworks/0.1.19.70/OKTracerBundle.xcframework.zip",
            checksum: "9ccb365af251d7c25eaf41ee2f2cb5337d2e231a54b5a2fb87bbbd7169f3db0d")
    ]
)
