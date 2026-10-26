class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.7.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.0/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "8020d8eaa43d4080ed4482082204dc60ae185c59d15caeb1ec9185aa7f6ab641"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.0/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "4ea80c42d8e147e44f2bcea25c1156aa4160b869aa44019c29061c44cba314a8"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.0/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "48a590058ea7a19c355f310804f38dbfbfd7df51c54ecf866fcbe02f454b7b8d"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
