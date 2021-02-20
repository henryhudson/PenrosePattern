//
//  KiteView.swift
//  PenrosePattern
//
//  Created by Henry Hudson on 20/02/2021.
//

import SwiftUI
import PureSwiftUI

private var kiteSegments = 30
private var kiteRings = 60
private var kiteLayoutGuide = LayoutGuideConfig.polar(rings: kiteRings, segments: kiteSegments)
struct KiteView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Kite()
                .layoutGuide(kiteLayoutGuide)
                .showLayoutGuides(false)
                
            
//            Pie(startAngle: -0.degrees, endAngle: -144.degrees)
//                .opacity(0.8)
                
        }
        .padding(20)
    }
}

struct Kite: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        var guide = kiteLayoutGuide.layout(in: rect)
        
        path.move(guide[kiteRings, 0])
        
        path.line(guide[kiteRings, 9])
        
        path.line(guide[37, kiteSegments / 2])
        
        path.line(guide[kiteRings, 21])
        
        
        
        path.closeSubpath()
        
        return path
    }
}


struct KiteView_Previews: PreviewProvider {
    static var previews: some View {
        KiteView()
    }
}
