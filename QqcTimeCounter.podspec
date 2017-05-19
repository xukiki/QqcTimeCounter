Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "QqcTimeCounter"
  s.version      = "1.0.100"
  s.summary      = "QqcTimeCounter"
  s.homepage     = "https://github.com/xukiki/QqcTimeCounter"
  s.source       = { :git => "https://github.com/xukiki/QqcTimeCounter.git", :tag => "#{s.version}" }
  
  s.source_files  = ["QqcTimeCounter/*.{h,m}"]
  s.dependency "QqcSingletonTemplate"

end
