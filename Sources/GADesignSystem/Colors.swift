//
//  File.swift
//  
//
//  Created by Neo Golightly on 14.02.24.
//

import SwiftUI

extension GSDS {
  public enum Colors {
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
