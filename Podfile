source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

def testing_pods
    pod 'Quick', '~> 1.3.0'
    pod 'Nimble', '~> 7.1.2'
    pod 'OHHTTPStubs/Swift', '~> 6.1.0'
    pod 'Nimble-Snapshots', '~> 6.7.1'
end

target 'Lodjinha' do
    pod 'R.swift', '~> 4.0.0'
    pod 'SVProgressHUD', '~> 2.2.5'
    pod 'Alamofire', '~> 4.7.2'
    pod 'Kingfisher', '~> 4.8.0'

    target 'LodjinhaTests' do
        inherit! :search_paths
        # Pods for testing
        testing_pods
    end

end
