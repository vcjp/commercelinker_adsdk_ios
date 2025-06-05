//
//  BrandAdInlineView.swift
//  ad_sdk_ios_test
//
//  Copyright © 2025 ValueCommerce Co., Ltd. All rights reserved.
//

import SwiftUI
import CommerceLinkerAdSDK

struct BrandAdInlineView: View {
    let adspaceId = "xxx"
    let request = CLADBrandAdRequest(searchCategoryIds: ["xxx"])
    
    var body: some View {
        GeometryReader { geometry in
            let adspace = CLADAdspace(adspaceId: adspaceId, width: geometry.size.width, tabViewHeight: 100)
            ScrollView {
                VStack {
                    ForEach(1...10, id: \.self) { i in
                        Text("Item \(i)")
                            .font(.title)
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                    CLADBrandInlineAdView(adspace: adspace, request: request)
                    Spacer()
                    ForEach(11...20, id: \.self) { i in
                        Text("Item \(i)")
                            .font(.title)
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}
