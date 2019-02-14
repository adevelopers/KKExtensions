#
#  Be sure to run `pod spec lint KKExtensions.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "KKExtensions"
  spec.version      = "0.1"
  spec.summary      = "A short description of KKExtensions."


  spec.description  = <<-DESC
  Some useful swift extensions:
  * FileManager
                   DESC


  spec.homepage     = "https://github.com/adevelopers/KKExtensions"
  spec.license      = "MIT"
  spec.author       = { "Kirill Khudyakov" => "hudiakov@gmail.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/adevelopers/KKExtensions.git", :tag => "#{spec.version}" }
  spec.source_files  = "Extensions/**/*"

end
