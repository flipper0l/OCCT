Useful commands

```
libtool -static -o libOCCT_fat.a libOCCT.a macos-clang/libOCCT.a

xcodebuild -create-xcframework -output occt.xcframework \                                                 
  -library ios-arm64/libOCCT.a -headers ios-arm64/Headers \        
  -library ios-arm64-simulator/libOCCT.a -headers ios-arm64-simulator/Headers \    
  -library macos-arm64/libOCCT.a -headers macos-arm64/Headers \            
  -library macos-x86_64/libOCCT.a -headers macos-x86_64/Headers


rm -rf .swiftpm
rm -rf .build
rm -rf ~/Library/Developer/Xcode/DerivedData
rm -rf ~/Library/org.swift.swiftpm          
```
