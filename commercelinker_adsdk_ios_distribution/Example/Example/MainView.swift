//
//  ContentView.swift
//  ad_sdk_ios_test
//
//  Copyright © 2025 ValueCommerce Co., Ltd. All rights reserved.
//

import SwiftUI

struct MainView: View {
    let adViewTypes: [String: [String]] = [
        "ProductAd": ["InlineView", "OverlayView"],
        "BrandAd": ["InlineView", "OverlayView"],
        "RewardAd": ["InlineView", "OverlayView"],
    ]
    
    @State private var selectedAdType = "ProductAd"
    @State private var selectedViewType = "InlineView"
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section {
                        Picker("Ad Type", selection: $selectedAdType) {
                            ForEach(adViewTypes.keys.sorted(), id: \.self) { category in
                                Text(category)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .padding()
                        
                        Picker("View Type", selection: $selectedViewType) {
                            ForEach(adViewTypes[selectedAdType] ?? [], id: \.self) { item in
                                Text(item)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .padding()
                    } header: {
                        Text("Select AdType and ViewType")
                    }
                    .textCase(nil)
                }
                NavigationLink(
                    destination: destinationView(adType: selectedAdType, viewType: selectedViewType),
                    label: {
                        Text("Go to sample view")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                )
                .padding()
                
                Divider()
                    .background(Color.gray)
                
                NavigationLink(
                    destination: CVRequestView(),
                    label: {
                        Text("Go to sample CV request")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                )
                .padding()
            }
            .navigationTitle("CommerceLinkerAd")
        }
    }
    
    @ViewBuilder
        func destinationView(adType: String, viewType: String) -> some View {
            switch (adType, viewType) {
            case ("ProductAd", "InlineView"):
                ProductAdInlineView()
            case ("ProductAd", "OverlayView"):
                ProductAdOverlayView()
            case ("BrandAd", "InlineView"):
                BrandAdInlineView()
            case ("BrandAd", "OverlayView"):
                BrandAdOverlayView()
            case ("RewardAd", "InlineView"):
                RewardAdInlineView()
            case ("RewardAd", "OverlayView"):
                RewardAdOverlayView()
            case ("CVRequest", "-"):
                CVRequestView()
            default:
                Text("Not available")
            }
        }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
