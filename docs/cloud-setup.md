# Codex cloud setup

The `waiver-warrior` environment was published on October 24, 2026, with access limited to its owner. Swift 6.3.1 was installed and signature-verified; the shared core build and CLI execution passed, including repeat setup. Fresh-task restoration has not yet been tested.

To start work, choose **Work in > Cloud > Select environment > waiver-warrior** and send your coding task. The saved Start skill configures the Swift toolchain and writable caches under `/workspace`.

## Recreating the environment

1. In ChatGPT/Codex, choose **Work in > Cloud > Select environment > Create environment**.
2. Select `cvillanueva10/waiver-warrior`. If it is missing, review the connected GitHub app's repository access.
3. Ask environment setup to install an official Swift toolchain, version 6.0 or newer, and put `swift` on PATH for subsequent tasks.
4. Validate with `swift --version`, `swift build`, and `swift run waiver-warrior` from the repository root.
5. Review setup results and publish the environment. Confirm **Environment published**.
6. Start a cloud task using that environment and ask it to run the build check and report results.

Suggested first task:

> Read AGENTS.md and docs/architecture.md. Run swift build and swift run waiver-warrior. Report the available Swift version and results. Do not implement product features or change files.

Do not assume Xcode is available in the cloud environment. Shared Swift code can be built on Linux; iOS simulator/device validation requires a macOS environment with Xcode. No signing credentials are needed for the shared core.

Official documentation: https://learn.chatgpt.com/docs/cloud
