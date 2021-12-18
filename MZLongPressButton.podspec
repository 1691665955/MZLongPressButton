Pod::Spec.new do |spec|
  spec.name         = "MZLongPressButton"
  spec.version      = "0.0.1"
  spec.summary      = "MZLongPressButton是兼容长按与点击事件、类似购物车加减按钮的控件"
  spec.homepage     = "https://github.com/1691665955/MZLongPressButton"
  spec.authors         = { 'MZ' => '1691665955@qq.com' }
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.source = { :git => "https://github.com/1691665955/MZLongPressButton.git", :tag => spec.version}
  spec.platform     = :ios, "9.0"
  spec.swift_version = '5.0'
  spec.source_files  = "MZLongPressButton/MZLongPressButton/*"
end
