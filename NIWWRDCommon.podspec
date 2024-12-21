#
# Be sure to run `pod lib lint NIWWRDCommon.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'NIWWRDCommon'
    s.version          = '0.1.0'
    s.summary          = 'A short description of NIWWRDCommon.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/this-is-ritik/NIWWRDCommon'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'this-is-ritik' => 'ritiksharma2502@gmail.com' }
    s.source           = { :git => '$RepositoryBaseURL/NIWWRDCommon.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = $DevelopmentTarget
    
    s.source_files = 'NIWWRDCommon/Classes/**/*.{swift}'
    s.resource_bundles = {
        'NIWWRDCommon' => ['NIWWRDCommon/Assets/*.{xib,storyboard,json,png,xcassets}']
    }
    s.static_framework = true
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
#    s.frameworks = 'UIKit', 'MapKit'
    
    s.app_spec 'App' do |spec|
        spec.source_files = 'NIWWRDCommon/**/*.{swift,h,m}'
        spec.resources = ['NIWWRDCommon/**/*.{json,storyboard,xib,ttf,xcassets}']
        spec.info_plist = {
            'CFBundleIdentifier' => 'com.NIWWRD.Ritik.NIWWRDCommon',
            'CFBundleDisplayName' => 'NIWWRDCommon', # Have to keep this name only, otherwise Login apis will fail
            'CFBundleShortVersionString' => '0.1.0', # With this `HotelUIExample/Common/AppManager.swift` -> apiAccessKey() needs to be updated
            'CFBundleVersion' => '0.1.0',
            'LSRequiresIPhoneOS' => true,
            'NSAppTransportSecurity' => {
                'NSAllowsArbitraryLoads' => true
            },
            'UISupportedInterfaceOrientations' => ['UIInterfaceOrientationPortrait'],
            'UIUserInterfaceStyle' => 'Light',
            'UIViewControllerBasedStatusBarAppearance' => true,
        }
    end
end
