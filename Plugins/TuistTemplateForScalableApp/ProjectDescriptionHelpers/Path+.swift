//
//  Path+.swift
//  MyPlugin
//
//  Created by 김호세 on 2023/04/01.
//

import Foundation
import ProjectDescription

public extension ProjectDescription.Path {
  static func relativeToModule(_ pathString: String) -> Self {
    return .relativeToRoot("Projects/Modules/\(pathString)")
  }
  static func relativeToFeature(_ pathString: String) -> Self {
    return .relativeToRoot("Projects/Features/\(pathString)")
  }
  static func relativeToApplication(_ pathString: String) -> Self {
    return .relativeToRoot("Projects/Application/\(pathString)")
  }
  static var app: Self {
    return .relativeToRoot("Projects/Application")
  }
}
