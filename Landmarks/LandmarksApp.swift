//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 水代謝システム工学研究室 on 2022/05/31.
//

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            LandmarkDetail(landmark: landmarkData[0])
        }
    }
}
