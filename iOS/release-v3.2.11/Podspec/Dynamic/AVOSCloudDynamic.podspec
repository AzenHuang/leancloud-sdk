Pod::Spec.new do |s|

  component  = "AVOSCloud"

  s.name     = "AVOSCloudDynamic"
  s.version  = "3.2.11"
  s.platform = :ios, "8.0"
  s.summary  = "LeanCloud iOS SDK for mobile backend."
  s.homepage = "https://leancloud.cn"
  s.documentation_url = "https://leancloud.cn/api-docs/iOS/index.html"
  s.license  = {
    :type => "Commercial",
    :text => "Copyright 2015 LeanCloud, Inc. See https://leancloud.cn/terms.html"
  }
  s.author   = { "LeanCloud" => "support@leancloud.cn" }
  
  s.source   = { :http => "https://download.leancloud.cn/sdk/iOS/release-v#{s.version}/Dynamic/#{component}.framework.zip" }

  framework_path = "iOS/release-v#{s.version}/Dynamic/#{component}.framework"

  s.preserve_paths       = "#{framework_path}"
  s.public_header_files  = "#{framework_path}/**/*.h"
  s.vendored_frameworks  = "#{framework_path}"
  s.resources            = "#{framework_path}"

  s.frameworks = "CFNetwork", "SystemConfiguration", "MobileCoreServices", "CoreTelephony", "CoreLocation",  "CoreGraphics", "Security", "QuartzCore"
  s.libraries  = "icucore", "sqlite3"

  s.xcconfig = {
      "OTHER_LDFLAGS" => "$(inherited) -ObjC -lz",
      "FRAMEWORK_SEARCH_PATHS" => "\"${PODS_ROOT}/#{s.name}/**\"",
      "LD_RUNPATH_SEARCH_PATHS" => "@loader_path/../Frameworks"
  }

end