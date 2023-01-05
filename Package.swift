// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AircoreMedia",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AircoreMedia",
            targets: ["AircoreMedia", "Bakersfield", "AircoreMediaTargets"]),
    ],
    dependencies: [
        .package(url:"https://github.com/aircoreio/aircore-logging-ios", from:"1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "AircoreMedia",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F3.2/8/AircoreMedia.xcframework.zip",
            checksum: "b25033a0fb8a8de03ad0e0ff3f67114816742afc3f50a2184ff117fd4db59283"
        ),
        .binaryTarget(
            name: "Bakersfield",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F3.2/8/Bakersfield.xcframework.zip",
            checksum: "debdc76bca120923e66af06272b9623a27df150e2d401a8502916405b395e0fb"
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
