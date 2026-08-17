class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.3.2"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.3.2/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "fe6359fbdcfc896ed66ff4eebf960a3973b84fdc4199574bffe08cc6ebadcee2"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.3.2/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "40b4eb49eaca7c8b9772f3e370d02433d1a6ed908ee083438905eb57fefdec97"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.3.2/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b5e99814c69255d85e207214b1e601ce69125057b646ac7d2f87333d3acb0671"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
