//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see https://www.gnu.org/licenses.
//

import Foundation

public enum ProductFamily: String, Identifiable, CaseIterable {

    // MARK: - Properties

    public var id: String {
        self.rawValue
    }

    // Audio
    case airPods = "airpods"
    case airPodsPro = "airpodspro"
    case airPodsMax = "airpodsmax"

    // Handeld devices
    case iPhone = "iphone"
    case iPhonePro = "iphonepro"
    case iPad = "ipad"

    // TV & home
    case appleTV = "appletv"
    case homePod = "homepod"
    case homePodMini = "homepodmini"

    // Portable computers
    case macBook = "macbook"
    case macBookAir = "macbookair"
    case macBookPro = "macbookpro"

    // Desktop computers
    case iMac = "imac"
    case iMacPro = "imacpro"
    case macMini = "macmini"

    // Vision
    case visionPro = "visionpro"

    // Watches
    case appleWatch = "watch"
    case appleWatchUltra = "watchultra"
    case appleWatchSE = "watchse"
}
