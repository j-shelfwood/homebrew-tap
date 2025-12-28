class Yeet < Formula
  desc "Package your codebase for AI consumption in seconds"
  homepage "https://github.com/j-shelfwood/yeet"
  url "https://github.com/j-shelfwood/yeet/releases/download/v1.2.1/yeet"
  version "1.2.1"
  sha256 "2f03c259d78a9dce880cd47abd6f733ae836b8fd583c558d942cdf4d43b4eab5"
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
