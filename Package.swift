// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AircoreMedia",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AircoreMedia",
            targets: ["AircoreMedia", "Bakersfield", "HighwayOne", "MetalPetal", "AircoreMediaTargets"]),
    ],
    dependencies: [
        .package(url:"https://github.com/aircoreio/aircore-logging-ios", from:"1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "AircoreMedia",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.0/3/AircoreMedia.xcframework.zip",
            checksum: "bfd80e76f96f384fba747a26d64a0eb9eb5f35093a50b2ba8e1bbb2def41c0e8"
        ),
        .binaryTarget(
            name: "Bakersfield",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.0/3/Bakersfield.xcframework.zip",
            checksum: "d4cb256712ca44d17c368e99bfb5a63911f65105e1ede593e1f37f7e5e35dad8"
        ),
        .binaryTarget(
            name: "HighwayOne",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.0/3/HighwayOne.xcframework.zip",
            checksum: "5e8b7e296589b88635b720396882c395fa53862383f48e8fe6274bd4fb47c038"
        ),
        .binaryTarget(
            name: "MetalPetal",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.0/3/MetalPetal.xcframework.zip",
            checksum: "dc8243009de63fc04d28cbd6ddd2a0b71dfb7531de65d2bd49168acc64ade6f1"
        ),
        .target(
            name: "AircoreMediaTargets",
            dependencies: [
                .target(name: "AircoreMedia"),
                .target(name: "Bakersfield"),
                .product(name: "AircoreLogging", package: "aircore-logging-ios")
            ],
            path: "Sources"
        )
    ]
)
