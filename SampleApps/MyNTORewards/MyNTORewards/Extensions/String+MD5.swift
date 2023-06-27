//
//  String+MD5.swift
//  MyNTORewards
//
//  Created by Leon Qi on 11/30/22.
//

import Foundation
import CryptoKit

extension String {
    var MD5: String {
        let computed = Insecure.MD5.hash(data: self.data(using: .utf8)!)
        return computed.map { String(format: "%02hhx", $0) }.joined()
    }
}
