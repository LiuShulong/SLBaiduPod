Pod::Spec.new do |s|
  s.name             = "SLBaiduPod"
  s.version          = "0.1.1"
  s.summary          = "A private pod test."

  s.description      = <<-DESC
                        A private pod test.My..
                       DESC

  s.homepage         = "https://github.com/LiuShulong/SLBaiduPod"
  s.license          = 'MIT'
  s.author           = { "LiuShulong" => "bigfish_liu@126.com" }
  s.source           = { :git => "https://github.com/LiuShulong/SLBaiduPod.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SLBaiduPod' => ['Pod/resources/mapapi.bundle']
  }

  s.header_mappings_dir = 'Pod/Classes/inc'
  s.vendored_libraries = [
    'Pod/Frameworks/libbaidumapapi.a'
  ]
  s.frameworks = 'CoreLocation','QuartzCore','OpenGLES','SystemConfiguration','CoreGraphics','Security'
  s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }

end
