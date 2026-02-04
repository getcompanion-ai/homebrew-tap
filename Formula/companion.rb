class Companion < Formula
  desc "Companion CLI - manage your AI sandbox from the terminal"
  homepage "https://companion.ai"
  url "https://registry.npmjs.org/@companion-ai/cli/-/cli-0.1.1.tgz"
  sha256 "1591ba24dbf2ed3d9cca6c4707c516fbbf48988e6d22c76f6164cf96a49825ff"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/companion.js" => "companion"
  end

  test do
    system "#{bin}/companion", "--help"
  end
end
