class Skillsync < Formula
  desc "Sync skills from Git repositories to 14+ AI coding tools"
  homepage "https://github.com/AlfonsSkills/SkillSync"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.12.0/skillsync-darwin-arm64"
      sha256 "fee4d317ce2c6b249ccce868c3e6496e435965e69d0843f94db4d619f2376e09"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.12.0/skillsync-darwin-amd64"
      sha256 "ccb677b49a03b6aa46c38250d8908bb978629b108b4840e11d84b9d6771eef9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.12.0/skillsync-linux-arm64"
      sha256 "c5aac038f1006810a5fc5d7e51abcbd928edfe41a6afecb0bb80a1d974f67fa7"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.12.0/skillsync-linux-amd64"
      sha256 "ef4b82446bccc3fe62b648e4e1df0c8f6c30ba01c7ba25d4142bdeed3b48022c"
    end
  end

  def install
    bin.install Dir["skillsync*"].first => "skillsync"
  end

  test do
    system "#{bin}/skillsync", "--version"
  end
end
