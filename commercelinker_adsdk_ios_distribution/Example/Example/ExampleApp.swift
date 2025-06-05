//
//  ExampleApp.swift
//  Example
//
//  Copyright © 2025 ValueCommerce Co., Ltd. All rights reserved.
//

import SwiftUI
import CommerceLinkerAdSDK

@main
struct ExampleApp: App {
    init() {
        CLADConstant.setEnvironment(env: .test)
        CLADConfig.shared.initialize(siteCode: "xxx")
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
