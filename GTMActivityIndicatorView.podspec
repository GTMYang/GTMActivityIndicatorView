

Pod::Spec.new do |s|

  s.name         = "GTMActivityIndicatorView"
  s.version      = "1.3.2"
  s.summary      = "swift 实现的Loadding动画库"
  s.swift_version= "4.2"

  s.homepage     = "https://github.com/GTMYang/GTMActivityIndicatorView"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "GTMYang" => "17757128523@163.com" }


  s.source       = { :git => "https://github.com/GTMYang/GTMActivityIndicatorView.git", :tag => s.version }
  s.source_files = "GTMActivityIndicatorView/*.{h,swift}"

  s.ios.deployment_target = "8.0"
  s.frameworks = "UIKit"

#s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }

end
