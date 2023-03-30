# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

# Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

# Pods for plastic-bag-of-country

    # Reactive
    def reactive
	pod 'RxSwift'
	pod 'RxCocoa'
	pod 'RxGesture'	
    end

    # UI
    def ui
	pod 'SnapKit'
    end

    # Util
    def util
	pod 'Then'
    end

    # Network
    def network
	pod 'Alamofire'
	pod 'Kingfisher'
	pod 'Moya/RxSwift'
    end

target 'plastic-bag-of-country' do
    platform :ios, '15.0'
    reactive
    ui
    util
    network
end

target 'plastic-bag-of-countryTests' do
    inherit! :search_paths
    # Pods for testing
end

target 'plastic-bag-of-countryUITests' do
    # Pods for testing
end
