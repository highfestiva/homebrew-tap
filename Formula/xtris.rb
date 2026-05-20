class Xtris < Formula
  desc "A multi-player version of Tetris originally for the X Window System"
  homepage "https://github.com/highfestiva/xtris"
  url "https://github.com/highfestiva/xtris/releases/download/v1.0.1/xtris-macos.tar.gz"
  sha256 "98cc843386bb790e5fcaffcf4fb55bdeb4a78d86333bdbf1017e7886788b98dd"
  version "1.0.1"

  def install
    # Install the binaries
    bin.install "xtris"
    bin.install "xtserv"
    bin.install "xtbot"
    
    # Install documentation
    doc.install "README.md"
    doc.install "LICENSE"
  end

  test do
    system "#{bin}/xtris", "-v"
  end
end
