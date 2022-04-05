//
//  SideMenuHeaderView.swift
//  SideBarApp
//
//  Created by Bhumika Patel on 05/04/22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading) {
                Image("smile")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                
                Text("Bhumika Patel")
                    .font(.system(size: 12, weight: .semibold))
                
                Text("@developer")
                    .font(.system(size: 9))
                    .padding(.bottom, 15    )
                
                
                HStack(spacing: 12) {
                    HStack(spacing: 4) {
                        Text("1,234").bold()
                            .font(.system(size: 10))
                        Text("Following")
                            .font(.system(size: 10))
                    }
                    HStack(spacing: 4) {
                        Text("607").bold()
                            .font(.system(size: 10))
                        Text("Followers")
                            .font(.system(size: 10))
                    }
                    Spacer()
               }
                Spacer()
            }
            .foregroundColor(.white)
        .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView()
    }
}
