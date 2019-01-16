
Pod::Spec.new do |s|
  s.name         = "RNOpencv3"
  s.version      = "1.0.5"
  s.summary      = "OpenCV 3.4.5 minified plus face landmarks  ported to React-Native for both iOS and Android"
  s.description  = <<-DESC
                  react-native-opencv3 wraps functionality from OpenCV Java SDK 3.4.5 + face landmarks and iOS OpenCV 3.4.5 for use in React-Native apps.  Please enjoy!
                   DESC
  s.homepage     = "https://github.com/adamgf/react-native-opencv3"
  s.license      = { :type => "clause-3 BSD", :file => "LICENSE" }
  s.author             = { "Adam G. Freeman" => "adamgf@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/adamgf/react-native-opencv3.git", :tag => "master" }
  s.source_files  = "RNOpencv3/**/*.{h,mm,m}"
  s.requires_arc = true

  s.subspec "CvCamera" do |ss|
    ss.source_files = "CvCamera/**/*.{h,m,mm}"
    ss.ios.resource_bundle = { 'ocvdata' => 'ocvdata/*.*ml' }
  end

  s.dependency "OpenCVmin+face", "~> 3.4.5"
  # s.dependency "React"
  # s.dependency "others"

end
