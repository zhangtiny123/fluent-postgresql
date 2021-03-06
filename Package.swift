// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "fluent-postgres-driver",
    products: [
        .library(name: "FluentPostgresDriver", targets: ["FluentPostgresDriver"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zhangtiny123/fluent-kit.git", .branch("swift-back")),
        .package(url: "https://github.com/vapor/nio-postgres.git", .branch("master")),
        .package(url: "https://github.com/vapor/sql-kit.git", from: "3.0.0-alpha"),
        .package(url: "https://github.com/vapor/nio-kit.git", .branch("master")),
    ],
    targets: [
        .target(name: "FluentPostgresDriver", dependencies: [
            "FluentKit",
            "FluentSQL",
            "NIOKit",
            "NIOPostgres",
            "SQLKit"
        ]),
        .testTarget(name: "FluentPostgresDriverTests", dependencies: [
            "FluentBenchmark",
            "FluentPostgresDriver",
            "SQLKitBenchmark"
        ]),
    ]
)
