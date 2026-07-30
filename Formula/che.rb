class Che < Formula
  desc "Dual-pane terminal file manager written in Rust"
  homepage "https://github.com/aroum/che"
  version "0.2.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aroum/che/releases/download/v0.2.0/che-v0.2.0-x86_64-apple-darwin.zip"
    sha256 "d39eb5d4c3641cd991a33a1bfab0401ddea78e61775aae811862347e5cf7b90c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/aroum/che/releases/download/v0.1.0/che-v0.1.0-x86_64-apple-darwin.zip"
    sha256 "864bd1024d419fd665950860b1a3d21f096b08fce72a036da1af193d4a4b49da"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/aroum/che/releases/download/v0.1.0/che-v0.1.0-aarch64-unknown-linux-gnu.zip"
    sha256 "ec71d358de3f5c5a12f4d93e86760360721c896cbfb08d7fe3b5825448440070"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/aroum/che/releases/download/v0.1.0/che-v0.1.0-x86_64-unknown-linux-gnu.zip"
    sha256 "b5454c8268a3b02c5f337af08a858473c71b43be52225201dc1ddca77395c0eb"
  end

  def install
    bin.install "che"
    bin.install "ch"
  end

  test do
    system "#{bin}/che", "--version"
  end
end
