class YeetAi < Formula
  desc "Package your codebase for AI consumption in seconds"
  homepage "https://github.com/j-shelfwood/yeet"
  url "https://github.com/j-shelfwood/yeet/releases/download/v1.0.0/yeet"
  version "1.0.0"
  sha256 "56100e0cc405a48a80225b6dfc07344a7cdf0db098d6afdcf4b69c6677e59674"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

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
