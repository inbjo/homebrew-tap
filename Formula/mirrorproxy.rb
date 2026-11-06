class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.7.3"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.3/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "7dbae81732c5ca99c95ab84c79362bc9b82927fd394654fb39f2cc77cf0b47f7"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.3/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "a0695b46edb903e23d4f57fa72f97099c1e05acbba1e4733a48b87d99601843f"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.3/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b3857b8266eaf78a6316529f7070b58c2fbb0802faf4029e34c37737d9b829fc"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
