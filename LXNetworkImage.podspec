
Pod::Spec.new do |spec|

  spec.name         = "LXNetworkImage"
  spec.version      = "1.0.0"
  spec.summary      = "LXNetworkImage."

  spec.description  = <<-DESC
  LXNetworkImage is lx Manager
                   DESC


  spec.homepage = "https://github.com/LIXIANGXLee/LXNetworkImage"

  spec.license = "MIT"

  spec.author = { "lixiang" => "lixiang@gokuaidian.com" }

  spec.platform = :ios, "10.0"
  spec.swift_version = "5.0"

  spec.source = { :git => "https://github.com/LIXIANGXLee/LXNetworkImage.git", :tag => "#{spec.version}" }

  spec.source_files = 'LXNetworkImage/*.swift'
  spec.dependency "Kingfisher"



end
