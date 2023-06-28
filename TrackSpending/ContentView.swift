//
//  ContentView.swift
//  TrackSpending
//
//  Created by allen on 2023/5/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            TabView {
                UserView().tabItem {
                    NavigationLink(destination: UserView()) {
                        Image(systemName: "person")
                        Text("User") }.tag(1)
                }
                WalletView().tabItem {
                    NavigationLink(destination: WalletView()) {
                        Image(systemName: "wallet.pass")
                        Text("Wallet") }.tag(2)
                }
                CalenderView().tabItem {
                    NavigationLink(destination: CalenderView()) {
                        Image(systemName: "calendar")
                        Text("Calendar") }.tag(3)
                }
                AnalyzeView().tabItem {
                    NavigationLink(destination: AnalyzeView()) {
                        Image(systemName: "chart.xyaxis.line")
                        Text("Analyze") }.tag(4)
                }
                SettingView().tabItem {
                    NavigationLink(destination: SettingView()) {
                        Image(systemName: "line.3.horizontal")
                        Text("Setting") }.tag(5)
                }

            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
