//
//  Dep + Project.swift
//  MyPlugin
//
//  Created by 김호세 on 2023/04/01.
//

import Foundation
import ProjectDescription

extension Dep {
  public struct Project {
    public struct Feature { }
    public struct Module { }
  }
}


public extension Dep.Project.Feature {
  static let Main                                  = Dep.feature(name: "Main")

}

public extension Dep.Project.Module {
  static let Util                                  = Dep.module(name: "Util")
  static let ThirdPartyWrapper                     = Dep.module(name: "ThirdPartyWrapper")
  static let Networkit                             = Dep.module(name: "NetworkKit")
  static let Design                                = Dep.module(name: "Design")
}

