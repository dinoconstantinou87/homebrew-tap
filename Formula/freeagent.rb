class Freeagent < Formula
  desc "Command-line interface for the FreeAgent accounting API"
  homepage "https://github.com/dinoconstantinou87/FreeAgent"
  url "https://github.com/dinoconstantinou87/FreeAgent/releases/download/v0.4.0/freeagent-v0.4.0-macos-universal.tar.gz"
  sha256 "771ea00988d76c8445f9bcc0af9e54a7d73e945cd24b07709beb6b8e36975592"
  license "MIT"

  depends_on :macos

  def install
    bin.install "freeagent"
    generate_completions_from_executable(bin/"freeagent", shell_parameter_format: :cobra,
                                                          shells:                 [:bash, :zsh, :fish])
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/freeagent --version")
  end
end
