//
//  ContentView.swift
//  ios
//
//  Created by Digvijay Upadhyay on 30/12/2021.
//

import SwiftUI

struct ContentView: View {
    var text: String = "Hii"
    init() {
        let result = rust_hello("worldie Jaldi")
        let swift_result = String(cString: result!)
        self.text = swift_result
        rust_hello_free(UnsafeMutablePointer(mutating: result))
        print(swift_result)
    }
    
    
    var body: some View {
        Text("yoy")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
