//
//  WalletView.swift
//  TrackSpending
//
//  Created by allen on 2023/5/5.
//

import SwiftUI

struct WalletView: View {
    @State var firstIsOpened: Bool = false
    @State var secondIsOpened: Bool = false
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 24
                                                                          )!]
    }
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text(firstIsOpened ? "- 進行中" : "+ 進行中")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 20)
                .contentShape(Rectangle())
                .onTapGesture {
                    self.firstIsOpened.toggle()
                    print("tapped1")
                }
                Divider()
                    .padding(.horizontal, 20)
                if firstIsOpened {
                    HStack {
                        Image(systemName: "wineglass.fill")
                            .padding(10)
                            .background(Color.gray)
                            .clipShape(Circle())
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding(.trailing, 5)
                        VStack (alignment: .leading){
                            Text("生活開銷")
                                .font(.system(size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("2020/1/1 - 2020/1/31")
                                .font(.system(size: 16))
                                .foregroundColor(.gray)
                        }
                        Text("$0")
                            .font(.system(size: 20))
                            .frame(maxWidth: .infinity, alignment: .trailing)

                    }
                    .padding(.horizontal, 20)
                }
                HStack {
                    Text(secondIsOpened ? "- 已結束" : "+ 已結束")
                        .onTapGesture {
                            self.secondIsOpened.toggle()
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)

                    Text("$0")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.horizontal, 20)
                .contentShape(Rectangle())
                .onTapGesture {
                    self.secondIsOpened.toggle()
                    print("tapped2")
                }
                Divider()
                    .padding(.horizontal, 20)
//                if secondIsOpened {
//                    HStack{
//                        Image(systemName: "creditcard.fill")
//                            .padding(10)
//                            .background(Color.gray)
//                            .clipShape(Circle())
//                            .font(.title3)
//                            .foregroundColor(.white)
//                            .padding(.trailing, 5)
//                        Text("分期付款")
//                            .font(.system(size: 20))
//                            .frame(maxWidth: .infinity, alignment: .leading)
//
//                        Text("$0")
//                            .font(.system(size: 20))
//                            .frame(maxWidth: .infinity, alignment: .trailing)
//                    }
//                    .padding(.horizontal, 20)
//                }
                Spacer()
            }
            .navigationBarTitle(Text("專案/預算"), displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {} label: {
                        Image(systemName: "plus")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
