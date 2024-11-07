# Technical specification

## Requirements

The Apps will be developed using two different languages:

- `Swift 6+`
- `Objective-C`

|Platform|Requirement|
|---|---|
|`iOS`|15+|

## 📱 User interface

The Apps will follow **Apple**'s [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines) and will keep the user interface and experience as close as possible to official **Apple** Apps.

## 🎨 Design system

A global design system will be implemented to ensure all Apps follow the same design guidelines (ex: margins, paddings, colors).

## 💬 Internationalization

Apps will be localized in both French and English, the later being the base language for the Apps.

## 🏗️ Common architecture

Since the App will be developed for multiple architectures, some parts will be common to every single architecture used.

A domain package / framework will be implemented to hold all the objects that are used through the App.

A persistence package / framework will be implemented to hold all the code related to persistence.

A network package / framework will be implemented to hold all the code related to networking.

Some extension package / framework might be implemented to extend the aforementioned items with additional features (ex: `RxSwift` wrapper).

## Specific architectures

Apps will be developed with the following architectures:

|Language|UI framework|Architecture|
|---|---|---|
|**Swift**|`UIKit`||
|||`MVC`|
|||`MVVM`|
|||`MVP`|
|||`VIPER`|
|||`TCA`|
|**Swift**|`SwiftUI`||
|||`MVC`|
|||`MVVM`|
|||`TCA`|
|**Objective-C**|`UIKit`||
|||`MVC`|
|||`MVVM`|
|||`MVP`|
|||`VIPER`|

The **Coordinator** pattern will be used for the development of all the Apps to ensure a smooth and uniform navigation.

## 💾 Data persistence

Data will be persisted through **CoreData** SQLite database on-device.

**SwiftData** might be used to simplify persistence.
