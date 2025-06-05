//
//  RewardAdOverlayView.swift
//  ad_sdk_ios_test
//
//  Copyright © 2025 ValueCommerce Co., Ltd. All rights reserved.
//

import SwiftUI
import CommerceLinkerAdSDK

struct RewardAdOverlayView: View {
    let adspaceId = "xxx"
    
    var body: some View {
        GeometryReader { geometry in
            let adspace1 = CLADAdspace(adspaceId: adspaceId, width: geometry.size.width)
            VStack {
                ZStack {
                    ScrollView {
                        VStack {
                            ForEach(1...30, id: \.self) { i in
                                Text("Item \(i)")
                                    .font(.title)
                                    .frame(width: 300, height: 50)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    CLADRewardOverlayAdView(adspace: adspace1)
                }
                Text("Tab Bar")
                    .font(.title)
                    .frame(width: UIScreen.main.bounds.width, height: 40)
                    .background(Color.red.opacity(0.5))
            }
            .frame(maxWidth: .infinity)
        }
    }
}
