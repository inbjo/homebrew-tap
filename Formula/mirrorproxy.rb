class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.3.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.3.0/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "d78e1d3da1787eb4a2a845b97e7f223b8d9e8831c7b1e159f9bf6f8ffe712d52"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.3.0/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "c420c19ee711e5327f8fe22b90a889d015e30256818a240e6eb54aabf16b82fa"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.3.0/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ea667b2e9652f13855837302303def186e91eefd0f6eace98fd7b21ce110bc61"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
