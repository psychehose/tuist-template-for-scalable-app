//
//  dummy.swift
//  ProjectDescriptionHelpers
//
//  Created by 김호세 on 2023/04/02.
//

import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let template = Template(
  description: "Custom template",
  attributes: [
    nameAttribute
  ],
  items: [
    .file(
      path: "Projects/Features/\(nameAttribute)/Sources/dummy.swift",
      templatePath: "dummy.stencil"
    ),
    
    .file(
      path: "Projects/Features/\(nameAttribute)/Resources/dummy.swift",
      templatePath: "dummy.stencil"
    ),
    .file(
      path: "Projects/Features/\(nameAttribute)/\(nameAttribute)Tests/\(nameAttribute)Tests.swift",
      templatePath: "Tests.stencil"
    ),

  ]
)
