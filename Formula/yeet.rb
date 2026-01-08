class Yeet < Formula
  desc "Package your codebase for AI consumption in seconds"
  homepage "https://github.com/j-shelfwood/yeet"
  url "https://github.com/j-shelfwood/yeet/releases/download/v1.4.0/yeet"
  version "1.4.0"
  sha256 "834ed2f7cc2a768525a6c56b202379d81f6e5762d487943a3c1ddbf2a9d635a7"
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
