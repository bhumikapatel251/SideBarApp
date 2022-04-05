//
//  ContentView.swift
//  SideBarApp
//
//  Created by Bhumika Patel on 05/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView()
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                //sidemenuview display
                    .offset(x: isShowing ? 300 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading:
                                            Button(action: {
                        //animation effect
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    },
                                                   label:{
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    } ))
                    .navigationTitle("Home")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.white)
            
            Text("Hello")
                .padding()
        }
       
    }
}
