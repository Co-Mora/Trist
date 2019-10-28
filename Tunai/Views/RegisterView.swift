/*
    Tunai Registration for users
 */
import SwiftUI

struct RegisterView: View {
   
    @ObservedObject var registerVM: RegisterViewModel
    @State var code: String = "(601"
    @State var show_modal: Bool = false
    init() {
        self.registerVM = RegisterViewModel()
    }
    
    var body: some View {
        NavigationView {
           VStack {
               
               Group {
                    
                   ZStack(alignment: .leading) {
                       Image("flag")
                           .resizable()
                           .frame(width: 50, height: 53)
                           .scaledToFit()
                           .zIndex(10.0)
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
                   }
                   

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
                       .background(Color.orange)
                   .cornerRadius(5)
                   .padding()

                   Text("To get started, we need you to enter your mobile number for verification. You'll receive a text message from us that includes a 6-digits passcode.")
                       .font(.system(size: 19.0, weight: .bold, design: .rounded))
                       .lineLimit(4)
                       .padding(40)
                   .foregroundColor(Color.orange)
               }.offset(y: -100)
           }.navigationBarTitle(Text("Tunai"), displayMode: .inline)
            .navigationBarItems(
                trailing: NavigationCountryButton(show_modal: self.$show_modal)
            )
        }
        
    }
}

#if DEBUG
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

#endif

struct NavigationCountryButton: View {
    @State var selection: String = ""
    @Binding var show_modal: Bool
    
    var body : some View {
        Button(action: {
            //Action for country
            self.show_modal = true
            

        }, label: { Image("tunai").resizable().frame(width: 20, height: 20) }).sheet(isPresented: self.$show_modal) {
            CountryView(selection: self.$selection)
        }
    }
}


struct CountryView: View {
    
    @Binding var selection: String
    var body: some View {
              Picker(selection: $selection, label:
                   Text("Picker Name")
                   , content: {
                       Text("Value 1").tag(0)
                       Text("Value 2").tag(1)
                       Text("Value 3").tag(2)
                       Text("Value 4").tag(3)
               })
    }
}
