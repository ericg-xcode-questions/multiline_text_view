//
//  ContentView.swift
//  multiline_text_view
//
//  Created by ericg on 12/1/19.
//  Copyright © 2019 ericg. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    @State var someText = "some text"
    
    var body: some View
    {
        MultilineTextView( text: self.$someText )
            .background( Color.white )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
