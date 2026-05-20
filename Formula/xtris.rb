class Xtris < Formula
  desc "A multi-player version of Tetris originally for the X Window System"
  homepage "https://github.com/highfestiva/xtris"
  url "https://github.com/highfestiva/xtris/releases/download/v1.0.0/xtris-macos.tar.gz"
  sha256 "6bc9adb49bc3ec18ca0a96518bdcd6be5ebb24aed91cc04ba32c91c517929b07"
  version "1.0.0"

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
