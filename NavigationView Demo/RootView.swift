//
//  RootView.swift
//  NavigationView Demo
//
//  Created by Ankit Solanki on 15/05/21.
//

import SwiftUI

struct RootView: View {
    @State var isFirst: Bool = false
    
    var body: some View {
        NavigationView{
            NavigationLink(destination: FirstView(rootIsActive: $isFirst), isActive: $isFirst){
                Button(action: {
                    isFirst.toggle()
                }){
                    Text("Go to First View")
                }
            }
            .isDetailLink(false)
            
            .navigationTitle("Root View")
            
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
