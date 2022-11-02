//
//  WelcomePageView.swift
//  Hiking app Concept
//
//  Created by Pat on 2022/10/31.
//

import SwiftUI

struct WelcomePageView: View {
    @State var onTapped: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                informativeUI
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                background
            )
        }
        .navigate(to: ContentView(), when: $onTapped)
    }
}


//MARK: - Views
extension WelcomePageView{
    var informativeUI: some View{
        VStack(spacing: 15){
            Image("Traingles")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
                .offset(y:30)
                .hueRotation(Angle.degrees(-10))
            Text("Find The Perfect \n Hiking Trail")
                .multilineTextAlignment(.center)
                .font(.title)
                .bold()
            Text("Discover what South africa has to \n offfer with currated hiking guides")
                .multilineTextAlignment(.center)
                .frame(width: 380)
            Spacer()
            Spacer()
            Button {
                onTapped.toggle()
            } label: {
                Text("Start Exploring")
                    .frame(width: 320, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 2)
                    )
            }
            .foregroundColor(.white)
            
        }
        
        .foregroundColor(.white)
    }
    var background: some View{
        Image("welcomeBG")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
            .overlay {
                ZStack {
                    Rectangle()
                        .ignoresSafeArea()
                        .frame(height: 300)
                        .offset(y:300)
                        .blur(radius: 50)
                        .opacity(0.4)
                    Rectangle()
                        .ignoresSafeArea()
                        .frame(height: 600)
                        .blur(radius: 100)
                        .offset(y:-300)
                        .opacity(0.55)
                }
            }
        
    }
    
}

struct WelcomePageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePageView()
    }
}


