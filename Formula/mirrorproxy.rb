class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.7.2"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.2/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "dea1f046c05c555dfe72bdeaa65a056f37c53b7bab68b297c060ab370c77da86"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.2/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "231c81187f339138caa5292b7b54670ec8b3f0603bfe3710efddd05e5346ed60"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.2/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "c997bde7aa8c9b9bcac9c730985bbffe6dc6e8f92ad7cae5a54a183ded3edd26"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
