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
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F3.1/1/AircoreMedia.xcframework.zip",
            checksum: "6b37e1cee2d133b88972abd5c97f77bf93acbbd730cd5b177609d3684c74d8ae"
        ),
        .binaryTarget(
            name: "Bakersfield",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F3.1/1/Bakersfield.xcframework.zip",
            checksum: "0865ee4ebc4dd3127382e5ec3c820df2f78a97fa34b0e7bc8531d1e1761e4bfd"
        ),
    ]
)
