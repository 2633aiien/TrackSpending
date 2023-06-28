//
//  User.swift
//  TrackSpending
//
//  Created by allen on 2023/5/5.
//

import SwiftUI
import Charts


struct UserView: View {

    let myMoneyData = [ MoneyData(year: 2021, month: 7, day: 1, money: 19.0),
                        MoneyData(year: 2021, month: 8, day: 1, money: 17.0),
                        MoneyData(year: 2021, month: 9, day: 1, money: 17.0),
                        MoneyData(year: 2021, month: 10, day: 1, money: 13.0),
                        MoneyData(year: 2021, month: 11, day: 1, money: 8.0),
                        MoneyData(year: 2021, month: 12, day: 1, money: 8.0),
                        MoneyData(year: 2022, month: 1, day: 1, money: 5.0),
                        MoneyData(year: 2022, month: 2, day: 1, money: 8.0),
                        MoneyData(year: 2022, month: 3, day: 1, money: 9.0),
                        MoneyData(year: 2022, month: 4, day: 1, money: 11.0),
                        MoneyData(year: 2022, month: 5, day: 1, money: 15.0),
                        MoneyData(year: 2022, month: 6, day: 1, money: 18.0)
    ]

    @State var isBlock: Bool = false
    @State var firstIsOpened: Bool = false
    @State var secondIsOpened: Bool = false
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 24
                                                                          )!]
    }
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("指定")
                        Text("TWD")
                            .fontWeight(.bold)
                            .font(.system(size: 28))
                        HStack {
                            Image(systemName: "calendar")
                            Text("每月")
                            Image(systemName: "chevron.down")
                                .font(.system(size: 10))
                        }
                        .padding(.horizontal,5)
                        .background(Color.gray)
                        .cornerRadius(5)
                    }
                    .padding(.top, 30)
                    VStack {
                        Text(isBlock ? "億萬富翁" : "10,000")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                            .padding(.bottom, 5)
                        HStack {
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 6))
                            Text("\(isBlock ? "....." :"20000")(1000%)")
                        }
                    }
                }

                if #available(iOS 16.0, *) {
                    Chart() {
                        ForEach(myMoneyData) { item in
                            LineMark(
                                x: .value("Month", item.date), y: .value("money", item.money)
                            )
                            .foregroundStyle(Color.purple)
                            .symbol(Circle())
                        }

                    }
                    .chartXAxis {
                        AxisMarks(values: .stride(by: .month)) { valve in
                            AxisGridLine()
                            AxisValueLabel(format: .dateTime.month(.defaultDigits))
                        }
                    }
                    .frame(height: 200)
                }

                VStack {
                    HStack {
                        Text(firstIsOpened ? "- 現金" : "+ 現金")
                            .frame(maxWidth: .infinity, alignment: .leading)

                        Text(isBlock ? "---" : "$100,000")
                            .font(.system(size: 20))
                            .frame(maxWidth: .infinity, alignment: .trailing)
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
                            Image(systemName: "wallet.pass.fill")
                                .padding(10)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                            Text("錢包")
                                .font(.system(size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text(isBlock ? "🙈" : "$100,000")
                                .font(.system(size: 20))
                                .frame(maxWidth: .infinity, alignment: .trailing)

                        }
                        .padding(.horizontal, 20)
                    }
                    HStack {
                        Text(secondIsOpened ? "- 其他" : "+ 其他")
                            .onTapGesture {
                                self.secondIsOpened.toggle()
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)

                        Text(isBlock ? "---" : "$0")
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
                    if secondIsOpened {
                        HStack{
                            Image(systemName: "creditcard.fill")
                                .padding(10)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                            Text("分期付款")
                                .font(.system(size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)

                            Text(isBlock ? "🙈" : "$0")
                                .font(.system(size: 20))
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .padding(.horizontal, 20)
                    }
                    Spacer()
                }
                .padding(.top, 30)
            }
            .navigationBarTitle(Text("帳戶總覽"), displayMode: .inline)
            //            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {self.isBlock.toggle()} label: {
                        Image(systemName: self.isBlock == true ? "eye.slash" : "eye")
                            .foregroundColor(.primary)
                    }
                }
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

struct User_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
