// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "AmazonChimeSDK",
    products: [
        .library(name: "AmazonChimeSDK", targets: ["AmazonChimeSDK"])
    ],
    dependencies: [    
        .package(url: "https://github.com/birdrides/mockingbird.git", from: "0.16.0")
    ]
    targets: [
        .target(name: "AmazonChimeSDK", path: "AmazonChimeSDK/AmazonChimeSDK")
        .testTarget(
            name: "AmazonChimeSDKTests",
            dependencies: ["AmazonChimeSDK"]),
    ]
)