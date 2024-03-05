//
//  File.swift
//  
//
//  Created by Neo Golightly on 14.02.24.
//
import Foundation

public enum GAButtonSize: CaseIterable, Identifiable {
  /// A button with a small size
  case small
  /// A button with a regular size
  case regular
  /// A button with a large size
  case large
  /// Sets self as id
  public var id: Self { self }
}

public enum GAButtonType: CaseIterable, Identifiable {
  /// A primary button style. Use for primary actions like "send this email".
  ///
  /// The button is presented as a filled button for primary actions
  case primary
  /// A secondary button style. Use for secondary actions like "cancel".
  ///
  /// The button is presented as an outlined button
  case secondary
  /// A tertiary button style. Use this style for text based buttons like in navigations.
  ///
  /// The button is presented as text only
  case tertiary
  /// Sets self as id
  public var id: Self { self }
}

public enum GAButtonStyle: CaseIterable, Identifiable {
  /// A pill shaped button
  case pill
  /// A button with rounded corners
  case roundedCorners
  /// A square button
  case square
  /// Sets self as id
  public var id: Self { self }
}
