# Emoji App

My first Swift app, built with SwiftUI while learning iOS development. It shows one large emoji with a segmented picker below it, and picking an option changes the emoji on screen.

<p align="center">
  <img src="ScreenRecording_11-08-2026%2001-48-25_1.gif" alt="Emoji App demo cycling through the four emoji" width="250">
</p>

## Features

- A large emoji display that updates instantly
- A segmented picker with four emoji: 😭 😏 🚀 🐵
- A navigation title and padded layout
- Live previews in Xcode through `#Preview`

## Built with

- Swift and SwiftUI
- Xcode 26.3 (iOS 26.2 deployment target)

## Running the app

1. Clone the repo.
2. Open `Emoji App.xcodeproj` in Xcode.
3. Choose an iPhone simulator and press **Cmd + R**.

## What I learned

- **How a SwiftUI app is structured.** `@main` marks the entry point, the `App` struct creates a `WindowGroup`, and that shows `ContentView`, the first screen.
- **Building screens from views and modifiers.** I combined `VStack`, `Text`, and `Picker`, then adjusted them with modifiers like `.font`, `.pickerStyle`, `.navigationTitle`, and `.padding`.
- **State and bindings.** `@State` stores the selected emoji and tells SwiftUI to redraw when it changes. The picker gets `$selection`, a binding that lets it update that value.
- **Enums.** The emoji live in an enum with raw values. Each case has a readable name, and `CaseIterable` provides `allCases` so the picker builds one option per case without repeating myself.
- **Generating views from data.** `ForEach` creates the picker options from the enum, with `id: \.self` so each emoji identifies itself.
- **Types and values in Swift.** In `var selection: Emoji = .laugh`, the colon gives the type and the equals sign gives the value.
- **Debugging.** An emoji like ❤️ failed as a case name because it is two Unicode characters and the invisible one isn't allowed in an identifier. Putting the emoji in a string fixed it.
- **Working in Xcode.** I used the simulator, the canvas preview, and Xcode's error messages to find and fix problems.
