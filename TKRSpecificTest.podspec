Pod::Spec.new do |s|
  s.name           = "TKRSpecificTest"
  s.version        = "0.0.1"
  s.summary        = "Run a specific test case by xcodebuild."
  s.homepage       = "https://github.com/tokorom/TKRSpecificTest"
  s.license        = 'MIT'
  s.author         = { "tokorom" => "tokorom@gmail.com" }
  s.source         = { :git => "https://github.com/tokorom/TKRSpecificTest.git", :tag => "0.0.1" }
  s.source_files   = 'TKRSpecificTest/*'
  s.framework      = 'XCTest', 'SenTestingKit'
  s.requires_arc   = true

  s.prefix_header_contents = <<EOC
#ifdef __OBJC__
    #import "XCTestSuite+Only.h"
#endif
EOC

end
