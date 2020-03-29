//
//  ScenePresenter.swift
//  Symbolic
//
//  Created by Hanif Sugiyanto on 09/09/19.
//  Copyright © 2019 Symbolic. All rights reserved.
//

import UIKit
import PanModal

protocol ScenePresenter: class {
  func present(viewController: UIViewController)
  func pop()
  func modal(viewController: UIViewController & PanModalPresentable)
  /// Make push optionals `we can use present either`
  func push(viewController: UIViewController)
}
extension ScenePresenter {
  func push(viewController: UIViewController) { }
}
