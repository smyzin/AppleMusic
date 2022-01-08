//
//  Icons.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 07.01.2022.
//

import Foundation
import SwiftUI

enum Paddings {
    case eSmall, small, xxs, xs, s, m, l
    
    var size: CGFloat {
        switch self {
        case .eSmall: return 5
        case .small: return 6
        case .xxs: return 7
        case .xs: return 8
        case .s: return 10
        case .m: return 15
        case .l: return 25
        }
    }
}

enum Icons {
    case play, forward, circle_checked, circle, search
    
    var icon: String {
        switch self {
        case .play: return "play.fill"
        case .forward: return "forward.fill"
        case .circle_checked: return "checkmark.circle.fill"
        case .circle: return "circle"
        case .search: return "magnifyingglass"
        }
    }
}

enum Fonts {
    case xxs, xs, s, m, l, xl, xxl
    
    var size: CGFloat {
        switch self {
        case .xxs: return 10
        case .xs: return 13
        case .s: return 16
        case .m: return 18
        case .l: return 19
        case .xl: return 20
        case .xxl: return 23
        }
    }
}
