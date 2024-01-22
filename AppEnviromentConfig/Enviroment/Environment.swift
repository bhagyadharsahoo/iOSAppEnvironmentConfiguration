//
//  Environment.swift
//  AppEnviromentConfig
//
//  Created by Bhagyadhar Sahoo on 22/01/24.
//

import Foundation
public struct Environment {
    private var infoDict: [String: Any] {
        if let dict = Bundle.main.object(forInfoDictionaryKey: "CustomConfigurations") as? [String: String] {
            return dict
            
        } else {
            fatalError("plist not found")
        }
    }
    public func configuration(_ key: PlistKeys) -> String {
        switch key {
        case .baseUrl:
            return infoDict[PlistKeys.baseUrl.value()] as! String
        case .appName:
            return infoDict[PlistKeys.appName.value()] as! String
        case .appToken:
            return infoDict[PlistKeys.appToken.value()] as! String
            
        }
    }
    
    
    public enum PlistKeys {
        case baseUrl
        case appName
        case appToken
        func value() -> String {
            switch self {
            case .baseUrl:
                return "BASE_URL"
            case .appName:
                return "APP_NAME"
            case .appToken:
                return "APP_TOKEN"
            }
        }
    }
}
