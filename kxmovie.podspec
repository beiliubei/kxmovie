Pod::Spec.new do |s|
  s.name         = "kxmovie"
  s.version      = "0.0.3.1"
  s.summary      = "kxmovie for vcam."

  s.homepage     = "https://github.com/beiliubei/kxmovie"
  s.license      = "MIT"
  s.author       = { "gxw" => "beiliubei@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/beiliubei/kxmovie.git",
                     :tag => "0.0.3.1" }

  s.source_files  = "output", "output/*.{h,m}"
  s.resources = "output/kxmovie.bundle/*.png"
  s.public_header_files = "output/*.h"

  s.frameworks = "MediaPlayer", "CoreAudio", "AudioToolbox", "Accelerate", "QuartzCore", "OpenGLES"
  s.ios.libraries = "z", "iconv"
  s.vendored_libraries = "output/libkxmovie.a", "output/libavcodec.a", "output/libavformat.a", "output/libavutil.a", "output/libswscale.a", "output/libswresample.a"
end
