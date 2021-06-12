Pod::Spec.new do |s|

  s.name         = "Xcode9to10Preparation"
  s.version      = "0.0.27"
  s.summary      = "Provides functions from Xcode 10 in Xcode 9"
 
  s.deprecated   = true

  s.description  = <<-DESC
                   If you found some interesting functions, protocols, enumerations, classes or sctuctures in Xcode 10 you can use them right now in Xcode 9 with this library
                   DESC

  s.homepage     = "https://github.com/RomanPodymov/Xcode9to10Preparation"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "RomanPodymov" => "podymfrombryansk@yandex.ru" }

  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/RomanPodymov/Xcode9to10Preparation.git", :tag => s.version.to_s }
  s.source_files  = "Source", "Source/**/*.{h,m}"
  s.exclude_files = "Source/Exclude"

  s.swift_version = '4.1'
  s.requires_arc = true
  
end
