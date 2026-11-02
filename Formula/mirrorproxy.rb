class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.7.2"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.2/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "2942bcccd558360f417d613df423ef848f5d733aa10d17baa005d0c75f53db63"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.2/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "fb9464f3229512430e234f102573d37b2ec9c1d0a321655632d728cea3a1b03f"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.2/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "58f817b3f9b71a26d9a7595821dc0eb76ee24e342688fbb0c66b3d8b1840e88d"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
