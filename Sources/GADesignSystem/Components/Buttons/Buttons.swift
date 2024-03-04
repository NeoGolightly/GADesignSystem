//
//  File.swift
//  
//
//  Created by Neo Golightly on 03.03.24.
//

import Foundation

extension GSDS.Components {
  public enum Buttons {
    public enum Sizes {
      public enum Small {
        public static let horizontalPadding = Core.Spacing.Spacing4
        public static let verticlaPadding = Core.Spacing.Spacing1
      }
      
      public enum Regular {
        public static let horizontalPadding = Core.Spacing.Spacing4
        public static let verticlaPadding = Core.Spacing.Spacing2
      }
      public enum Large {
        public static let horizontalPadding = Core.Spacing.Spacing4
        public static let verticlaPadding: CGFloat = 9.5
      }
    }
    public enum BordersRadius {
      public static let pill = Core.BordersRadius.RadiusPill
      public static let roundedCorners = Core.BordersRadius.Radius5
      public static let square = Core.BordersRadius.Radius0
    }
    enum Default {
      enum Primary {
        enum Colors {
          enum Background {
            public static let enabled = GSDS.Colors.Interaction.Brand.Background.primary
            public static let pressed = GSDS.Colors.Interaction.Brand.Background.tertiary
            public static let disabled = GSDS.Colors.Interaction.Neutral.Background.quaternary
          }
          enum Foreground {
            public static let enabled = GSDS.Colors.Interaction.Brand.Foreground.primary
            public static let pressed = GSDS.Colors.Interaction.Brand.Foreground.quaternary
            public static let disabled = GSDS.Colors.Interaction.Neutral.Foreground.quaternary
          }
          enum Border {
            public static let noBorder = GSDS.Colors.Interaction.Neutral.Border.none
          }
        }
      }
      enum Secondary {
        enum Colors {
          enum Background {
            public static let enabled = GSDS.Colors.Interaction.Neutral.Background.none
            public static let pressed = GSDS.Colors.Interaction.Neutral.Background.none
            public static let disabled = GSDS.Colors.Interaction.Neutral.Background.none
          }
          enum Foreground {
            public static let enabled = GSDS.Colors.Interaction.Neutral.Foreground.secondary
            public static let pressed = GSDS.Colors.Interaction.Neutral.Foreground.quaternary
            public static let disabled = GSDS.Colors.Interaction.Neutral.Foreground.quinary
          }
          enum Border {
            public static let enabled = GSDS.Colors.Interaction.Neutral.Border.secondary
            public static let pressed = GSDS.Colors.Interaction.Neutral.Border.tertiary
            public static let disabled = GSDS.Colors.Interaction.Neutral.Border.quaternary
          }
        }
      }
      enum Tertiary {
        enum Colors {
          enum Background {
            public static let noBackground = GSDS.Colors.Interaction.Neutral.Background.none
          }
          enum Foreground {
            public static let enabled = GSDS.Colors.Interaction.Brand.Foreground.secondary
            public static let pressed = GSDS.Colors.Interaction.Brand.Foreground.quaternary
            public static let disabled = GSDS.Colors.Interaction.Neutral.Foreground.quinary
          }
          enum Border {
            public static let noBorder = GSDS.Colors.Interaction.Neutral.Border.none
          }
        }
      }
    }
    enum Destructive {
      enum Primary {
        enum Colors {
          enum Background {
            public static let enabled = GSDS.Colors.Interaction.Neagtive.Background.primary
            public static let pressed = GSDS.Colors.Interaction.Neagtive.Background.tertiary
            public static let disabled = GSDS.Colors.Interaction.Neagtive.Background.quaternary
          }
          enum Foreground {
            public static let enabled = Core.Colors.White
            public static let pressed = Core.Colors.White
            public static let disabled = GSDS.Colors.Interaction.Neagtive.Foreground.secondary
          }
          enum Border {
            public static let noBorder = GSDS.Colors.Interaction.Neutral.Border.none
          }
        }
      }
      enum Secondary {
        enum Colors {
          enum Background {
            public static let enabled = GSDS.Colors.Interaction.Neutral.Background.none
            public static let pressed = GSDS.Colors.Interaction.Neutral.Background.none
            public static let disabled = GSDS.Colors.Interaction.Neutral.Background.none
          }
          enum Foreground {
            public static let enabled = GSDS.Colors.Interaction.Neagtive.Foreground.primary
            public static let pressed = GSDS.Colors.Interaction.Neagtive.Foreground.tertiary
            public static let disabled = GSDS.Colors.Interaction.Neagtive.Foreground.secondary
          }
          enum Border {
            public static let enabled = GSDS.Colors.Interaction.Neagtive.Border.primary
            public static let pressed = GSDS.Colors.Interaction.Neagtive.Border.tertiary
            public static let disabled = GSDS.Colors.Interaction.Neagtive.Border.tertiary
          }
        }
      }
      enum Tertiary {
        enum Colors {
          enum Background {
            public static let noBackground = GSDS.Colors.Interaction.Neutral.Background.none
          }
          enum Foreground {
            public static let enabled = GSDS.Colors.Interaction.Neagtive.Foreground.primary
            public static let pressed = GSDS.Colors.Interaction.Neagtive.Foreground.tertiary
            public static let disabled = GSDS.Colors.Interaction.Neagtive.Foreground.secondary
          }
          enum Border {
            public static let noBorder = GSDS.Colors.Interaction.Neutral.Border.none
          }
        }
      }
    }
  }
}
