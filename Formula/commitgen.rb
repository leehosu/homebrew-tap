class Commitgen < Formula
  desc "AI-powered Git commit message generator"
  homepage "https://github.com/leehosu/commitgen"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leehosu/commitgen/releases/download/v0.1.0/commitgen_0.1.0_Darwin_arm64.tar.gz"
      sha256 "a42048e177ed63b919245ea3f2ac40e0e5ae51fadbd07c3e73fff32a12a26e22"
    elsif Hardware::CPU.intel?
      url "https://github.com/leehosu/commitgen/releases/download/v0.1.0/commitgen_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "b9154c9a4df88dd2d9fdc18a24d36c9db31588599a860e070b9d12a4e67fdc38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leehosu/commitgen/releases/download/v0.1.0/commitgen_0.1.0_Linux_arm64.tar.gz"
      sha256 "a1f84def45654d0bbb63d698494cb771547370e7b5c0922dfd90e1daf04ab557"
    elsif Hardware::CPU.intel?
      url "https://github.com/leehosu/commitgen/releases/download/v0.1.0/commitgen_0.1.0_Linux_x86_64.tar.gz"
      sha256 "24784f7233a3c10b5c5c76f8fa22eccda5fab5f56d5f83155515ee1fb6c80707"
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
