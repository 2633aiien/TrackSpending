//
//  AnalyzeView.swift
//  TrackSpending
//
//  Created by allen on 2023/5/5.
//

import SwiftUI

struct AnalyzeView: View {
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 24
                                                                          )!]
    }
    var body: some View {
        NavigationView {
            Form {

            }
            .navigationBarTitle(Text("每月報表"), displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {} label: {
                        Image(systemName: "chart.bar.xaxis")
                            .foregroundColor(.primary)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {} label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.primary)
                    }
                }
            }

        }
    }
}

struct AnalyzeView_Previews: PreviewProvider {
    static var previews: some View {
        AnalyzeView()
    }
}
