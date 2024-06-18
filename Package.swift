// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AircoreMedia",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AircoreMedia",
            targets: ["AircoreMedia", "MetalPetal", "AircoreMediaTargets"]),
    ],
    dependencies: [
        .package(url:"https://github.com/aircoreio/aircore-logging-ios", from:"1.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "AircoreMedia",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.5.1/1/AircoreMedia.xcframework.zip",
            checksum: "73231578d3daee850c06a63fd59d484bd751cdfb622163d094482e64eb528570"
        ),
        .binaryTarget(
            name: "MetalPetal",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.5.1/1/MetalPetal.xcframework.zip",
            checksum: "ef30c9daee6377ae8255df1fea294eca273c24901e2ed0cbee43b992805fee59"
        ),
        .target(
            name: "AircoreMediaTargets",
            dependencies: [
                .target(name: "AircoreMedia"),
                .product(name: "AircoreLogging", package: "aircore-logging-ios")
            ],
            path: "Sources"
        )
    ]
)
