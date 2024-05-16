//
//  ContentView.swift
//  detectCurrentTime
//
//  Created by Rangga Biner on 17/05/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timeManager = TimeManager()

    var body: some View {
        VStack {
            Text(timeManager.currentTime)
        }
    }
}


#Preview {
    ContentView()
}
