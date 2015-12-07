#
#  Be sure to run `pod spec lint iTunesMusicKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.name         = "QiitaDomainInterface"
  s.version      = "0.0.2"
  s.summary      = "QiitaDomainInterface."

  s.description  = <<-DESC
                   Qiita Domain Interface
                   DESC

  s.homepage     = "https://github.com/sora0077/qiita-app-domain-interface"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "" => "" }
  s.source       = { :git => "https://github.com/sora0077/qiita-app-domain-interface.git", :tag => "#{s.version}" }



  s.source_files  = "QiitaDomainInterface/**/*.{swift}", "QiitaDomainInterface/*.{swift}"
  s.exclude_files = "Classes/Exclude"

  s.dependency "QiitaKit"

end
