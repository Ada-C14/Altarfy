//
//  Model.swift
//  ModelApp
//
//  Created by Sophie Messing on 1/26/21.
//

import Foundation
import UIKit
import SwiftUI
import RealityKit
import Combine
import QuickLookThumbnailing


struct Model: Equatable {
	
	var modelName: String
	var image: UIImage
	var modelEntity: ModelEntity?
//	var anchorEntity: AnchorEntity?
	var scaleCompensation: Float
	private var cancellable: AnyCancellable? = nil
	
	init(modelName: String, scaleCompensation: Float = 1.0) {
		
		self.modelName = modelName
		self.scaleCompensation = scaleCompensation	
		self.image = UIImage(named: modelName) ?? UIImage(systemName: "photo")!
	}
}
