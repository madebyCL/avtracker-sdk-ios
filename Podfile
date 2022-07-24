source 'https://cdn.cocoapods.org/'

abstract_target :example do
  use_frameworks!
  inhibit_all_warnings!
  project 'AvTracker'
  workspace 'AvTracker'

  target :iOSExampleApp do
    platform :ios, '12.0'
    project 'Example/ios/ios'
    pod 'AvTracker', path: './'
  end

  target :macOSExampleApp do
    platform :osx, '10.13'
    project 'Example/macos/macos'
    pod 'AvTracker', path: './'
  end

  target :tvOSExampleApp do
    platform :tvos, '10.2'
    project 'Example/tvos/tvos'
    pod 'AvTracker', path: './'
  end

end

target 'AvTrackerTests' do
  use_frameworks!
  platform :ios, '9.0'
  inhibit_all_warnings!
  project 'AvTracker'
  workspace 'AvTracker'
  inherit! :search_paths

  pod 'Quick', '~> 3.0'
  pod 'Nimble', '~> 9.0'
end
