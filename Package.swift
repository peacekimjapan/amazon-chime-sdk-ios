// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AmazonChimeSDK",
    products: [
        .library(name: "AmazonChimeSDK", targets: ["AmazonChimeSDK"])
    ],
    dependencies: [    
        .package(url: "https://github.com/birdrides/mockingbird.git", from: "0.15.0")
    ],
    targets: [
        .binaryTarget(
            name: "AmazonChimeSDK",
            url: "https://amazonchime.s3.amazonaws.com/AmazonChimeSDK.xcframework.zip",
            checksum: "527f2a2e7d30fd3c56b2cbe717752fd238ada66e71a66c4797b3b7fbc41f8737"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://amazonchime.s3.amazonaws.com/AmazonChimeSDKMedia.xcframework.zip",
            checksum: "4672196db98b1e0efba822f7185273cb706458e379ccbdfa01637626a53599fb"
        )
    ]
)