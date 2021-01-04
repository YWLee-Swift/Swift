//
//  ContentView.swift
//  TravelSwiftUI
//
//  Created by 이영운 on 2021/01/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                //Show Code Actions -> Extract SubView
                DiscoverCategoriesView()
            
            }.navigationTitle("Discover")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiscoverCategoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(0..<10, id: \.self) { num in
                    
                    VStack(spacing: 4) {
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
                        
                        Text("Art")
                            .font(.system(size: 12, weight: .semibold))
                    }
                }
                
            }.padding(.horizontal)
        }
    }
}
