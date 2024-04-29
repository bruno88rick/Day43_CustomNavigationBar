//
//  ToolbarCustomization.swift
//  Day43_CustomNavigationBar
//
//  Created by Bruno Oliveira on 29/04/24.
//

import SwiftUI

struct ToolbarCustomization: View {
    var body: some View {
        NavigationStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Tap me"){
                            //button action here
                        }
                    }
                    //If you want multiple buttons using the same placement, you can either repeat ToolbarItem like this
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Tap me 2"){
                            //button action here
                        }
                    }
                    
                    //Or you can use ToolbarItemGroup, like this
                    
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button("Tap Me 3") {
                            //more code
                        }
                        
                        Button("Tap Me 4") {
                            // more code
                        }
                    }
                    
                }
                .navigationBarBackButtonHidden()
            //If you need the user to decide between saving a change or discarding it, you might want to add the navigationBarBackButtonHidden() modifier so that they can't tap Back to exit without making a choice
        }
    }
}

#Preview {
    ToolbarCustomization()
}
