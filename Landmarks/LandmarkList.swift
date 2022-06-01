//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 水代謝システム工学研究室 on 2022/06/01.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
   
    
    var body: some View {
        NavigationView{
            List {
                
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favotites only")
                }
                
                ForEach(landmarkData) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone X"], id: \.self) { deviceName in
           LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                .environmentObject(UserData())
        }
        LandmarkList()
    }
}
