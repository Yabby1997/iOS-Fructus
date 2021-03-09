//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Seunghun Yang on 2021/03/09.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

// MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
