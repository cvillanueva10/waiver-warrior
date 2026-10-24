# Waiver Warrior

iOS-first application with shared Swift business logic, a web browser client, and future Android support.

## Starter status

This repository contains a portable Swift package and a command-line build check. Product features, an installable iOS app, browser UI, WebAssembly bindings, and Android bindings have not been implemented yet.

```sh
swift build
swift run waiver-warrior
```

Requires Swift 6.0 or newer. No third-party package dependencies.

## Direction

- **Shared:** `WaiverWarriorCore` for models, rules, validation, and use cases.
- **iOS first:** native SwiftUI app consuming the local Swift package.
- **Web:** browser-native UI with the shared core compiled to WebAssembly; validate JavaScript interop before committing to a web framework.
- **Android later:** native UI consuming Swift through the official Android SDK and an interop layer.

Swift is the shared language. There is no single turnkey framework in this starter that supplies all three platform integrations.

See [architecture](docs/architecture.md), [cloud setup](docs/cloud-setup.md), and [agent instructions](AGENTS.md).
