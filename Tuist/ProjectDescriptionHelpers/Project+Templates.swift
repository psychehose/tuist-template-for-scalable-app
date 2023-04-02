
import ProjectDescription
import MyPlugin

public extension Project {
  static func project(name: String,
                      organizationName: String = "YourOrganizationName",
                      options: Options = .options(),
                      packages: [Package] = [],
                      product: Product,
                      platform: Platform = .iOS,
                      deploymentTarget: DeploymentTarget? = .iOS(targetVersion: "15.0", devices: .iphone),
                      dependencies: [Dep] = [],
                      infoPlist: [String: InfoPlist.Value] = [:],
                      sources: SourceFilesList = ["Sources/**"],
                      resources: ResourceFileElements = ["Resources/**"],
                      scriptAction: [TargetScript] = [],
                      resourceSynthesizers: [ResourceSynthesizer] = []) -> Project {

    let settings: Settings = Settings.settings()


    let bundleID = product == .app
    ? "com.YourAppName"
    : "com.\(organizationName).\(name)"



    let isEnableResource = (product == .app || product == .framework)

    let target = Target(name: name,
                        platform: platform,
                        product: product,
                        bundleId: bundleID,
                        deploymentTarget: deploymentTarget,
                        infoPlist: .extendingDefault(with: infoPlist),
                        sources: sources,
                        resources: isEnableResource ? resources : [],
                        scripts: scriptAction,
                        dependencies: dependencies)


    let testTargetDependencies: [Dep] = [.target(name: "\(name)")]

    let testTarget = Target(name: "\(name)Tests",
                            platform: platform,
                            product: .unitTests,
                            bundleId: "\(bundleID)Tests",
                            deploymentTarget: deploymentTarget,
                            infoPlist: .default,
                            sources: "\(name)Tests/**",
                            dependencies: testTargetDependencies)


    let targets: [Target] = [target, testTarget]


    return Project(name: name,
                   organizationName: organizationName,
                   options: options,
                   packages: packages,
                   settings: settings,
                   targets: targets,
                   resourceSynthesizers: resourceSynthesizers)
  }
}
