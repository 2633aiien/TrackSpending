//
//  SettingView.swift
//  TrackSpending
//
//  Created by allen on 2023/5/5.
//

import SwiftUI

struct SettingView: View {
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 24
                                                                          )!]
    }
    var body: some View {

        List {
            Section(header: Text("我的帳號").font(.system(size: 20))) {
                HStack {
                    Text("目前方案")
                        .font(.system(size: 18))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("基本版")
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                HStack {
                    Text("已是訂閱用戶？")
                        .font(.system(size: 18))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("還原訂閱")
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }

        }
        .navigationBarTitle(Text("更多功能"), displayMode: .inline)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
