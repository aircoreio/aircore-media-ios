// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AircoreMedia",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AircoreMedia",
            targets: ["AircoreMedia", "HighwayOne", "MetalPetal", "AircoreMediaTargets"]),
    ],
    dependencies: [
        .package(url:"https://github.com/aircoreio/aircore-logging-ios", from:"1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "AircoreMedia",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.1.0/3/AircoreMedia.xcframework.zip",
            checksum: "a1d76836ee992a3add5f29cebc89dbfee79f730bfa9a5e8d6badc087fbcc2001"
        ),
        .binaryTarget(
            name: "HighwayOne",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.1.0/3/HighwayOne.xcframework.zip",
            checksum: "891ae631872f5f33dc8e63632491e1212a4d7bc68c89099dafb59a614be5cdee"
        ),
        .binaryTarget(
            name: "MetalPetal",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.1.0/3/MetalPetal.xcframework.zip",
            checksum: "127dcfb64a92b70af2cf15af7931a3f141b02057f94c897f14de33699279ed9d"
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
