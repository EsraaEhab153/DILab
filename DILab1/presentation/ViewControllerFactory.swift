//
//  ViewControllerFactory.swift
//  DILab1
//
//  Created by Esraa Ehab on 15/06/2026.
//

import Foundation
import UIKit

protocol ViewControllerFactory {
    func makeMovieDetailsViewController(movieName: String) -> UIViewController
}
