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
            url: "https://github.com/DRybochkin/Packages/files/11015698/OKTracer.xcframework.zip",
            checksum: "db12c7d056ef0cbea2a31bbb56a8bddc39ab46a54355e80b587cd4b6c9b95dfc",
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("UIKit"),
                .linkedLibrary("z"),
                .unsafeFlags(["-weak-lswiftDemangle"])
            ],
            cSettings: [
                .define("PLCR_PRIVATE"),
                .define("PLCF_RELEASE_BUILD"),
                .define("PLCRASHREPORTER_PREFIX", to: ""),
                .define("SWIFT_PACKAGE"),
                .unsafeFlags(["-Wno-shorten-64-to-32"])
            ]
	)
    ]
)
