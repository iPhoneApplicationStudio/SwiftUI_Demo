//
//  DetailView.swift
//  NavigationLinkDemo
//
//  Created by Abhinay Maurya on 28/09/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Text("Welcome!! this is the detail screen")
            .font(.title)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
