class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.6.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.6.0/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "9c764ddc26bc8c05bd3556c2ac9f43161706ed9f9833377a4769be5e39de6ef2"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.6.0/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "4f2f49b4009dc65a9b68405dd4e8fd8d9ef230b618915fa19a57fdd0dcbe2287"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.6.0/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9e8c270a0bccc52ac50d3abdf0e9f2be166fb60af1fdd972994c1d4e7f619652"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
