class Yeet < Formula
  desc "Package your codebase for AI consumption in seconds"
  homepage "https://github.com/j-shelfwood/yeet"
  url "https://github.com/j-shelfwood/yeet/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "bf447c388d1fda0f87661ee63b491b4443f5df8cfcf8074916bc7d8c9d5cc95f"
  license "MIT"
  head "https://github.com/j-shelfwood/yeet.git", branch: "main"

  depends_on :macos
  depends_on xcode: ["14.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/yeet"
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
