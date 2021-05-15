//
//  SecondView.swift
//  NavigationView Demo
//
//  Created by Ankit Solanki on 15/05/21.
//

import SwiftUI

struct SecondView: View {
    @State var isRoot: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var shouldPopToRootView : Bool
    
    var body: some View {
        VStack{
            
            Button(action: {
                shouldPopToRootView = false
            }){
                Text("Go to Root View")
            }
            .padding()
            
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }){
                Text("Manual Back")
            }
            .padding()
            
        }
        
        .navigationTitle("Second View")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(shouldPopToRootView: .constant(false))
    }
}
