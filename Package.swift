// swift-tools-version:4.2

import PackageDescription

let package = Package(
	name: "PerfectKafkaCouchDbTemplate",
	products: [
		.executable(name: "PerfectKafkaCouchDbTemplate", targets: ["PerfectKafkaCouchDbTemplate"])
	],
	dependencies: [
		.package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", from: "3.0.0"),
        .package(url: "https://github.com/janipasanen/Perfect-Kafka.git", from: "4.0.0"),
	],
	targets: [
		.target(name: "PerfectKafkaCouchDbTemplate",
                dependencies: [
                    "PerfectHTTPServer",
                    "PerfectKafka"
                ]
        )
	]
)
