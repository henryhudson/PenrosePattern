//
//  DartView.swift
//  PenrosePattern
//
//  Created by Henry Hudson on 20/02/2021.
//

import SwiftUI
import PureSwiftUI

private var dartSegments = 30
private var dartRings = 12
private var dartLayoutGuide = LayoutGuideConfig.polar(rings: dartRings, segments: dartSegments)

struct DartView: View {
    var body: some View {
        ZStack {
            Dart()
                .layoutGuide(dartLayoutGuide)
                .showLayoutGuides(true)
            
        }
        .padding()
            
    }
}



struct Dart: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        var guide = dartLayoutGuide.layout(in: rect)
        
        path.move(guide[dartRings, 0])
        
        path.line(guide[dartRings, 9])
        path.line(guide[0, 0])
        
        path.line(guide[dartRings, 21])
        
        
//        path.line(from: guide[dartRings, 0], length: 1000, angle: 144.degrees)
//        path.line(from: guide[dartRings, 0], length: 1000, angle: -144.degrees)
        
//        path.line(from: guide[dartRings, 9], length: 1000, angle: -72.degrees)
//        path.line(from: guide[dartRings, 21], length: 1000, angle: 72.degrees)
        
        path.closeSubpath()
        
        return path
    }
}

struct DartView_Previews: PreviewProvider {
    static var previews: some View {
        DartView()
    }
}
