//
//  SideMenuView.swift
//  SideBarApp
//
//  Created by Bhumika Patel on 05/04/22.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                //Header
                SideMenuHeaderView(isShowing: $isShowing)
                  
                
                //Cell Items
                    .frame(height: 150)
                ForEach(0..<6) { _ in
                    SideMenuOptionView()
                    
                }
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
