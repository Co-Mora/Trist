/*
    Tunai Registration for users
 */
import SwiftUI

struct RegisterView: View {
    
    @ObservedObject var registerVM: RegisterViewModel
    @State var code: String = ""
    
    init() {
        self.registerVM = RegisterViewModel()
    }
    
    var body: some View {
        VStack {
        
            Group {
                TextField("Enter Your Mobile Number", text: $code)
                    .textContentType(.oneTimeCode)
                    .keyboardType(.numberPad)
                    .padding()
                    .frame(width:350)
                    .font(.custom("Arial", size: 19))
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(20)

                Button(
                    action: {
                        
                    },
                    label: {
                        Text("SEND")
                            .font(.custom("Arial", size: 24))
                            .foregroundColor(.white)
                        .bold()
                        
                    }
                ).frame(width: 350, height: 50)
                    .background(Color.yellow)
                .cornerRadius(20)

            }.offset(y: -100)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
