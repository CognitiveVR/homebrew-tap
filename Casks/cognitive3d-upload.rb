cask "cognitive3d-upload" do
  name "Cognitive3D Upload Tool"
  desc "Upload scenes and dynamic objects to the Cognitive3D XR analytics platform"
  homepage "https://cognitive3d.com"
  version "1.3.2"

  livecheck do
    skip "Auto-updated by CI on release."
  end

  on_macos do
    on_arm do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_aarch64.dmg"
      sha256 "3262d275752aeb2644fc8659d46a4374d77b4bb7b7a0ebc6fd21eaecc3d12180"
    end

    on_intel do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_x64.dmg"
      sha256 "3336f24ced70da097a83113711da139f2bc3dd7b65d56e4279c543224b9bb57a"
    end
  end

  app "Cognitive3D Upload Tool.app"
end
