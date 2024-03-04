//
//  ButtonStyle+Extensions.swift
//
//
//  Created by Neo Golightly on 04.03.24.
//

import SwiftUI

// MARK: - Primary Button Styles
extension ButtonStyle where Self == GABaseButtonStyle {
  
  /// Creates a primary button style with a pill style and regular size
  public static var primary: GABaseButtonStyle {
    GABaseButtonStyle(type: .primary, style: .pill, size: .regular) }
  
  /// Creates a primary button style
  /// - Parameters:
  ///   - style: The button style (pill, roundedCorners, square) See also ``GAButtonStyle``
  ///   - size: The button size (small, regular, large) See also ``GAButtonSize``
  /// - Returns: A button style
  public static func primary(style: GAButtonStyle = .pill, size: GAButtonSize = .regular) -> GABaseButtonStyle {
    GABaseButtonStyle(type: .primary, style: style, size: size)
  }
}

// MARK: - Secondary Button Styles
public extension ButtonStyle where Self == GABaseButtonStyle {
  /// Creates a secondary button style with a pill style and regular size
  static var secondary: GABaseButtonStyle {
    GABaseButtonStyle(type: .secondary, style: .pill, size: .regular) }
  /// Creates a secondary button style
  /// - Parameters:
  ///   - style: The button style (pill, roundedCorners, square) See also ``GAButtonStyle``
  ///   - size: The button size (small, regular, large) See also ``GAButtonSize``
  /// - Returns: A button style
  static func secondary(style: GAButtonStyle = .pill, size: GAButtonSize = .regular) -> GABaseButtonStyle {
    GABaseButtonStyle(type: .secondary, style: style, size: size)
  }
}

// MARK: - Tertiary Button Styles
public extension ButtonStyle where Self == GABaseButtonStyle {
  /// Creates a tertiary button style with a pill style and regular size
  static var tertiary: GABaseButtonStyle {
    GABaseButtonStyle(type: .tertiary, style: .pill, size: .regular) }
  /// Creates a tertiary button style
  /// - Parameters:
  ///   - style: The button style (pill, roundedCorners, square) See also ``GAButtonStyle``
  ///   - size: The button size (small, regular, large) See also ``GAButtonSize``
  /// - Returns: A button style
  static func tertiary(style: GAButtonStyle = .pill, size: GAButtonSize = .regular) -> GABaseButtonStyle {
    GABaseButtonStyle(type: .tertiary, style: style, size: size)
  }
}
