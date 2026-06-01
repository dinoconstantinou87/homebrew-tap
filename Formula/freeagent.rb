class Freeagent < Formula
  desc "Command-line interface for the FreeAgent accounting API"
  homepage "https://github.com/dinoconstantinou87/FreeAgent"
  url "https://github.com/dinoconstantinou87/FreeAgent/releases/download/v0.2.0/freeagent-v0.2.0-macos-universal.tar.gz"
  sha256 "193d52eae8b4c88998107deec8594e520ac34fddd86df5f5d8c5bb9f46f8c616"
  license "MIT"

  depends_on :macos

  def install
    bin.install "freeagent"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/freeagent --version")
  end
end
