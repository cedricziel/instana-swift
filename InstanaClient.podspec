Pod::Spec.new do |s|
  s.name = 'InstanaClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.173.690'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.173.690' }
  s.authors = 'Cedric Ziel'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/cedricziel/instana-swift'
  s.summary = 'InstanaClient'
  s.source_files = 'InstanaClient/Classes/**/*.swift'
end
