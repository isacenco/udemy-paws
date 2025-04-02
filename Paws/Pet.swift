//
//  Pet.swift
//  Paws
//
//  Created by Ghenadie Isacenco on 2/4/25.
//

import Foundation
import SwiftData

@Model
final class Pet {
  var name: String
  @Attribute(.externalStorage) var photo: Data?
  
  init(name: String, photo: Data? = nil) {
    self.name = name
    self.photo = photo
  }
}
