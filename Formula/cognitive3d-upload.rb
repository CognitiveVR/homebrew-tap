class CognitiveVRUpload < Formula
  desc "Upload scenes and dynamic objects to the Cognitive3D XR analytics platform"
  homepage "https://cognitive3d.com"
  version "1.3.2"

  on_linux do
    on_intel do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_amd64.AppImage"
      sha256 "78ab2233701a8c852c44bd71ea0a31d6ee6f0c7cab653551b2070e9bfec939ca"
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
