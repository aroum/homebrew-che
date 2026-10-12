class Che < Formula
  desc "Dual-pane terminal file manager written in Rust"
  homepage "https://github.com/aroum/che"
  version "26.8.28"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aroum/che/releases/download/v26.8.28/che-v26.8.28-aarch64-apple-darwin.zip"
    sha256 "ce63bba7a8bf80a30ed03de5bf47e2d525772743d90ca5b901928fbe62bb93fc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/aroum/che/releases/download/v26.8.28/che-v26.8.28-x86_64-apple-darwin.zip"
    sha256 "14dc882a43fe3440f2ad4a4fc31a76ddb3f8786fe3c6a22dadc4ba9e5f3af666"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/aroum/che/releases/download/v26.8.28/che-v26.8.28-aarch64-unknown-linux-gnu.zip"
    sha256 "495f9f0f286d8ccbb77ee65f15e106320bf7fc03a4183db24f1cfd1444ae9adc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/aroum/che/releases/download/v26.8.28/che-v26.8.28-x86_64-unknown-linux-gnu.zip"
    sha256 "15296724cbc6bde3b2b6f65d4ff69587759d2788cde3473050fc9fe319b36ce5"
  end

  def install
    bin.install "che"
    bin.install "ch"
  end

  test do
    system "#{bin}/che", "--version"
  end
end
