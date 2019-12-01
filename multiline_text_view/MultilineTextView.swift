//
//  MultilineTextView.swift
//  multiline_text_view
//
//  Created by ericg on 12/1/19.
//  Copyright © 2019 ericg. All rights reserved.
//

import SwiftUI


struct MultilineTextView: NSViewRepresentable
{
    @Binding var text: String

    func makeNSView( context: Context ) -> NSTextView
    {
        let view = NSTextView()
        
        view.isEditable     = true
        view.isRulerVisible = true
        
        return view
    }

    func updateNSView( _ nsView: NSTextView, context: Context )
    {
        nsView.string = text
    }
}


#if DEBUG
struct MultilineTextContentView_Previews : PreviewProvider
{
    @State static var theText = "some text"
    
    static var previews: some View
    {
        return MultilineTextView( text: $theText )
            .background( Color.red )
    }
}
#endif

