Pod::Spec.new do |s|
  s.name = 'SoftUIView'
  s.version = '0.0.1'
  s.summary = 'SoftUIView is a Soft-UI (Neumorphism) view written in Swift.'
  s.description = 'SoftUIView is a Soft-UI (Neumorphism) view written in Swift. check https://uxdesign.cc/neumorphism-in-user-interfaces-b47cef3bf3a6 for more infomation.'
  s.license = { type: 'MIT', file: 'LICENSE' }
  s.homepage = 'https://github.com/hmhv/SoftUIView'
  s.social_media_url = 'https://hmhv.info'
  s.authors = { 'hmhv' => 'admin@hmhv.info' }

  s.swift_version = '5.1'

  s.ios.deployment_target = '10.0'
  s.ios.framework  = 'UIKit'

  s.source = { :git => 'https://github.com/hmhv/SoftUIView.git', :tag => s.version }
  s.source_files = 'Sources/SoftUIView/**/*.swift'

end
