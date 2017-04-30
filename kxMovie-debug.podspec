Pod::Spec.new do |s|
  s.name         = "kxmovie-debug"
  s.version      = "0.0.5"
  s.summary      = "kxmovie for vcam."

  s.homepage     = "https://github.com/beiliubei/kxmovie"
  s.license      = "MIT"
  s.author       = { "gxw" => "beiliubei@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/beiliubei/kxmovie.git",
                     :tag => "0.0.5" }

  s.source_files  = "output/debug", "output/debug/*.{h,m}"
  s.resources = "output/debug/kxmovie.bundle/*.png"
  s.public_header_files = "output/debug/*.h"

  s.frameworks = "MediaPlayer", "CoreAudio", "AudioToolbox", "Accelerate", "QuartzCore", "OpenGLES"
  s.ios.libraries = "z", "iconv"
  s.vendored_libraries = "output/debug/libkxmovie.a", "output/debug/libavcodec.a", "output/debug/libavformat.a", "output/debug/libavutil.a", "output/debug/libswscale.a", "output/debug/libswresample.a"
end
