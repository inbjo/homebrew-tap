class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.4.2"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.2/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "033fad58edc91f39a244f55fce8ecbd357284ec834e555d8b0015f61f82b5dad"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.2/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "4a24bc5f6144a5c75e9b53d963512436a72e296a15ca45e5faa1fc250c0f339a"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.2/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "8c5f8054fef89fff23584d4a658cd247060de03c7123b5229a3db87154a39c74"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
