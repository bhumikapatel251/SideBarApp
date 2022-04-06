//
//  SideMenuOptionView.swift
//  SideBarApp
//
//  Created by Bhumika Patel on 05/04/22.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel: SideMenuModel
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .frame(width: 20, height: 20)
            
                  Text(viewModel.title)
                .font(.system(size: 12, weight: .semibold))
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
        
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .profile)
    }
}
