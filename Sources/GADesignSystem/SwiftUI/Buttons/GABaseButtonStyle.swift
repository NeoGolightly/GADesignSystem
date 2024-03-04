//
//  SwiftUIView.swift
//  
//
//  Created by Neo Golightly on 14.02.24.
//

import SwiftUI


// MARK: - Base Button Styles
/// A button style for all base buttons like pills, rounded corners or squares. Use this directly or some of the SwiftUIs ButtonStyle extensions like ``SwiftUI/ButtonStyle/primary``,  ``SwiftUI/ButtonStyle/secondary`` or ``SwiftUI/ButtonStyle/tertiary``
public struct GABaseButtonStyle: ButtonStyle {
  @Environment(\.isEnabled) private var isEnabled: Bool
  @State private var isHovering = false
  let type: GAButtonType
  let style: GAButtonStyle
  let size: GAButtonSize
  
  
  /// Creats a new GABaseButtonStyle
  /// - Parameters:
  ///   - type: The use case type for the button (primary, secondary, tertiary) See also ``GAButtonType``
  ///   - style:The button style (pill, roundedCorners, square) See also ``GAButtonStyle``
  ///   - size: The button size (small, regular, large) See also ``GAButtonSize``
  public init(type: GAButtonType, style: GAButtonStyle, size: GAButtonSize) {
    self.type = type
    self.style = style
    self.size = size
  }
  // TODO: add hover styles
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
#if os(iOS) || os(macOS)
      .onHover(perform: { hovering in
        isHovering = hovering
      })
#endif
//      .disabled(isHovering)
      
  }
  
  private func borderColor(configuration: Configuration) -> Color {
    switch type {
    case .primary:
      return GSDS.Components.Buttons.Default.Primary.Colors.Border.noBorder
    case .secondary:
      if isEnabled {
        if configuration.isPressed {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Secondary.Colors.Border.pressed
          } else {
            return GSDS.Components.Buttons.Default.Secondary.Colors.Border.pressed
          }
        } else {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Secondary.Colors.Border.enabled
          } else {
            return GSDS.Components.Buttons.Default.Secondary.Colors.Border.enabled
          }
        }
      } else {
        if configuration.role == .destructive {
          return GSDS.Components.Buttons.Destructive.Secondary.Colors.Border.disabled
        } else {
          return GSDS.Components.Buttons.Default.Secondary.Colors.Border.disabled
        }
      }
    case .tertiary:
      return GSDS.Components.Buttons.Default.Tertiary.Colors.Border.noBorder
    }
  }
  
  private func forgroundColor(configuration: Configuration) -> Color {
    switch type {
    case .primary:
      if isEnabled {
        if configuration.isPressed {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Primary.Colors.Foreground.pressed
          } else {
            return GSDS.Components.Buttons.Default.Primary.Colors.Foreground.pressed
          }
        } else {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Primary.Colors.Foreground.enabled
          } else {
            return GSDS.Components.Buttons.Default.Primary.Colors.Foreground.enabled
          }
        }
      } else {
        if configuration.role == .destructive {
          return GSDS.Components.Buttons.Destructive.Primary.Colors.Foreground.disabled
        } else {
          return GSDS.Components.Buttons.Default.Primary.Colors.Foreground.disabled
        }
      }
    case .secondary:
      if isEnabled {
        if configuration.isPressed {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Secondary.Colors.Foreground.pressed
          } else {
            return GSDS.Components.Buttons.Default.Secondary.Colors.Foreground.pressed
          }
        } else {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Secondary.Colors.Foreground.enabled
          } else {
            return GSDS.Components.Buttons.Default.Secondary.Colors.Foreground.enabled
          }
        }
      } else {
        if configuration.role == .destructive {
          return GSDS.Components.Buttons.Destructive.Secondary.Colors.Foreground.disabled
        } else {
          return GSDS.Components.Buttons.Default.Secondary.Colors.Foreground.disabled
        }
      }
    case .tertiary:
      if isEnabled {
        if configuration.isPressed {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Tertiary.Colors.Foreground.pressed
          } else {
            return GSDS.Components.Buttons.Default.Tertiary.Colors.Foreground.pressed
          }
        } else {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Tertiary.Colors.Foreground.enabled
          } else {
            return GSDS.Components.Buttons.Default.Tertiary.Colors.Foreground.enabled
          }
        }
      } else {
        if configuration.role == .destructive {
          return GSDS.Components.Buttons.Destructive.Tertiary.Colors.Foreground.disabled
        } else {
          return GSDS.Components.Buttons.Default.Tertiary.Colors.Foreground.disabled
        }
      }
   
    }
  }
  
  private func backgroundColor(configuration: Configuration) -> Color {
    switch type {
    case .primary:
      if isEnabled {
        if configuration.isPressed {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Primary.Colors.Background.pressed
          } else {
            return GSDS.Components.Buttons.Default.Primary.Colors.Background.pressed
          }
        } else {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Primary.Colors.Background.enabled
          } else {
            return GSDS.Components.Buttons.Default.Primary.Colors.Background.enabled
          }
        }
      } else {
        if configuration.role == .destructive {
          return GSDS.Components.Buttons.Destructive.Primary.Colors.Background.disabled
        } else {
          return GSDS.Components.Buttons.Default.Primary.Colors.Background.disabled
        }
      }
    case .secondary:
      if isEnabled {
        if configuration.isPressed {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Secondary.Colors.Background.pressed
          } else {
            return GSDS.Components.Buttons.Default.Secondary.Colors.Background.pressed
          }
        } else {
          if configuration.role == .destructive {
            return GSDS.Components.Buttons.Destructive.Secondary.Colors.Background.enabled
          } else {
            return GSDS.Components.Buttons.Default.Secondary.Colors.Background.enabled
          }
        }
      } else {
        if configuration.role == .destructive {
          return GSDS.Components.Buttons.Destructive.Secondary.Colors.Background.disabled
        } else {
          return GSDS.Components.Buttons.Default.Secondary.Colors.Background.disabled
        }
      }
    case .tertiary:
      return GSDS.Components.Buttons.Default.Tertiary.Colors.Background.noBackground
    }
  }
  
  private var horizontalPadding: CGFloat {
    switch size {
    case .small:
      GSDS.Components.Buttons.Sizes.Small.horizontalPadding
    case .regular:
      GSDS.Components.Buttons.Sizes.Regular.horizontalPadding
    case .large:
      GSDS.Components.Buttons.Sizes.Large.horizontalPadding
    }
  }
  
  private var verticalPadding: CGFloat {
    switch size {
    case .small:
      GSDS.Components.Buttons.Sizes.Small.verticlaPadding
    case .regular:
      GSDS.Components.Buttons.Sizes.Regular.verticlaPadding
    case .large:
      GSDS.Components.Buttons.Sizes.Large.verticlaPadding
    }
  }
  
  private var cornerRadius: CGFloat {
    switch style {
    case .pill:
      GSDS.Components.Buttons.BordersRadius.pill
    case .roundedCorners:
      GSDS.Components.Buttons.BordersRadius.roundedCorners
    case .square:
      GSDS.Components.Buttons.BordersRadius.square
    }
  }
}

// MARK: - Previews
#Preview {
  let buttonRole: ButtonRole? = nil//.destructive
  return VStack(spacing: 16) {
    HStack(alignment: .bottom) {
      ForEach(GAButtonSize.allCases) { size in
        VStack {
          ForEach(GAButtonStyle.allCases) { style in
            Button(role: buttonRole) {} label: {Text("Button")}
              .buttonStyle(.primary(style: style, size: size))
          }
        }
      }
    }
    HStack(alignment: .bottom) {
      ForEach(GAButtonSize.allCases) { size in
        VStack {
          ForEach(GAButtonStyle.allCases) { style in
            Button(role: buttonRole) {} label: {Text("Button")}
              .buttonStyle(.secondary(style: style, size: size))
          }
        }
      }
    }
    HStack(alignment: .bottom) {
      ForEach(GAButtonSize.allCases) { size in
        VStack {
          ForEach(GAButtonStyle.allCases) { style in
            Button(role: buttonRole) {} label: {Text("Button")}
              .buttonStyle(.tertiary(style: style, size: size))
          }
        }
      }
    }
  }
  .disabled(false)
}
