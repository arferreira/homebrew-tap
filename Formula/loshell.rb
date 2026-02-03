class Loshell < Formula
  desc "Terminal-native ambient environment for deep focus with lofi radio and pomodoro"
  homepage "https://github.com/arferreira/loshell"
  url "https://github.com/arferreira/loshell/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ec836348b98c84eda0363da0e8550cf7e6b5c957a67f4bc18f26cc29325e2e10"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "loshell", shell_output("#{bin}/loshell --help 2>&1", 1)
  end
end
