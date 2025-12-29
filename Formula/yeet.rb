class Yeet < Formula
  desc "Package your codebase for AI consumption in seconds"
  homepage "https://github.com/j-shelfwood/yeet"
  url "https://github.com/j-shelfwood/yeet/releases/download/v1.3.0/yeet"
  version "1.3.0"
  sha256 "6d36a7888b4e5256af1345c07d96ff7ecc6648f6612936b850f72754d3b8f944"
  license "MIT"

  depends_on :macos

  def install
    bin.install "yeet"
  end

  test do
    # Test basic functionality
    assert_match "yeet", shell_output("#{bin}/yeet --version")

    # Test help command
    assert_match "Package source code for LLM consumption", shell_output("#{bin}/yeet --help")

    # Test list-only mode (dry run)
    system "#{bin}/yeet", "--list-only"
  end
end
