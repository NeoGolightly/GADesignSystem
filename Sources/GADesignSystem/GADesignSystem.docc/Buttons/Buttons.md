# Buttons

Style your buttons with predefined button styles

## Overview

![Buttons overview](ButtonsOverview)

The design system provides you all necessary button styles for the goslar design system. Use the standard SwiftUI *.buttonStyle()* function with one of the three base button styles (``SwiftUI/ButtonStyle/primary``, ``SwiftUI/ButtonStyle/secondary`` and ``SwiftUI/ButtonStyle/tertiary``). If you want more control over the appearance of the button than use ``SwiftUI/ButtonStyle/primary(style:size:)``, ``SwiftUI/ButtonStyle/secondary(style:size:)`` or ``SwiftUI/ButtonStyle/tertiary(style:size:)``.


```swift
VStack {
  Button("A primary button") {}
    .buttonStyle(.primary)
  Button("A primary large button with rounded corners") {}
      .buttonStyle(.primary(style: .roundedCorners, size: .large))  
  Button("A secondary small squared button") {}
      .buttonStyle(GABaseButtonStyle(type: .secondary, style: .square, size: .small))
}
```

## Creating a destructive button
To create a destructive button style you can use SwiftUIs button role.

```swift
Button(role: .destructive) {} 
  label: { Label("A destructive button", systemImage: "trash") }
.buttonStyle(.primary)
```

> Warning: Don't create your own button styles or change the behaviour of the defined styles. Every style is aligned with the design system and shouldn't be altered.

## Topics

### Base Button Style
- ``GABaseButtonStyle``

### Using Base Button Styles
- ``GABaseButtonStyle/primary``
- ``GABaseButtonStyle/primary(style:size:)``
- ``GABaseButtonStyle/secondary``
- ``GABaseButtonStyle/secondary(style:size:)``
- ``GABaseButtonStyle/tertiary``
- ``GABaseButtonStyle/tertiary(style:size:)``

### Base Button Configuration
- <doc:ButtonConfigurations>

### Extended Modules
- ``SwiftUI/ButtonStyle``
