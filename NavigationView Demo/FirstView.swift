//
//  ContentView.swift
//  NavigationView Demo
//
//  Created by Ankit Solanki on 15/05/21.
//

import SwiftUI

struct FirstView: View {
    @State var isSecond: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var rootIsActive : Bool
    
    var body: some View {
        VStack{
                    
            NavigationLink(destination: SecondView(shouldPopToRootView: $rootIsActive), isActive: $isSecond){
                Button(action: {
                    isSecond.toggle()
                }){
                    Text("Go to Second View")
                }
                .padding()
            }
            .isDetailLink(false)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }){
                Text("Manual Back")
            }
            .padding()
            
        }
        
        .navigationTitle("First View")
        
    }
    
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(rootIsActive: .constant(false))
    }
}
