class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.5.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.5.0/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "ed1e610c51029e08df8ad3a653ddb83f22f8c9d3ef378ad1f1b239b09bc35691"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.5.0/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "6cf9b101d067d06fad0d18ada1d482283d9eb6b03d496d6029c9b2ae5c7c2b5c"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.5.0/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a03e01bbb6501465c356d53971cfb64a15e8c30e9e5a6e6bbd47f9c01a3090a3"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
