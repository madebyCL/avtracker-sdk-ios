Pod::Spec.new do |spec|
  spec.name         = "AvTracker"
  spec.version      = "7.5.1"
  spec.summary      = "Advisor Tracker wrap of A Matomo Tracker written in Swift for iOS, tvOS and macOS apps."
  spec.homepage     = "https://ad-i.com"
  spec.license      = { :type => 'MIT', :file => 'LICENSE.md' }
  spec.author       = { "AD Intelligence Inc. " => "leo@ad-i.com" }
  spec.source       = { :git => "https://github.com/madebyCL/avtracker-sdk-ios", :tag => "v#{spec.version}" }
  spec.ios.deployment_target = '10.0'
  spec.tvos.deployment_target = '10.0'
  spec.osx.deployment_target = '10.12'
  spec.requires_arc = true
  spec.default_subspecs = 'Core'
  spec.swift_version = '5.0'

  spec.ios.frameworks = 'UIKit'
  spec.tvos.frameworks = 'UIKit'

  spec.subspec 'Core' do |core|
  	core.source_files = 'AvTracker/*.swift'
  end
end
