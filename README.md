# OpenCVIOS
Base project for integrating OpenCV with IOS

If you want to reproduce this repository from scratch start at Step 1. Otherwise download this repository and go to Step 3.

Step 1: Install cocoa pods 
`$ sudo gem install cocoapods`

Step 2: go to project root folder and
`$ pod init` 

under `#pods for <Your Project>` in the `Podfile` add:
`pod ‘OpenCV’, '~> 2.4.13'` (replace with other version number if necessary)

Step 3:
`$ pod install` 

Step 4 !IMPORTANT!:
close your Xcode if it is already open and open `<Project>.xcworkspace` and **NOT** `<Project>.xcodeproj`
