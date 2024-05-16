//
//  CurrentTimeManager.swift
//  detectCurrentTime
//
//  Created by Rangga Biner on 17/05/24.
//

import Foundation
import Combine

class TimeManager: ObservableObject {
    @Published var currentTime: String = ""

    private var timer: Timer?

    init() {
        startTimer()
    }

    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.updateTime()
        }
        timer?.fire()
    }

    func updateTime() {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .none
        currentTime = formatter.string(from: Date())
    }

    deinit {
        timer?.invalidate()
    }
}
