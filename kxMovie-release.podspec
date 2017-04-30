Pod::Spec.new do |s|
  s.name         = "kxmovie-release"
  s.version      = "0.0.5"
  s.summary      = "kxmovie for vcam."

  s.homepage     = "https://github.com/beiliubei/kxmovie"
  s.license      = "MIT"
  s.author       = { "gxw" => "beiliubei@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/beiliubei/kxmovie.git",
                     :tag => "0.0.5" }

  s.source_files  = "output/release", "output/release/*.{h,m}"
  s.resources = "output/release/kxmovie.bundle/*.png"
  s.public_header_files = "output/release/*.h"

  s.frameworks = "MediaPlayer", "CoreAudio", "AudioToolbox", "Accelerate", "QuartzCore", "OpenGLES"
  s.ios.libraries = "z", "iconv"
  s.vendored_libraries = "output/release/libkxmovie.a", "output/release/libavcodec.a", "output/release/libavformat.a", "output/release/libavutil.a", "output/release/libswscale.a", "output/release/libswresample.a"
end
