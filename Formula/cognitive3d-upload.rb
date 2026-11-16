class CognitiveVRUpload < Formula
  desc "Upload scenes and dynamic objects to the Cognitive3D XR analytics platform"
  homepage "https://cognitive3d.com"
  version "1.6.3"

  on_linux do
    on_intel do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_amd64.AppImage"
      sha256 "700b53233c46e4b17030fe53a409a76044f4d0b7daf75dd962139f1cdb0825b5"
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
