cask "cognitive3d-upload" do
  name "Cognitive3D Upload Tool"
  desc "Upload scenes and dynamic objects to the Cognitive3D XR analytics platform"
  homepage "https://cognitive3d.com"
  version "1.3.1"

  livecheck do
    skip "Auto-updated by CI on release."
  end

  on_macos do
    on_arm do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_aarch64.dmg"
      sha256 "82ba5d17a49c8bb9ca421570db81cd183ae6c3254dcc841ec4ba48e6bf56ff3b"
    end

    on_intel do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_x64.dmg"
      sha256 "945d6511c69fa1379bbaa5b7cd28723073418b95ca3274128674a1a24cfd805e"
    end
  end

  app "Cognitive3D Upload Tool.app"
end
