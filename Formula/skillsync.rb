class Skillsync < Formula
  desc "Sync skills from Git repositories to 14+ AI coding tools"
  homepage "https://github.com/AlfonsSkills/SkillSync"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-darwin-arm64"
      sha256 "5121524a75a0af730587924d5ddd7798c4479fbcdc9e1877fdff6150f46709a1"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-darwin-amd64"
      sha256 "93c3b1e14010c9da03e99c8aa0c001013ee3211ee57ec9c70385cfd9bdc9336e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-linux-arm64"
      sha256 "3b7ae88e135f81743e44a078541e00e7b5b1539e97ff8ef4d9f663fdd87fa066"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-linux-amd64"
      sha256 "54185f297c94dbf18a84e19ec9df2a09ec58527df362769823abf3b15a26c9c7"
    end
  end

  def install
    bin.install Dir["skillsync*"].first => "skillsync"
  end

  test do
    system "#{bin}/skillsync", "--version"
  end
end
