class Commitgen < Formula
  desc "AI-powered Git commit message generator"
  homepage "https://github.com/leehosu/commitgen"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leehosu/commitgen/releases/download/v0.1.1/commitgen_0.1.1_Darwin_arm64.tar.gz"
      sha256 "723d0e2adf338590f5078be4aaa46d1271a1d72e3b2d4c017935539f42685bb9"
    elsif Hardware::CPU.intel?
      url "https://github.com/leehosu/commitgen/releases/download/v0.1.1/commitgen_0.1.1_Darwin_x86_64.tar.gz"
      sha256 "87b9d62f3419d49336619dd9cabb5d2d4898d6c3b4243d85a12c7bce1c045b9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leehosu/commitgen/releases/download/v0.1.1/commitgen_0.1.1_Linux_arm64.tar.gz"
      sha256 "88b44b42ca02d76eb3c0223d9c62a0ac6848cd4e7c05a77083f1c81aef2bd8dc"
    elsif Hardware::CPU.intel?
      url "https://github.com/leehosu/commitgen/releases/download/v0.1.1/commitgen_0.1.1_Linux_x86_64.tar.gz"
      sha256 "95d8e86cb00373ed52ed1bb28e125f7af94a763e3db79bcdc6bef105a5ce4556"
    end
  end

  depends_on "git"

  def install
    bin.install "commitgen"
  end

  test do
    system "#{bin}/commitgen", "version"
  end
end
