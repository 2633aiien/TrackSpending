//
//  CalenderView.swift
//  TrackSpending
//
//  Created by allen on 2023/5/5.
//

import SwiftUI

struct CalenderView: View {
    var body: some View {
        NavigationView {
            Form {

            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {} label: {
                        Image(systemName: "bell")
                            .foregroundColor(.primary)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {} label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

struct CalenderView_Previews: PreviewProvider {
    static var previews: some View {
        CalenderView()
    }
}
