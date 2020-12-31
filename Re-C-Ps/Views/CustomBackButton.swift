//
//  CustomBackButton.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/31/20.
//

import SwiftUI

struct CustomBackButton: View {
    
   var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(.white))
                    .padding(10)
                    .background(Color(.black).opacity(0.8))
                    .cornerRadius(10)
            }
            .padding(.top,10)
        }
    }
}

