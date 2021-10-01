Pod::Spec.new do |s|
  s.name             = 'Dummy'
  s.version          = '1.1.1'
  s.summary          = 'Dummy'
  s.homepage         = 'https://dummy.com'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
                            Copyright (c) 2021 DUMMY
                            Proprietary and confidential
                            Unauthorized copying of this file, via any medium is strictly prohibited
                            without the express permission of DUMMY
                            LICENSE
                       }
  s.author           = { 'Name' => 'dummy@dummy.com' }
  s.source           = { :git => 'https://dummy.git', :tag => '1.1.1-0' }

  s.swift_versions   = ['5']

  s.ios.deployment_target = '12.0'

  # Exclude arm64 architectures, which are not available in the components currently
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.static_framework  = true

  s.frameworks = 'Foundation'
  s.dependency 'BinaryPod',     '0.0.1'
  s.dependency 'SourcePod',     '0.0.1'
end
