//
//  SmsVerification.swift
//  Tunai
//
//  Created by admin on 27/10/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import SwiftUI

struct SmsVerification: View {
    
    @State var code: String = "JBN-"
    var body: some View {
        VStack {
        
            Group {
            
                TextField("", text: $code)
                    .textContentType(.oneTimeCode)
                    .keyboardType(.numberPad)
                    .padding()
                    .frame(width:350)
                    .font(.custom("Arial", size: 19))
                    .background(Color(red: 0.44, green: 0.44, blue: 0.46))
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .multilineTextAlignment(.center)
                

                Text("We have sent you an text message with 6-digit passcode. To complete this verification please enter he passcode.")
                    .font(.system(size: 19.0, weight: .bold, design: .rounded))
                    .lineLimit(4)
                    .padding(20)
                .foregroundColor(Color.orange)
            }.offset(y: -100)
        }
    }
}

struct SmsVerification_Previews: PreviewProvider {
    static var previews: some View {
        SmsVerification()
    }
}
