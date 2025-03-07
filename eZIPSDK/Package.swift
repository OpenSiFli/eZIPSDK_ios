// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "eZIPSDK",
    platforms: [
        .iOS(.v9) // 设置最低支持 iOS 9.0‌:ml-citation{ref="1" data="citationList"}
    ],
    products: [
        .library(
            name: "eZIPSDK",
            targets: ["eZIPSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "eZIPSDK",
            path: "Sources/eZIPSDK.xcframework" // 指向 xcframework 的物理路径‌:ml-citation{ref="1,4" data="citationList"}
        )
    ]
)
