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
        .package(url:"https://github.com/aircoreio/aircore-logging-ios", from:"1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "AircoreMedia",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.2.0/2/AircoreMedia.xcframework.zip",
            checksum: "c02a790782f4095b65fdd4d36f877922bddac6bd645377832454b2860f23fcb4"
        ),
        .binaryTarget(
            name: "MetalPetal",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.2.0/2/MetalPetal.xcframework.zip",
            checksum: "a763ecdb37159f3e50315c454315309153c6ffb4a8a6b49e75868bc5fbe8688f"
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
