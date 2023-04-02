//
//  Dep+SPM.swift
//  MyPlugin
//
//  Created by 김호세 on 2023/04/01.
//

import Foundation
import ProjectDescription

// MARK: - Group
extension Dep {
  public struct SwiftPM {
  }
}


// MARK: - Swift Package

public extension Dep.SwiftPM {
  static let Alamofire             = Dep.package(product: "Alamofire")
}

public extension Package {
  static let Alamofire             = Package.package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.4")
}
