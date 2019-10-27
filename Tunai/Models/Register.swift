
import Foundation


struct RegisterResponse {
    let data: Register
}


struct Register {
    
    let id = UUID()
    let mobileNum: String
    let smsVerification: String
}
