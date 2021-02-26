#
#  Be sure to run `pod spec lint ICBC.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|



   spec.name         = "ICBC"
   spec.version      = "1.1"
   spec.summary      = "工行e支付SDK"
   spec.description  = "工行e支付SDK，包含微信支付SDK、支付宝支付"
   spec.homepage     = "https://github.com/LessYellowFish/ICBCPAY"
   spec.license      = "LICENSE"
#   spec.author             = { "19920715zza" => "2601958675@qq.com" }
   spec.platform     = :ios, "9.0"
   spec.frameworks       = 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation'
   spec.vendored_frameworks = ["ICBCPaySDK.framework"]
   spec.resources    = 'Resources/ICBCPaySDK.bundle'
   spec.dependency     'Toast', '~> 4.0.0'
   spec.dependency     'GTMBase64', '1.0.1'
   spec.dependency 'AlipaySDK-iOS', '~> 15.6.8'
   spec.dependency 'WechatOpenSDK'
   spec.requires_arc = true
   spec.static_framework = true
  spec.source       = { :git => "https://github.com/LessYellowFish/ICBCPAY.git", :tag => "#{spec.version}"}
    spec.public_header_files = 'Classes/ICBCHeader.h'
  spec.ios.source_files  = "Classes/**/*.{h,m}"

end
