class Companion < Formula
  desc "Companion CLI - manage your AI sandbox from the terminal"
  homepage "https://companion.ai"
  url "https://registry.npmjs.org/@companion-ai/cli/-/cli-0.1.0.tgz"
  sha256 "6d9c4a9842e3b5a0665cffb780eb47ca43b9912f9832080caf57cdfb7ca960fd"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/companion.js" => "companion"
  end

  test do
    system "#{bin}/companion", "--help"
  end
end
