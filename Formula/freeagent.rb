class Freeagent < Formula
  desc "Command-line interface for the FreeAgent accounting API"
  homepage "https://github.com/dinoconstantinou87/FreeAgent"
  url "https://github.com/dinoconstantinou87/FreeAgent/releases/download/v0.1.0/freeagent-v0.1.0-macos-universal.tar.gz"
  sha256 "b3f8f7c686463a9eacd38ddde2bd49c03d6e261dfb640a945c650fc14db6ff92"
  license "MIT"

  depends_on :macos

  def install
    bin.install "freeagent"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/freeagent --version")
  end
end
