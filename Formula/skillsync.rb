class Skillsync < Formula
  desc "Sync skills from Git repositories to 14+ AI coding tools"
  homepage "https://github.com/AlfonsSkills/SkillSync"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-darwin-arm64"
      sha256 "3efa94bc0bab5caed9d5e9d896bf4075cf8aa97926e591669ae8aefb98b42310"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-darwin-amd64"
      sha256 "8a1d1828925222e2c0630d57ae13cb09ef8dc004eb76348e7f0fb13507bed18e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-linux-arm64"
      sha256 "ed524dbed5fc4e2d8147c97c188de301b6543a2998dd6fe6db42a6794d012d94"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-linux-amd64"
      sha256 "656f2ace8db92ec2d2f92fec33bd3399208808357d706fbb8565a172513df65c"
    end
  end

  def install
    bin.install Dir["skillsync*"].first => "skillsync"
  end

  test do
    system "#{bin}/skillsync", "--version"
  end
end
