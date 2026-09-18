class Freeagent < Formula
  desc "Command-line interface for the FreeAgent accounting API"
  homepage "https://github.com/dinoconstantinou87/FreeAgent"
  url "https://github.com/dinoconstantinou87/FreeAgent/releases/download/v0.3.0/freeagent-v0.3.0-macos-universal.tar.gz"
  sha256 "cee260c5a88d1ad74cdf4b4740453df5fba5c9402cc698a39a1a5e9d4d0edbe6"
  license "MIT"

  depends_on :macos

  def install
    bin.install "freeagent"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/freeagent --version")
  end
end
