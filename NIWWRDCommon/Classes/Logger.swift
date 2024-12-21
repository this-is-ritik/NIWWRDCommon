//
//  Logger.swift
//  NIWWRDCommon
//
//  Created by Ritik Sharma on 21/12/24.
//

import Foundation

final class Logger {
    static func log(_ message: String) {
        #if DEBUG
        print(message)
        #endif
    }
}
