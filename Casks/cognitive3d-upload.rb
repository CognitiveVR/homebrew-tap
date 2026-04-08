cask "cognitive3d-upload" do
  name "Cognitive3D Upload Tool"
  desc "Upload scenes and dynamic objects to the Cognitive3D XR analytics platform"
  homepage "https://cognitive3d.com"
  version "1.2.1"

  livecheck do
    skip "Auto-updated by CI on release."
  end

  on_macos do
    on_arm do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_aarch64.dmg"
      sha256 "cfaee1e2c5849d228b4e1f494eda40e7b1e6c182feb8ccec675804bbf6fd06b0"
    end

    on_intel do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_x64.dmg"
      sha256 "09b7de881a4cc8d690507cd12fb8dc3a3b70c602a23a2cb75cb849ccf587d794"
    end
  end

  app "Cognitive3D Upload Tool.app"
end
