// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Generated automatically by Perfect Assistant 2
// Date: 2018-03-28 18:54:02 +0000
import PackageDescription

let package = Package(
    name: "PerfectHTTPServer",
    products: [
        .library(name: "PerfectHTTPServer", targets: ["PerfectHTTPServer"])
    ],
    dependencies: [
        .package(url: "https://github.com/PerfectlySoft/Perfect-Net.git", from: "3.1.2"),
        .package(url: "https://github.com/Charlieatinstinct/PerfectHTTP.git", from: "1.0.1"),
        .package(url: "https://github.com/PerfectlySoft/Perfect-CZlib-src.git", from: "0.0.0")
    ],
    targets: [
        .target(name: "PerfectCHTTPParser", dependencies: []),
        .target(name: "PerfectHTTPServer", dependencies: ["PerfectCHTTPParser", .product(name: "PerfectNet", package: "Perfect-Net"), "PerfectHTTP", .product(name: "PerfectCZlib", package: "Perfect-CZlib-src")]),
        .testTarget(name: "PerfectHTTPServerTests", dependencies: ["PerfectHTTPServer"])
    ]
)

