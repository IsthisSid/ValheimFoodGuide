//
//  SourceLinkView.swift
//  ValheimFoodGuide
//
//  Created by Sidany Walker on 6/3/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Valheim Fandom", destination: URL(string: "https://valheim.fandom.com/wiki/Food")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
