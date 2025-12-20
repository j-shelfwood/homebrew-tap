class Yeet < Formula
  desc "Package your codebase for AI consumption in seconds"
  homepage "https://github.com/j-shelfwood/yeet"
  url "https://github.com/j-shelfwood/yeet/releases/download/v1.0.1/yeet"
  version "1.0.1"
  sha256 "63f9da5f1a896aad445c2271492d43f2c41f3c6bbd6de87832e4d0f8bb918700"
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
