class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.8.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.8.0/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "8d8074a1c3d6990c79b1248c82c890d43a9a5ac6141d33d154e4bc750ff649f6"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.8.0/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "06ed0317ae3f4c6dd982a83a736fae37a03462c799941d82a7109f5cf7af489f"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.8.0/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ebc788b6f74040002204e46cfd2aa563e6a07daab06ab2ef66efe1e163ba5eb0"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
