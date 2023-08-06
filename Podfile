# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'MergeableLibDemo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'Alamofire'
  # Pods for MergeableLibDemo

  target 'MergeableLibDemoTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'MergeableLibDemoUITests' do
    # Pods for testing
  end

end


post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts "target - #{target.name}"
    target.build_configurations.each do |config|
      ## These excluded arch settings are required to compile the project
      ## for simulators on M1 macs
      config.build_settings['EXCLUDED_ARCHS[sdk=iphoneos*]'] = 'armv7'
      config.build_settings['MERGEABLE_LIBRARY'] = 'YES'
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'YES'
    end
  end
end
