//
//  File.swift
//  
//
//  Created by Neo Golightly on 14.02.24.
//

import SwiftUI

extension GSDS {
  public enum Colors {
    public enum Interaction {
      public enum Brand {
        public enum Background {
          /// Primary brand background color
          public static let primary: Color = Core.Colors.RipeMango700
          public static let secondary: Color = Core.Colors.RipeMango300
          public static let tertiary: Color = Core.Colors.RipeMango200
          public static let none: Color = Core.Colors.Transparent
        }
        public enum Foreground {
          public static let primary: Color = Core.Colors.RipeMango1400
          public static let secondary: Color = Core.Colors.RipeMango1200
          public static let tertiary: Color = Core.Colors.RipeMango1100
          public static let quaternary: Color = Core.Colors.RipeMango700
        }
        public enum Border {
          public static let primary: Color = Core.Colors.RipeMango700
          public static let secondary: Color = Core.Colors.RipeMango500
          public static let tertiary: Color = Core.Colors.RipeMango300
          public static let none: Color = Core.Colors.Transparent
        }
      }
      public enum Neutral {
        public enum Background {
          public static let primary: Color = Core.Colors.DeadPixel1400
          public static let secondary: Color = Core.Colors.DeadPixel1200
          public static let tertiary: Color = Core.Colors.DeadPixel400
          public static let quaternary: Color = Core.Colors.DeadPixel25
          public static let none: Color = Core.Colors.Transparent
        }
        public enum Foreground {
          public static let primary: Color = Core.Colors.DeadPixel1400
          public static let secondary: Color = Core.Colors.DeadPixel1200
          public static let tertiary: Color = Core.Colors.DeadPixel900
          public static let quaternary: Color = Core.Colors.DeadPixel500
          public static let quinary: Color = Core.Colors.DeadPixel400
          public static let primary_onColor: Color = Core.Colors.DeadPixel25
        }
        public enum Border {
          public static let primary: Color = Core.Colors.DeadPixel1400
          public static let secondary: Color = Core.Colors.DeadPixel1200
          public static let tertiary: Color = Core.Colors.DeadPixel500
          public static let quaternary: Color = Core.Colors.DeadPixel300
          public static let none: Color = Core.Colors.Transparent
        }
      }
      public enum Neagtive {
        public enum Background {
          public static let primary: Color = Core.Colors.Ferocious900
          public static let secondary: Color = Core.Colors.Ferocious500
          public static let tertiary: Color = Core.Colors.Ferocious300
          public static let quaternary: Color = Core.Colors.Ferocious100
          public static let none: Color = Core.Colors.Transparent
        }
        public enum Foreground {
          public static let primary: Color = Core.Colors.Ferocious900
          public static let secondary: Color = Core.Colors.Ferocious400
          public static let tertiary: Color = Core.Colors.Ferocious300
          
        }
        public enum Border {
          public static let primary: Color = Core.Colors.Ferocious900
          public static let secondary: Color = Core.Colors.Ferocious500
          public static let tertiary: Color = Core.Colors.Ferocious300
          public static let none: Color = Core.Colors.Transparent
        }
      }
    }
    
    
    
    // MARK: - Brand
    public enum Brand {
      public static let primary: Color = Core.Colors.RipeMango1300
      public static let secondary: Color = Core.Colors.RipeMango1200
      public static let tertiary: Color = Core.Colors.RipeMango1100
    }
    // MARK: - Text
    public enum Text {
      public enum Primary {
        public static let `default`: Color = Core.Colors.Black
        public static let inverse: Color = Core.Colors.White
      }
      
      public enum Secondary {
        public static let `default`: Color = Core.Colors.DeadPixel1000
        public static let inverse: Color = Core.Colors.DeadPixel300
      }
      
      public enum Tertiary {
        public static let `default`: Color = Core.Colors.DeadPixel800
        public static let inverse: Color = Core.Colors.DeadPixel500
      }
      public enum Quaternary {
        public static let `default`: Color = Core.Colors.DeadPixel300
        public static let inverse: Color = Core.Colors.DeadPixel1000
      }
    }
    // MARK: - Page
    public enum Page {
      public static let background: Color = Core.Colors.DeadPixel10
    }
    // MARK: - Garbage
    public enum Garbage {
      public static let residualWaste: Color = Core.Colors.DeadPixel1500
      public static let bio: Color = Core.Colors.PastelGreen900
      public static let yellowSack: Color = Core.Colors.RipeMango800
      public static let trees: Color = Core.Colors.Lager900
      public static let paper: Color = Core.Colors.Cornflower800
    }
  }
}
