//
//  Icons.swift
//  AppleMusic
//
//  Created by Sergey Myzin on 07.01.2022.
//

import Foundation
import SwiftUI

enum Paddings {
    case eSmall, small, xxs, xs, s, m, l, xl
    
    var size: CGFloat {
        switch self {
        case .eSmall: return 5
        case .small: return 6
        case .xxs: return 7
        case .xs: return 8
        case .s: return 10
        case .m: return 15
        case .l: return 25
        case .xl: return 35
        }
    }
}

enum Icons {
    case play, backward, forward, circle_checked, circle, search, ellips, back,
         speakerMute, speakerFull, list, quote, airplay
    
    var icon: String {
        switch self {
        case .play: return "play.fill"
        case .backward: return "backward.fill"
        case .forward: return "forward.fill"
        case .circle_checked: return "checkmark.circle.fill"
        case .circle: return "circle"
        case .search: return "magnifyingglass"
        case .ellips: return "ellipsis.circle.fill"
        case .back: return "chevron.left"
        case .speakerMute: return "speaker.fill"
        case .speakerFull: return "speaker.wave.3.fill"
        case .list: return "list.bullet"
        case .quote: return "quote.bubble"
        case .airplay: return "airplayaudio"
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

enum Radius {
    static let r3: CGFloat = 3.0
    static let r5: CGFloat = 5.0
    static let r7: CGFloat = 7.0
    static let r10: CGFloat = 10.0
    static let r13: CGFloat = 13.0
    static let r16: CGFloat = 16.0
    static let r20: CGFloat = 20.0
}

enum Constants {
    static let radius: CGFloat = Radius.r16
    static let indicatorHeight: CGFloat = 6
    static let indicatorWidth: CGFloat = 60
    static let indicatorPaddingTop: CGFloat = 35
    static let snapRatio: CGFloat = 0.25
    static let minHeightRatio: CGFloat = 0.0
    static let playerOffset: CGFloat = -49.0
    static let layoutOffset: CGFloat = 70.0
}
