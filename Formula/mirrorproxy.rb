class Mirrorproxy < Formula
  desc "Standalone source manager for MirrorProxy"
  homepage "https://github.com/inbjo/MirrorProxy"
  version "1.4.4"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.4/mirrorproxy-client-aarch64-apple-darwin.tar.gz"
      sha256 "68907042cd41a609b5e3b3564c72b5f280ea8cc0dccbdf4c7f9dfa384b133fdd"
    else
      url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.4/mirrorproxy-client-x86_64-apple-darwin.tar.gz"
      sha256 "f707c85de35776a23e3ea13bfef21bf3945ec8bade245507b30921f3852a7e07"
    end
  end
  on_linux do
    url "https://github.com/inbjo/MirrorProxy/releases/download/v1.4.4/mirrorproxy-client-x86_64-unknown-linux-musl.tar.gz"
    sha256 "0b4e9e9d9bf7ef1182163d7e7db246576a16f7e440dfa0f6b9bf49ad6656102a"
  end
  def install
    bin.install "mirrorproxy"
  end
  test do
    system "#{bin}/mirrorproxy", "--version"
  end
end
