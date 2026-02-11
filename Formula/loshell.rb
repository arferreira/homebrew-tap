class Loshell < Formula
  desc "Terminal-native ambient environment for deep focus with lofi radio and pomodoro"
  homepage "https://github.com/arferreira/loshell"
  url "https://github.com/arferreira/loshell/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "2c7a50abb7a309e26405e16d2d6741a71b6e4eb2d9494fb35f67d020f23e587a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "loshell", shell_output("#{bin}/loshell --help 2>&1", 1)
  end
end
