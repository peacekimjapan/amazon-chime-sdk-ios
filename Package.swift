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
        .target(name: "AmazonChimeSDK", path: "./AmazonChimeSDK/AmazonChimeSDK"),
        .testTarget(
            name: "AmazonChimeSDKTests",
            dependencies: ["AmazonChimeSDK"]
        ),
        .binaryTarget(
            name: "AmazonChimeSDK",
            url: "https://amazon-chime-sdk-ios.s3.amazonaws.com/sdk/0.16.5/AmazonChimeSDK-0.16.5.tar.gz"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            path: "https://amazon-chime-sdk-ios.s3.amazonaws.com/media/0.12.1/AmazonChimeSDKMedia-0.12.1.tar.gz"
        )
    ]
)