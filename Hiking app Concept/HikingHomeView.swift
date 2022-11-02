//
//  HikingHomeView.swift
//  Hiking app Concept
//
//  Created by Pat on 2022/10/31.
//

import SwiftUI

struct HikingHomeView: View {

   
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false){
                topSection
                SectionHeaders(titleForSection: "Plan Your Next Hike")
                hikeScrollView
                Divider()
                    .padding(.vertical)
                    .bold()
                    .frame(width: UIScreen.main.bounds.width/1.1)
                SectionHeaders(titleForSection: "Guided Hiking Tours")
                guidedHikeScrollView
                Spacer()
                    .frame(height: 100)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
    
    func currentMonth() -> String{
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        let nameOfMonth = dateFormatter.string(from: now)
        return nameOfMonth
    }
}

//MARK: - Views
extension HikingHomeView{
    var topSection: some View{
        Image("Homeimg2")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 400)
            .clipShape(
                Rectangle()
            )
            .overlay {
                ZStack(alignment: .leading){
                    Rectangle()
                        .opacity(0.5)
                        .frame(width: 250)
                        .blur(radius: 10)
                    imageOverlay
                }
            }
    }
    var imageOverlay: some View{
        HStack {
            VStack(alignment: .leading){
                Spacer()
                    .frame(height: 120)
                Text("\(currentMonth())")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                Text("Favourites")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                Button {
                    
                } label: {
                    Text("Explore Hikes")
                        .frame(width: 190, height: 45)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1)
                        }
                        .foregroundColor(.white)
                }
            }
            Spacer()
            VStack {
                Button {
                    //Do something
                } label: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .padding(10)
                    .background(.white, in: Circle())
                }
                Spacer()
            }
            .padding([.top,.trailing])
        }
        .padding()
    }

    //Hike planning section
    var hikeScrollView: some View{
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing: -5){
                ForEach(0 ..< 5) { item in
                    NavigationLink(destination: {
                        HikeDetailView()
                    }, label: {
                        HikingCard()
                            .accentColor(.black)
                    })
                }
                .padding(.leading)
            }
        }
    }
    
    var guidedHikeScrollView: some View{
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing: -5){
                ForEach(0 ..< 5) { item in
                    GuidedHikingToursCard()
                }
                .padding(.leading)
            }
        }
    }
}

//MARK: - View Builders
extension HikingHomeView{
    @ViewBuilder
    func SectionHeaders(titleForSection: String)-> some View{
        HStack{
            Text(titleForSection)
                .font(.title2)
                .bold()
            Spacer()
            Text("See All")
                .foregroundColor(.pink)
        }
        .padding()
    }
    
    //scrollViews
//    @ViewBuilder
//    func SectionScrollViews(viewToRepeat: any View) -> some View{
//        ScrollView(.horizontal){
//            HStack(spacing: -5){
//                ForEach(0 ..< 5) { item in
//
//                }
//                .padding(.leading)
//            }
//        }
//    }
}

struct HikingHomeView_Previews: PreviewProvider {
    static var previews: some View {
        HikingHomeView()
    }
}
