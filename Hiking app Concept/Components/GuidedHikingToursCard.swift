//
//  GuidedHikingToursCard.swift
//  Hiking app Concept
//
//  Created by Pat on 2022/11/02.
//

import SwiftUI

struct GuidedHikingToursCard: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading){
                    Spacer()
                    Text("Blyde River Canyon Tour")
                        .bold()
                    Text("Time")
                }
                .foregroundColor(.white)
                .padding([.leading,.bottom], 10)
                Spacer()
            }
        }
        .frame(width: 340, height: 250)
        .background(
            ZStack {
                Image("BlydeBig")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Rectangle()
                    .frame(height: 100)
                    .offset(y:300/2.8)
                    .opacity(0.5)
                    .blur(radius: 5)
            }
        )
        .cornerRadius(10)
    }
}

struct GuidedHikingToursCard_Previews: PreviewProvider {
    static var previews: some View {
        GuidedHikingToursCard()
            .previewLayout(.sizeThatFits)
    }
}
