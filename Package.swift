// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "KTVHTTPCache",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "KTVHTTPCache",
            targets: ["KTVHTTPCache"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", from: "7.6.4"),
    ],
    targets: [
        .target(
            name: "KTVHTTPCache",
            dependencies: [
                .product(name: "CocoaAsyncSocket", package: "CocoaAsyncSocket")
            ],
            path: "KTVHTTPCache",
            exclude: ["Info.plist"],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("Classes/KTVHCCommon"),
                .headerSearchPath("Classes/KTVHCDataStorage"),
		.headerSearchPath("Classes/KTVHCTools"),
		.headerSearchPath("Classes/KTVHCDownload"),
		.headerSearchPath("Classes/KTVHCHTTPServer"),
		.headerSearchPath("Classes/KTVHCTools"),
		.headerSearchPath("CocoaHTTPServer")
            ]
        )
    ]
)

