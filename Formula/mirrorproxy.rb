class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.4.3"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.3/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "9fa3076bdf081b46cedf3f7a5cf22e0d76dc8d9788be95ea985aaa7348616665"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.3/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "80a6021e9ed7362da69273a2196b7626455ef418bf922e1b6905e25069fdabd1"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.3/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "17d83a682e2f507171ff179345c7ffb77c33305d60d99c52e5895aca0b33732e"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
