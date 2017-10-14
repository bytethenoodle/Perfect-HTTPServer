// swift-tools-version:4.0
//
//  Package.swift
//  PerfectHTTPServer
//
//  Created by Kyle Jessup on 2016-05-02.
//	Copyright (C) 2016 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

let package = Package(
    name: "PerfectHTTPServer",
    products: [
        .library(name: "PerfectHTTPServer", targets: ["PerfectHTTPServer"])
    ],
    dependencies: [
        .package(url: "https://github.com/bytethenoodle/Perfect-Net.git", .upToNextMajor(from: "3.0.2")),
        .package(url: "https://github.com/bytethenoodle/Perfect-HTTP.git", .upToNextMajor(from: "3.0.2"))
    ],
    targets: [
        .target(name: "PerfectCHTTPParser",
                dependencies: []),
        .target(name: "PerfectCZlib",
                dependencies: [],
                exclude: ["examples", "test", "contrib"]),
        .target(name: "PerfectHTTPServer",
                dependencies: ["PerfectCHTTPParser", "PerfectCZlib", "PerfectNet", "PerfectHTTP"])
    ]
)
