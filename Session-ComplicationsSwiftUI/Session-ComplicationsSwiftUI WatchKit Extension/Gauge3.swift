//
//  Gauge3.swift
//  Session-ComplicationsSwiftUI WatchKit Extension
//
//  Created by Zewu Chen on 25/06/20.
//  Copyright © 2020 Zewu Chen. All rights reserved.
//

import SwiftUI
import ClockKit

struct GaugeSample: View {
    @State var acidity = 5.8

    var body: some View {
        Gauge(value: acidity, in: 3...10) {
            Image(systemName: "drop.fill")
                .foregroundColor(.green)
        } currentValueLabel: {
            Text("\(acidity, specifier: "%.1f")")
        } minimumValueLabel: {
            Text("3")
        } maximumValueLabel: {
            Text("10")
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
