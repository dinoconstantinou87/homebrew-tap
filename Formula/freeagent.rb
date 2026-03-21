class Freeagent < Formula
  desc "Command-line interface for the FreeAgent accounting API"
  homepage "https://github.com/dinoconstantinou87/FreeAgent"
  url "https://github.com/dinoconstantinou87/FreeAgent/releases/download/v0.1.0/freeagent-v0.1.0-macos-universal.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on :macos

  def install
    bin.install "freeagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/freeagent --version")
  end
end
