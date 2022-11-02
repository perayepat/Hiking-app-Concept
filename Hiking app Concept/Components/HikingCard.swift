//
//  HikingCard.swift
//  Hiking app Concept
//
//  Created by Pat on 2022/11/02.
//

import SwiftUI

struct HikingCard: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                VStack(alignment:.leading){
                    Text("Blyde River Canyon")
                        .bold()
                    Text("Panaroma Route")
                }
                .foregroundColor(.white)
                Spacer()
            }
            .padding([.leading,.bottom], 10)
        }
        
        .background(
            ZStack {
                Image("Blyde2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width/1.5, height: 220)
                    .offset(y:300/2.8)
                    .opacity(0.5)
                    .blur(radius: 5)
            }
        )
        .frame(width: 180, height: 250)
        .cornerRadius(10)
    }
}


struct HikingCard_Previews: PreviewProvider {
    static var previews: some View {
        HikingCard()
        //            .previewLayout(PreviewLayout.sizeThatFits)
            .previewLayout(.sizeThatFits)
    }
}
