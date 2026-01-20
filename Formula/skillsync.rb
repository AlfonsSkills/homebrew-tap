class Skillsync < Formula
  desc "Sync skills from Git repositories to 14+ AI coding tools"
  homepage "https://github.com/AlfonsSkills/SkillSync"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-darwin-arm64"
      sha256 "c1b2d7fc03cd46b92c4ad93e9027017947dc3ff6490ad40976f0c18d0b4883cf"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-darwin-amd64"
      sha256 "53b68fbb34b4532d7e5adbd180914a027bce9daf00d39b369c6090fe562965a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-linux-arm64"
      sha256 "30da4f13727a049092272257989f61f45a532c1e635060ec9f6ca7cbc42c325c"
    else
      url "https://github.com/AlfonsSkills/SkillSync/releases/download/v0.11.1/skillsync-linux-amd64"
      sha256 "8b4442ff151f74e9a19811347b66f8e6516654dedbf08f214249cf0f3e976089"
    end
  end

  def install
    bin.install Dir["skillsync*"].first => "skillsync"
  end

  test do
    system "#{bin}/skillsync", "--version"
  end
end
