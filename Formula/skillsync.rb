class Skillsync < Formula
  desc "Sync skills from Git repositories to 14+ AI coding tools"
  homepage "https://github.com/AlfonsSkills/SkillSync"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.10.0/skillsync-darwin-arm64"
      sha256 "693a432188726d600774613f4d0820df7c7ed0db2a94fb453fa4f6eecfee3c2a"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.10.0/skillsync-darwin-amd64"
      sha256 "db8d0352a2f2c529ba92a5afad40e82b3ae5e8307666c5c2e0cb921db5423751"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.10.0/skillsync-linux-arm64"
      sha256 "91db1e7f336f863c72d7cde0e7c9f9014e67ed0d90eb982d8baaf09547f9abfe"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.10.0/skillsync-linux-amd64"
      sha256 "842974814a0264f7577cf6b04fd5fd59401c164cf9722a1d2784c2d13587c763"
    end
  end

  def install
    bin.install Dir["skillsync*"].first => "skillsync"
  end

  test do
    system "#{bin}/skillsync", "--version"
  end
end
