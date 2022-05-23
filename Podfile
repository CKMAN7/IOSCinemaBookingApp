# Uncomment the next line to define a global platform for your project
source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'
platform :ios, '9.0'

target 'CinemaBookingApplication' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for CinemaBookingSystem
  pod 'Charts'
  
  use_frameworks!
  pod "Koloda"
  
  pod "youtube-ios-player-helper"

end


post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
        end
    end
end
