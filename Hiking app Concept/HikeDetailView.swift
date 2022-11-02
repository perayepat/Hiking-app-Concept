//
//  HikeDetailView.swift
//  Hiking app Concept
//
//  Created by Pat on 2022/11/02.
//

import SwiftUI

struct HikeDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView(showsIndicators: false){
            topSection
            InfoRow
            Divider()
                .frame(width: UIScreen.main.bounds.width/1.1)
            routeView
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .overlay(
            HStack {
                VStack {
                    backButton
                    Spacer()
                }
                .padding(.leading)
                Spacer()    
            }
        )
    }
}

//MARK: - Views
extension HikeDetailView{
    var topSection: some View{
        Image("Blyde2")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width,height: 500)
            .clipShape(
                Rectangle()
            )
            .overlay {
                Rectangle()
                    .frame(height: 200)
                    .offset(y:140)
                    .opacity(0.5)
                    .blur(radius: 20)
                imageOverlay
            }
    }
    var imageOverlay: some View{
        HStack {
            VStack(alignment: .leading,spacing: 10){
                Spacer()
                    .frame(height: 300)
                Text("Blyde River Canyon")
                    .font(.largeTitle)
                    .bold()
                HStack {
                    Image(systemName: "pin")
                    Text("Panorama Route, Mpumalanga")
                }
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.8 (78)")
                }
            }
            .frame(width: 300)
            .foregroundColor(.white)
            Spacer()
            VStack {
                HStack{
                    Image(systemName: "heart")
                        .foregroundColor(.black)
                        .padding(10)
                        .background(.white, in: Circle())
                        .padding(.top,10)
                    
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.black)
                        .padding(10)
                        .background(.white, in: Circle())
                        .padding(.top,10)
                }
                .offset(x:-10)
                Spacer()
            }
            .padding([.top,.trailing])
        }
        .padding()
    }
    
    //Hike Detail View
    var InfoRow: some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                HikeInfoIcons(icon: "map", description: "Distance", info: "30KM")
                Divider()
                HikeInfoIcons(icon: "clock", description: "Duration", info: "3 days")
                Divider()
                HikeInfoIcons(icon: "hand.thumbsup", description: "Difficulty", info: "Meduim")
                Divider()
                HikeInfoIcons(icon: "mountain.2", description: "Elevation", info: "564m")
            }
            .padding(.vertical)
        }
    }
    var routeView: some View{
        VStack(alignment: .leading){
            HStack{
                Text("Route")
                    .font(.title3)
                    .bold()
            }
            Image("Map")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .cornerRadius(10)

        }
        .padding(.horizontal)
    }
    
    //Back Button
    var backButton : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .padding(10)
                    .background(.white, in: Circle())
            }
        }
    }
}

//MARK: - View Builders
extension HikeDetailView{
    @ViewBuilder
    func HikeInfoIcons(icon: String, description:String, info: String) -> some View{
        VStack(spacing:3){
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.pink)
                .opacity(0.8)
            Text(description)
                .font(.caption)
                .foregroundColor(.secondary)
            Text(info)
                .font(.title3)
                .bold()
        }
        .padding(.horizontal)
    }
}


struct HikeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetailView()
    }
}


