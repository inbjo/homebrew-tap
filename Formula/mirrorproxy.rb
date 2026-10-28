class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.7.1"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.1/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "743d16fb6b1cffbd87bbd8de74b834834bdc7e2cbdc29e14c9cadd5ba52a965a"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.1/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "4948e0ccfdd817cc22bd086e14f39383f885cd577f9ef63cc58223cb0d1d6ea2"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.7.1/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "21823ae8b460a948ba8f64e0f8cee491077e64bd057d5034f4161678ff6a1627"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
