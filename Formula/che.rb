class Che < Formula
  desc "Dual-pane terminal file manager written in Rust"
  homepage "https://github.com/aroum/che"
  version "26.8.15"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aroum/che/releases/download/v26.8.15/che-v26.8.15-x86_64-apple-darwin.zip"
    sha256 "cf1a54299a199d74e17ee5132659bf8cd960882401f588688e11863b09b08f5b"
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
