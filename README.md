# spm-derived-data-issue
A minimal project to reproduce https://github.com/apple/swift-package-manager/issues/6948

## How to reproduce

1. Clone this repository
2. Open the Xcode project, verify that your `DerivedData` folder is set to the default location (Xcode -> Settings -> Locations)
3. Try to build the package – you should be successful
4. Now try to change the `DerivedData` location to a custom location **on an external drive**
5. Quit and re-launch Xcode
6. Try to build the package again, you should now get the following error:
```
Error: You don’t have permission to save the file “Assets.generated.swift” in the folder “SwiftGenPlugin”.
```
