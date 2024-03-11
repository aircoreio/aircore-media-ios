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
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.4.0/17/AircoreMedia.xcframework.zip",
            checksum: "e526b30dcc2cd362b1e21325f2a5e2f64fd5ac74706574f812c1f5d32d318325"
        ),
        .binaryTarget(
            name: "MetalPetal",
            url: "https://airtime-eng-asilomar-libs.s3-accelerate.amazonaws.com/jobs/airtimemedia/asilomar/release%252F4.4.0/17/MetalPetal.xcframework.zip",
            checksum: "4a13a323363cc5fd655efe96d17b3f8ec0dc75138fd66a15bde16d965c01f629"
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
