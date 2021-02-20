//
//  PenroseView.swift
//  PenrosePattern
//
//  Created by Henry Hudson on 20/02/2021.
//

import SwiftUI
import PureSwiftUI

struct PenroseView: View {
    var body: some View {
        ZStack {
            Kite()
                .opacity(0.8)
            
            Dart()
                .foregroundColor(.blue)
                .rotate(180.degree)
                .offset(x: 0, y: 127.6)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
        }
    }
}



struct PenroseView_Previews: PreviewProvider {
    static var previews: some View {
        PenroseView()
    }
}
