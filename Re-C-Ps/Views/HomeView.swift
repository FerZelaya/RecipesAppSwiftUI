//
//  ContentView.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/13/20.
//

import SwiftUI


struct HomeView: View {
    @State private var showSecondVS = false
    
    
    var body: some View {
        NavigationView{
            Text("YMCMB")
        }
        
        
        
    }
    
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .previewDevice("iPhone 12 Pro")
        }
    }
}
