//
//  ProgressView2.swift
//  Session-ComplicationsSwiftUI WatchKit Extension
//
//  Created by Zewu Chen on 25/06/20.
//  Copyright © 2020 Zewu Chen. All rights reserved.
//

import SwiftUI
import ClockKit

struct ProgressSample: View {
    var body: some View {
        ProgressView(value: 0.7) {
            Image(systemName: "music.note")
        }
        .progressViewStyle(CircularProgressViewStyle())
    }
}

struct ProgressSample_Previews: PreviewProvider {
    static var previews: some View {
        CLKComplicationTemplateGraphicCircularView(ProgressSample())
            .previewContext()
    }
}
