class Loshell < Formula
  desc "Terminal-native ambient environment for deep focus with lofi radio and pomodoro"
  homepage "https://github.com/arferreira/loshell"
  url "https://github.com/arferreira/loshell/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "d07b9fef6014f7905c19321940c05637a67d767101ec09b32c66cf6a39bb5252"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "loshell", shell_output("#{bin}/loshell --help 2>&1", 1)
  end
end
