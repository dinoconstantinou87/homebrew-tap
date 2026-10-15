class Freeagent < Formula
  desc "Command-line interface for the FreeAgent accounting API"
  homepage "https://github.com/dinoconstantinou87/FreeAgent"
  url "https://github.com/dinoconstantinou87/FreeAgent/releases/download/v0.6.0/freeagent-v0.6.0-macos-universal.tar.gz"
  sha256 "3c20fa06c1fb8e4ab9d177f98071573f8f0717468475b73405a948a217844096"
  license "MIT"

  depends_on :macos

  def install
    bin.install "freeagent"
    generate_completions_from_executable(bin/"freeagent", shell_parameter_format: :cobra,
                                                          shells:                 [:bash, :zsh, :fish])
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/freeagent --version")
  end
end
