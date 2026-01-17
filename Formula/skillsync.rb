class Skillsync < Formula
  desc "Sync skills from Git repositories to 14+ AI coding tools"
  homepage "https://github.com/AlfonsSkills/SkillSync"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.0/skillsync-darwin-arm64"
      sha256 "12142ffbd1254afcca241a9a2cfaca0a851ef40b6ad5417e0f4cd56f1f2a9df6"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.0/skillsync-darwin-amd64"
      sha256 "84b1e749ea3bf1ba27283f9fd00b7856f7d7c9668b0b1aaae83231d1a2b4fa35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.0/skillsync-linux-arm64"
      sha256 "1d8156bf1928f36c5c3f0da3cf476f7ff53ab1c7ec489fb9c380455f37c817e5"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.0/skillsync-linux-amd64"
      sha256 "fcb2139f6374fbe63600eae381f4d1a2c05b7d185ccd5b9e5b25346654a4bbf7"
    end
  end

  def install
    bin.install Dir["skillsync*"].first => "skillsync"
  end

  test do
    system "#{bin}/skillsync", "--version"
  end
end
