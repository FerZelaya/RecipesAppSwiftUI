//
//  TabBarView.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/18/20.
//

import SwiftUI

struct TabBarView: View {
    @State var current = "Home"
    
    var body: some View {
        
        ZStack(alignment:Alignment(horizontal: .center, vertical: .bottom)){
            
            TabView(selection: $current){
                
                HomeView()
                    .tag("Home")
                
                Text("Categories")
                    .tag("Categories")
                
                Text("Saved")
                    .tag("Saved")
                
            }
            
            HStack(spacing:0){
                
                TabBarButton(title: "Home", image: "home", selected: $current)
                
                Spacer(minLength: 0)
                
                TabBarButton(title: "Categories", image: "categories", selected: $current)
                
                Spacer(minLength: 0)
                
                TabBarButton(title: "Saved", image: "saved", selected: $current)
                
                
                
            }
            .padding(.vertical,12)
            .padding(.horizontal)
            .background(Color("TabBarColor"))
            .clipShape(Capsule())
            .padding(.horizontal,25)
            
        }
        
    }
}



