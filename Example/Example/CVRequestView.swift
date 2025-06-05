//
//  CVRequestView.swift
//  ad_sdk_ios_test
//
//  Copyright © 2025 ValueCommerce Co., Ltd. All rights reserved.
//

import SwiftUI
import CommerceLinkerAdSDK

struct CVRequestView: View {
    var body: some View {
        Text("Conversion API Called")
            .onAppear{
                callConversionAPI()
            }
    }
    
    func callConversionAPI() {
        var productInfos: [CLADPurchaseProductInfo] = []
        productInfos.append(CLADPurchaseProductInfo(productCode: "sample_1", count: 1, amount: 200))
        productInfos.append(CLADPurchaseProductInfo(productCode: "sample_2", count: 2, amount: 1000))
        
        CLADConversionCall(productInfos: productInfos)
    }
}
