class Che < Formula
  desc "Dual-pane terminal file manager written in Rust"
  homepage "https://github.com/aroum/che"
  version "0.2.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aroum/che/releases/download/v0.2.0/che-v0.2.0-aarch64-apple-darwin.zip"
    sha256 "3a8a83e3f13d468fd4c3b4a5c0e541540b3aefae5cd8657b6b6e2f666ff009dc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/aroum/che/releases/download/v0.2.0/che-v0.2.0-x86_64-apple-darwin.zip"
    sha256 "b6f53e24a666f0eb34a16ca5a8349a590b419e21b61c0a8b471587e95a9f5370"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/aroum/che/releases/download/v0.2.0/che-v0.2.0-aarch64-unknown-linux-gnu.zip"
    sha256 "9a490b7b006fb0e8dde7985c62b1fbaf62a17612610531d2a4fcddfec1bb65f3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/aroum/che/releases/download/v0.2.0/che-v0.2.0-x86_64-unknown-linux-gnu.zip"
    sha256 "3157d1df2186076f81ab96eb0f7df2201827ea65e93e65ac50ddb379115745ac"
  end

  def install
    bin.install "che"
    bin.install "ch"
  end

  test do
    system "#{bin}/che", "--version"
  end
end
