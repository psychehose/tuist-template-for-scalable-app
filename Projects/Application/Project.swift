//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김호세 on 2023/04/01.
//

import Foundation
import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project.project(
  name: "Application",
  product: .app,
  dependencies: [
    Dep.Project.Feature.Main
  ]
)
