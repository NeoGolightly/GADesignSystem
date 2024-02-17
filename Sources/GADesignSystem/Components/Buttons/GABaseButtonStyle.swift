//
//  SwiftUIView.swift
//  
//
//  Created by Neo Golightly on 14.02.24.
//

import SwiftUI

// MARK: - Primary Button Styles
public extension ButtonStyle where Self == GABaseButtonStyle {
  
  static var primary: GABaseButtonStyle {
    GABaseButtonStyle(type: .primary, style: .pill, size: .regular) }  
 
  static func primary(style: GAButtonStyle = .pill, size: GAButtonSize = .regular) -> GABaseButtonStyle {
    GABaseButtonStyle(type: .primary, style: style, size: size)
  }
}

// MARK: - Secondary Button Styles
public extension ButtonStyle where Self == GABaseButtonStyle {
  
  static var secondary: GABaseButtonStyle {
    GABaseButtonStyle(type: .secondary, style: .pill, size: .regular) }
  
  static func secondary(style: GAButtonStyle = .pill, size: GAButtonSize = .regular) -> GABaseButtonStyle {
    GABaseButtonStyle(type: .secondary, style: style, size: size)
  }
}

// MARK: - Tertiary Button Styles
public extension ButtonStyle where Self == GABaseButtonStyle {
  
  static var tertiary: GABaseButtonStyle {
    GABaseButtonStyle(type: .tertiary, style: .pill, size: .regular) }
  
  static func tertiary(style: GAButtonStyle = .pill, size: GAButtonSize = .regular) -> GABaseButtonStyle {
    GABaseButtonStyle(type: .tertiary, style: style, size: size)
  }
}

// MARK: - Base Button Styles
public struct GABaseButtonStyle: ButtonStyle {
  @Environment(\.isEnabled) private var isEnabled: Bool
  let type: GAButtonType
  let style: GAButtonStyle
  let size: GAButtonSize
  public func makeBody(configuration: Configuration) -> some View {
    configuration
      .label
      .font(.subheadline.bold())
      .padding(.horizontal, horizontalPadding)
      .padding(.vertical, verticalPadding)
      .foregroundStyle(forgroundColor(configuration: configuration))
      .background(backgroundColor(configuration: configuration))
      .overlay(RoundedRectangle(cornerRadius: cornerRadius).inset(by: 0.5).stroke(borderColor(configuration: configuration)))
      .clipShape(.rect(cornerRadius: cornerRadius))
      
  }
  
  private func borderColor(configuration: Configuration) -> Color {
    switch type {
    case .primary:
      GSDS.Components.Button.Primary.Colors.Border.noBorder
    case .secondary:
      !isEnabled ? GSDS.Components.Button.Secondary.Colors.Border.disabled
      : (configuration.isPressed ? GSDS.Components.Button.Secondary.Colors.Border.pressed
         : GSDS.Components.Button.Secondary.Colors.Border.enabled)
    case .tertiary:
      GSDS.Components.Button.Tertiary.Colors.Border.noBorder
    }
  }
  
  private func forgroundColor(configuration: Configuration) -> Color {
    switch type {
    case .primary:
      !isEnabled ? GSDS.Components.Button.Primary.Colors.Foreground.disabled
      : (configuration.isPressed ? GSDS.Components.Button.Primary.Colors.Foreground.pressed
         : GSDS.Components.Button.Primary.Colors.Foreground.enabled)
    case .secondary:
      !isEnabled ? GSDS.Components.Button.Secondary.Colors.Foreground.disabled
      : (configuration.isPressed ? GSDS.Components.Button.Secondary.Colors.Foreground.pressed
         : GSDS.Components.Button.Secondary.Colors.Foreground.enabled)
    case .tertiary:
      !isEnabled ? GSDS.Components.Button.Tertiary.Colors.Foreground.disabled
      : (configuration.isPressed ? GSDS.Components.Button.Tertiary.Colors.Foreground.pressed
         : GSDS.Components.Button.Tertiary.Colors.Foreground.enabled)
   
    }
  }
  
  private func backgroundColor(configuration: Configuration) -> Color {
    switch type {
    case .primary:
      !isEnabled ? GSDS.Components.Button.Primary.Colors.Background.disabled
      : (configuration.isPressed ? GSDS.Components.Button.Primary.Colors.Background.pressed
         : GSDS.Components.Button.Primary.Colors.Background.enabled)
    case .secondary:
      !isEnabled ? GSDS.Components.Button.Secondary.Colors.Background.disabled
      : (configuration.isPressed ? GSDS.Components.Button.Secondary.Colors.Background.pressed
         : GSDS.Components.Button.Secondary.Colors.Background.enabled)
    case .tertiary:
      GSDS.Components.Button.Tertiary.Colors.Background.noBackground
    }
  }

  
  private var horizontalPadding: CGFloat {
    switch size {
    case .small:
      GSDS.Components.Button.Sizes.Small.horizontalPadding
    case .regular:
      GSDS.Components.Button.Sizes.Regular.horizontalPadding
    case .large:
      GSDS.Components.Button.Sizes.Large.horizontalPadding
    }
  }
  
  private var verticalPadding: CGFloat {
    switch size {
    case .small:
      GSDS.Components.Button.Sizes.Small.verticlaPadding
    case .regular:
      GSDS.Components.Button.Sizes.Regular.verticlaPadding
    case .large:
      GSDS.Components.Button.Sizes.Large.verticlaPadding
    }
  }
  
  private var cornerRadius: CGFloat {
    switch style {
    case .pill:
      GSDS.Components.Button.BordersRadius.pill
    case .roundedCorners:
      GSDS.Components.Button.BordersRadius.roundedCorners
    case .square:
      GSDS.Components.Button.BordersRadius.square
    }
  }
}

// MARK: - Previews
#Preview {
  VStack(spacing: 16) {
    HStack(alignment: .bottom) {
      ForEach(GAButtonSize.allCases) { size in
        VStack {
          ForEach(GAButtonStyle.allCases) { style in
            Button {} label: {Text("Button")}
              .buttonStyle(.primary(style: style, size: size))
          }
        }
      }
    }
    HStack(alignment: .bottom) {
      ForEach(GAButtonSize.allCases) { size in
        VStack {
          ForEach(GAButtonStyle.allCases) { style in
            Button {} label: {Text("Button")}
              .buttonStyle(.secondary(style: style, size: size))
          }
        }
      }
    }
    HStack(alignment: .bottom) {
      ForEach(GAButtonSize.allCases) { size in
        VStack {
          ForEach(GAButtonStyle.allCases) { style in
            Button {} label: {Text("Button")}
              .buttonStyle(.tertiary(style: style, size: size))
          }
        }
      }
    }
  }
  .disabled(false)
}
