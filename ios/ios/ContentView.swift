//
//  ContentView.swift
//  ios
//
//  Created by Digvijay Upadhyay on 30/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var text = "Tab me to view rust message"
    
    var body: some View {
        Text(text).padding().onTapGesture {
            some()
        }
    }
    
    func some() {
        let result = rust_hello("worldie Jaldi")
        let swift_result = String(cString: result!)
        text = swift_result
        rust_hello_free(UnsafeMutablePointer(mutating: result))
        print(swift_result)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
