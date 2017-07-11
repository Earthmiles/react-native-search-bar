require 'json'
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name          = 'ReactNativeSearchBar'
  s.version       = package['version']
  s.summary       = package['description']
  s.description   = package['description']
  s.homepage      = package['homepage']
  s.license       = package['license']
  s.authors       = 'umhan35'
  s.source        = { :git => 'https://github.com/umhan35/react-native-search-bar.git' }
  s.source_files  = '**/*.{h,m}'
  s.platform      = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc  = true
  s.preserve_paths= 'package.json', 'LICENSE'
  s.dependency 'React'
end
