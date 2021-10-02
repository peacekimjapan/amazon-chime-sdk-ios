// swift-tools-version:5.4
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
            checksum: "556a50fb1b36d32dc768d6b0ed1f9f61"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://amazonchime.s3.amazonaws.com/AmazonChimeSDKMedia.xcframework.zip",
            checksum: "f52fbfc77b64c14a6f59fe8f242f9dbb"
        )
    ]
)