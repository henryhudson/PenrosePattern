//
//  DartsView.swift
//  PenrosePattern
//
//  Created by Henry Hudson on 20/02/2021.
//

import SwiftUI

struct DartsView: View {
    var body: some View {
        ZStack {
//            Dart()
//                .foregroundColor(.secondary)
            
            Dart()
                .rotate(180.degrees, anchor: .center)
                .foregroundColor(.secondary)
            
            Dart()
                .rotate(270.degree, anchor: .center)
                .foregroundColor(.secondary)
        }
        
    }
}

struct DartsView_Previews: PreviewProvider {
    static var previews: some View {
        DartsView()
    }
}
