class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.4.1"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.1/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "3cbc45720d400df4fa9f51843aab98cf7d820614c25d29c68c5433e317bd8a58"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.1/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "9fec586dca1c876b72d171572a6f6c135edda3c6ff7be24cd9da472ce89fb995"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.1/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "25a1b7431233d05d41bff657bb4ef7fb5efc10c9032be9db3517bf85305ac265"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
