// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AircoreMedia",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AircoreMedia",
            targets: ["AircoreMedia", "Bakersfield"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "AircoreMedia",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F3.0/8/AircoreMedia.xcframework.zip",
            checksum: "5bc0bb6329bfcbdcf68ce232bf36caa58e956b4ead5039c8f1c11934dd2a03ac"
        ),
        .binaryTarget(
            name: "Bakersfield",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F3.0/8/Bakersfield.xcframework.zip",
            checksum: "0026c2dbdf5ccee54b323d3a82e25043f6dec8421c097c94ba0bc049d80930f0"
        ),
    ]
)
