//
//  AssetModel.swift
//  SwiftTalk3-final
//
//  Created by anditto-heristyo on 2021/03/27.
//

import Foundation

struct Asset: Decodable, Identifiable {
    let id: Int
    let title: String
    let text1: String
}
