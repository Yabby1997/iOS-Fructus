//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Seunghun Yang on 2021/03/10.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", linkLabel: "테스트", linkDestination: "notion.seunghun.ml")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingsRowView(name: "Developer", content: "테스트")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
