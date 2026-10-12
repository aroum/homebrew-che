class Che < Formula
  desc "Dual-pane terminal file manager written in Rust"
  homepage "https://github.com/aroum/che"
  version "26.10.12"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aroum/che/releases/download/v26.10.12/che-v26.10.12-aarch64-apple-darwin.zip"
    sha256 "8061b64ae58743d26a4103f6f807cb21fef52bada5b27cc8a8f7feae347ac2c7"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/aroum/che/releases/download/v26.10.12/che-v26.10.12-x86_64-apple-darwin.zip"
    sha256 "a9a0e5bbebbd5d5c4aaa637f2f1172d77004f4f631d84cbe64cbad75b1c1e7bd"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/aroum/che/releases/download/v26.10.12/che-v26.10.12-aarch64-unknown-linux-gnu.zip"
    sha256 "c514cdb6dde99618e897df78f6422401c114aec3635b0f966fd872736fdc331d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/aroum/che/releases/download/v26.10.12/che-v26.10.12-x86_64-unknown-linux-gnu.zip"
    sha256 "2183abdfe8fe292bedcfe133e0fcc13219ad1f29bf8d9e7b47cd6c2840c274f7"
  end

  def install
    bin.install "che"
    bin.install "ch"
  end

  test do
    system "#{bin}/che", "--version"
  end
end
