Pod::Spec.new do |s|
  s.name             = 'Moya-Hi'
  s.version          = '15.0.0-v4'
  s.summary          = 'Network abstraction layer written in Swift'
  s.description  = <<-EOS
  Moya abstracts network commands using Swift Generics to provide developers
  with more compile-time confidence.

  ReactiveSwift and RxSwift extensions exist as well. Instructions for installation
  are in [the README](https://github.com/tospery/Moya).
  EOS
  s.homepage         = 'https://github.com/tospery/Moya'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "YangJianxiang" => "tospery@gmail.com" }
  s.source           = { :git => 'https://github.com/tospery/Moya.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'Moya-Hi/**/*'
  
  s.requires_arc = true
  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'
  s.default_subspec = "Core"
  
  s.subspec "Core" do |ss|
    ss.source_files  = "Moya-Hi/Moya/", "Moya-Hi/Moya/Plugins/"
    ss.dependency "Alamofire", "~> 5.0"
    ss.framework  = "Foundation"
  end
  
  s.subspec "RxSwift" do |ss|
    ss.source_files = "Moya-Hi/RxMoya/"
    ss.dependency "Moya-Hi/Core"
    ss.dependency "RxSwift", "~> 6.0"
  end
end
