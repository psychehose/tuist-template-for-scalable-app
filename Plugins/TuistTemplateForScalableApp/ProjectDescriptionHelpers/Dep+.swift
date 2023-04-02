//
//  Dep +.swift
//  MyPlugin
//
//  Created by 김호세 on 2023/04/01.
//

import Foundation

extension Dep {
  static func module(name: String) -> Self {
    return .project(target: name, path: .relativeToModule(name))
  }
  static func feature(name: String) -> Self {
    return .project(target: name, path: .relativeToFeature(name))
  }
}
