//
//  File.swift
//  
//
//  Created by Neo Golightly on 14.02.24.
//

import Foundation

extension GSDS {
  public enum Components {
    public enum Card {
      public enum Colors {}
      public enum BordersRadius {
        public static let `default` = Core.BordersRadius.Radius9
      }
    }
    
    public enum Button {
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
      enum Primary {
        enum Colors {
          enum Background {
            public static let enabled = Core.Colors.RipeMango700
            public static let pressed = Core.Colors.RipeMango300
            public static let disabled = Core.Colors.DeadPixel25
          }
          enum Foreground {
            public static let enabled = Core.Colors.RipeMango1400
            public static let pressed = Core.Colors.RipeMango1200
            public static let disabled = Core.Colors.DeadPixel400
          }
          enum Border {
            public static let noBorder = Core.Colors.Transparent
          }
        }
      }
      enum Secondary {
        enum Colors {
          enum Background {
            public static let enabled = Core.Colors.Transparent
            public static let pressed = Core.Colors.Transparent
            public static let disabled = Core.Colors.Transparent
          }
          enum Foreground {
            public static let enabled = Core.Colors.DeadPixel1200
            public static let pressed = Core.Colors.DeadPixel500
            public static let disabled = Core.Colors.DeadPixel300
          }
          enum Border {
            public static let enabled = Core.Colors.DeadPixel1200
            public static let pressed = Core.Colors.DeadPixel500
            public static let disabled = Core.Colors.DeadPixel300
          }
        }
      }
      enum Tertiary {
        enum Colors {
          enum Background {
            public static let noBackground = Core.Colors.Transparent
          }
          enum Foreground {
            public static let enabled = Core.Colors.RipeMango1100
            public static let pressed = Core.Colors.RipeMango700
            public static let disabled = Core.Colors.DeadPixel400
          }
          enum Border {
            public static let noBorder = Core.Colors.Transparent
          }
        }
      }
    }
  }
}
