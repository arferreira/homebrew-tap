class Loshell < Formula
  desc "Terminal-native ambient environment for deep focus with lofi radio and pomodoro"
  homepage "https://github.com/arferreira/loshell"
  url "https://github.com/arferreira/loshell/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "deaf12b2f805c325c5592a11711fb62ba8742b8b35c7524e9f1c3bb69c05b341"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "loshell", shell_output("#{bin}/loshell --help 2>&1", 1)
  end
end
