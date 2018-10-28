//
//  Enums.swift
//  on-off light
//
//  Created by Mohammed Mohsin Sayed on 10/28/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

enum SwitchStatus: Toggleable {
    
    case on 
    case off

     mutating func toggle() {
        
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
  
}
