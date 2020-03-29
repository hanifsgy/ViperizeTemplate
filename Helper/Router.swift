import UIKit

class Router {
  func launch(scene: Scene) {
    let window = UIApplication.shared.keyWindow
    let viewController = scene.viewController
    window?.rootViewController = viewController
    window?.makeKeyAndVisible()
  }
  /// Present
  func present(scene: Scene, scenePresenter: ScenePresenter) {
    let viewController = scene.viewController
    scenePresenter.present(viewController: viewController)
  }
  /// Pop functions
  func dismiss(scenePresenter: ScenePresenter) {
    scenePresenter.pop()
  }
  /// Modal functions
  func modal(scene: Scene, scenePresenter: ScenePresenter) {
    let viewController = scene.modal
    scenePresenter.modal(viewController: viewController)
  }
  /// You can use both present and push
  func push(scene: Scene, scenePresenter: ScenePresenter) {
    let viewController = scene.viewController
    scenePresenter.push(viewController: viewController)
  }
}
