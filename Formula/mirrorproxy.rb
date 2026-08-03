class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.3.1"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.3.1/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "b30055cd301a2a346cc709da9a27a353902bf197ea524aa9abb3bfd200bc322c"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.3.1/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "d74090b0ce01bad9e71717cc6adf4253285bbbd92eee8eb207f38e8fb4ce8349"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.3.1/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ea6b0bea392167bd44ab9f1d5023bf1d7bd4bbe62292dc6d0b60f0824e1e54be"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
