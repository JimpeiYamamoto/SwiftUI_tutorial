//
//  UserData.swift
//  Landmarks
//
//  Created by 水代謝システム工学研究室 on 2022/06/01.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
