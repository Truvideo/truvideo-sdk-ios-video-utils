// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.2"

let package = Package(
    name: "TruvideoSdkVideoUtils",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TruvideoSdkVideoUtils",
            targets: ["TruvideoSdkVideoUtilsTarget"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "ffmpegkit",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/ffmpegkit.xcframework.zip",
            checksum: "c46909a8c1d21eac04c31376fdc771f9570e65acb63ececa1fbc510d544d0711"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libavcodec.xcframework.zip",
            checksum: "17e7f49ef66f723f84fa4655f70f15907695cbcf1a7c7cb10d0b040205f32874"
        ),
        .binaryTarget(
            name: "libavdevice",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libavdevice.xcframework.zip",
            checksum: "3d54f55cbe3d6b9be5d44ba07028e7cf8910e8b5b0d3b50c5fc3672770e0c9d7"
        ),
        .binaryTarget(
            name: "libavfilter",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libavfilter.xcframework.zip",
            checksum: "a9ebd1652e57fb5719037bb91197cf3c357ecffa2b28d9f0ba4f37660c30b16a"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libavformat.xcframework.zip",
            checksum: "5bd2bb4c22275c6afda60ac30dc15e7ce5c6d708c09108cd549a0433c901a7bb"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libavutil.xcframework.zip",
            checksum: "2bef86cc9797a320423e04af351ab45eff0546a9eba3208fae3aa81bb8a99114"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libswresample.xcframework.zip",
            checksum: "d81b332982467ec10d1c6fe9c66cb54764ef53fdb0c3072de8a6a7b8a9770cb4"
        ),
        .binaryTarget(
            name: "libswscale",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libswscale.xcframework.zip",
            checksum: "8a7d21ecf1620acf6e806beb6c1cd2f42cf8a1b98cd64ef071287d68f0bdc198"
        ),
        .target(
            name: "TruvideoSdkVideoUtilsTarget",
            dependencies: [
                "ffmpegkit",
                "libavcodec",
                "libavdevice",
                "libavfilter",
                "libavformat",
                "libavutil",
                "libswresample",
                "libswscale"
            ],
            path: "Sources"
        )
    ]
)
