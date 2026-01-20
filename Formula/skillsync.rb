class Skillsync < Formula
  desc "Sync skills from Git repositories to 14+ AI coding tools"
  homepage "https://github.com/AlfonsSkills/SkillSync"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-darwin-arm64"
      sha256 "f569412aa7b8f93594d80db56a0247aa24401920598d2c4d2bf83bd2863b7e98"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-darwin-amd64"
      sha256 "ed7e98209cfced41de71f1bcdf7b44b2247f4764e7c3b80c61c5d1d9bd8634b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-linux-arm64"
      sha256 "6024a6acd14f1a3bca9924adcfb71dcfc7ad3b1d35ca9b04aff60325ef369765"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-linux-amd64"
      sha256 "f5b91a8a7f8c1200fbcc9d0e31ac20a189f10c3b49304217b2bd28eab0093917"
    end
  end

  def install
    bin.install Dir["skillsync*"].first => "skillsync"
  end

  test do
    system "#{bin}/skillsync", "--version"
  end
end
