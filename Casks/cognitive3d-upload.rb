cask "cognitive3d-upload" do
  name "Cognitive3D Upload Tool"
  desc "Upload scenes and dynamic objects to the Cognitive3D XR analytics platform"
  homepage "https://cognitive3d.com"
  version "1.6.0"

  livecheck do
    skip "Auto-updated by CI on release."
  end

  on_macos do
    on_arm do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_aarch64.dmg"
      sha256 "ea017a38e12ab1e9f8673334ed2c4b3b19cfd995e8602df8684a33da9e08bb23"
    end

    on_intel do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_x64.dmg"
      sha256 "518052b64b3eee59166445303c7478f06b17bf7c5d5ede2febdf5dd854e38886"
    end
  end

  app "Cognitive3D Upload Tool.app"
end
