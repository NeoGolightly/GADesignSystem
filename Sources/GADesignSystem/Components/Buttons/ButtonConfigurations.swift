//
//  File.swift
//  
//
//  Created by Neo Golightly on 14.02.24.
//

import Foundation

public enum GAButtonSize: CaseIterable, Identifiable {
  case small, regular, large
  public var id: Self { self }
}

public enum GAButtonType: CaseIterable, Identifiable {
  case primary, secondary, tertiary
  public var id: Self { self }
}

public enum GAButtonStyle: CaseIterable, Identifiable {
  case pill, roundedCorners, square
  public var id: Self { self }
}
