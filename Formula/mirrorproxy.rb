class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.4.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.0/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "281aaac40f57865ec0a974217046ff837351eeb31b400d12dfe5a107366bae74"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.0/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "e83d2a5465934d3d7baf318ab4d0604258aa6202e9f7ee0ee77dc130f780adec"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.0/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6a7d40d00a889b9e5afebd0679872e9780f70a572767e2b3ebc786aac7330d5a"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
