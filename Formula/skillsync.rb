class Skillsync < Formula
  desc "Sync skills from Git repositories to 14+ AI coding tools"
  homepage "https://github.com/AlfonsSkills/SkillSync"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.0/skillsync-darwin-arm64"
      sha256 "96fa268ac7322a87ed2d12b64e6b6e3df63f080b2678eb89e3eacdebb05064d4"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.0/skillsync-darwin-amd64"
      sha256 "60db256688bb42008106f4cfc074d370b36fbd8fc6a60eceee7b1c538291825a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.0/skillsync-linux-arm64"
      sha256 "3b3b7c17a9123d14ee36dbad81f470fdf5252143fbfa1bffe75389e18f7b6dd3"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.0/skillsync-linux-amd64"
      sha256 "f6d7926774e23b032f86b2e4a9ed1d8c201754fe4f391d2faae5e517c80d1a8d"
    end
  end

  def install
    bin.install Dir["skillsync*"].first => "skillsync"
  end

  test do
    system "#{bin}/skillsync", "--version"
  end
end
