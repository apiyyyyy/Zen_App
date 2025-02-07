//
//  TextFieldNih.swift
//  Zen
//
//  Created by MOHAMMADB on 07/02/25.
//

import SwiftUI

struct TextFieldNih: View {
    let title: String
    @Binding var text: String
    @FocusState var isTyping: Bool
    
    
    var body: some View {
        ZStack(alignment: .leading){

            TextField("", text: $text)
                .padding(.leading)
                .frame(height: 55)
                .focused($isTyping)
                .background(isTyping ? .mutedLavender : .lightBlue, in: RoundedRectangle(cornerRadius: 14).stroke(lineWidth: 2))
                
            Text(title)
                .padding(.horizontal, 5)
                .background(.offWhite.opacity(isTyping || !text.isEmpty ? 1 : 0))
                .foregroundStyle(isTyping ? .mutedLavender : .lightBlue)
                .padding(.leading)
                .offset(y: isTyping || !text.isEmpty ? -27 : 0)
                .onTapGesture {
                    isTyping.toggle()
                }
        }//zstack
    }
}

//#Preview {
//    TextFieldNih()
//}
