//
//  ProgressView4.swift
//  Session-ComplicationsSwiftUI WatchKit Extension
//
//  Created by Zewu Chen on 25/06/20.
//  Copyright © 2020 Zewu Chen. All rights reserved.
//

import SwiftUI
import ClockKit

struct ProgressSample: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Water Reminder")
                .foregroundColor(.blue)
            Text("32 oz. consumed")
            ProgressView(value: 0.7)
                .progressViewStyle(LinearProgressViewStyle(tint: .blue))
        }

    }
}

struct ProgressSample_Previews: PreviewProvider {
    static var previews: some View {
        CLKComplicationTemplateGraphicRectangularFullView(ProgressSample())
            .previewContext()
    }
}
