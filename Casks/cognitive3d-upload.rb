cask "cognitive3d-upload" do
  name "Cognitive3D Upload Tool"
  desc "Upload scenes and dynamic objects to the Cognitive3D XR analytics platform"
  homepage "https://cognitive3d.com"
  version "1.3.0"

  livecheck do
    skip "Auto-updated by CI on release."
  end

  on_macos do
    on_arm do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_aarch64.dmg"
      sha256 "d4ab44eb91d73bf7bfcffe50dbeba9460d0e0d66f414ceeb3b913ea26e01c568"
    end

    on_intel do
      url "https://github.com/CognitiveVR/cognitive3d-releases/releases/download/v#{version}/Cognitive3D.Upload.Tool_#{version}_x64.dmg"
      sha256 "944d1d85fc541763fa92f458de51d14062d12dde9eccb5e662fc67468dae9c39"
    end
  end

  app "Cognitive3D Upload Tool.app"
end
