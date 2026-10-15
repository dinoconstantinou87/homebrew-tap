class Freeagent < Formula
  desc "Command-line interface for the FreeAgent accounting API"
  homepage "https://github.com/dinoconstantinou87/FreeAgent"
  url "https://github.com/dinoconstantinou87/FreeAgent/releases/download/v0.5.0/freeagent-v0.5.0-macos-universal.tar.gz"
  sha256 "59c3f9daa1041a233cf952e5d799980caeb1545e6b93990a3248d92a15fb9f31"
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
