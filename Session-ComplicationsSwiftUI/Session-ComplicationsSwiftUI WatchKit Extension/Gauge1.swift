//
//  Gauge1.swift
//  Session-ComplicationsSwiftUI WatchKit Extension
//
//  Created by Zewu Chen on 25/06/20.
//  Copyright © 2020 Zewu Chen. All rights reserved.
//

import SwiftUI
import ClockKit

struct GaugeSample: View {
    var body: some View {
        Gauge(value: 5.8, in: 3...10) {
            Image(systemName: "drop.fill")
                .foregroundColor(.green)
        }
        .gaugeStyle(CircularGaugeStyle())
    }
}

struct GaugeSample_Previews: PreviewProvider {
    static var previews: some View {
        CLKComplicationTemplateGraphicCircularView(GaugeSample())
            .previewContext()
    }
}
