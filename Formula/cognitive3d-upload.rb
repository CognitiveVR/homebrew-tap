class CognitiveVRUpload < Formula
  desc "Upload scenes and dynamic objects to the Cognitive3D XR analytics platform"
  homepage "https://cognitive3d.com"
  version "1.6.0"

  on_linux do
    on_intel do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_amd64.AppImage"
      sha256 "3645e5f59613a293a7aef1963cf6e4b4f6a36206c7c0091c8be76a947ef62457"
    end
  end

  def install
    appimage = "Cognitive3D.Upload.Tool_#{version}_amd64.AppImage"
    chmod "+x", appimage
    bin.install appimage => "cognitive3d-upload"
  end

  test do
    system bin/"cognitive3d-upload", "--version"
  end
end
