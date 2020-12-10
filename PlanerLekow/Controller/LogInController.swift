//
//  LogInController.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 10/12/2020.
//

import Foundation
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG


class LogInController: ViewController {

    
    @IBAction func logInBtn(_ sender: Any) {
        
    }
    
    
    func checkData(username: String, password: String) -> Bool{
        if(username=="") {return false}
        if(username.count < 4) {return false}
        if(password=="") {return false}
        if(password.count < 4) {return false}
        return true
    }
    
}

class Encrypt{
    static func encrypt(text: String) -> String?{
        let length = Int(CC_MD5_DIGEST_LENGTH)
        let messageData = text.data(using:.utf8)!
        var digestData = Data(count: length)
        _ = digestData.withUnsafeMutableBytes { digestBytes -> UInt8 in messageData.withUnsafeBytes { messageBytes -> UInt8 in if let messageBytesBaseAddress = messageBytes.baseAddress, let digestBytesBlindMemory = digestBytes.bindMemory(to: UInt8.self).baseAddress { let messageLength = CC_LONG(messageData.count)
                            CC_MD5(messageBytesBaseAddress, messageLength, digestBytesBlindMemory)
                        }
                        return 0
                    }
                }
        return digestData.base64EncodedString()
    }
}
