Pod::Spec.new do |s|

  s.name     = "LeanCloudCrashReporting"
  s.version  = "3.1.6.1"
  s.platform = :ios, "6.0"
  s.summary  = "LeanCloud iOS Crash Reporting SDK for mobile backend."
  s.homepage = "https://leancloud.cn"
  s.documentation_url = "https://leancloud.cn/docs/api/iOS/index.html"
  s.license  = {
    :type => "Commercial",
    :text => "Copyright 2015 LeanCloud, Inc. See https://leancloud.cn/terms.html"
  }
  s.author   = { "LeanCloud" => "support@leancloud.cn" }
  s.source   = { :http => "https://download.leancloud.cn/export/dummy.zip?event=cocoapods&module=#{s.name}&version=#{s.version}" }

  s.dependency "AVOSCloudCrashReporting", "= #{s.version}"

end
