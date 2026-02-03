class Loshell < Formula
  desc "Terminal-native ambient environment for deep focus with lofi radio and pomodoro"
  homepage "https://github.com/arferreira/loshell"
  url "https://github.com/arferreira/loshell/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "175a8e72833d95ff18e9523e7112b047ce1289e996432f372013a8872d839b12"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "loshell", shell_output("#{bin}/loshell --help 2>&1", 1)
  end
end
