//
//  app.swift
//  ProjectDescriptionHelpers
//
//  Created by 김호세 on 2023/04/02.
//

import ProjectDescription


let template = Template(
  description: "Custom template",
  attributes: [
  ],
  items: [
    .file(
      path: "Projects/Application/Sources/AppDelegate.swift",
      templatePath: "AppDelegate.stencil"
    ),
    .file(
      path: "Projects/Application/Resources/dummy.swift",
      templatePath: "../dummy/dummy.stencil"
    ),
    .file(
      path: "Projects/Application/ApplicationTests/ApplicationTests.swift",
      templatePath: "AppDelegateTest.stencil"
    ),

  ]
)
