class Tinyscheme < Formula
  desc "Scheme interpreter in one file of C"
  homepage "https://tinyscheme.sourceforge.io/"
  url "https://files.scheme.org/tinyscheme-1.42.tar.gz"
  sha256 "17b0b1bffd22f3d49d5833e22a120b339039d2cfda0b46d6fc51dd2f01b407ad"
  license "BSD-4-Clause"

  patch do
    url "https://raw.githubusercontent.com/lassik/homebrew-scheme/master/patches/tinyscheme-1.42-macos.patch"
    sha256 "5cba7b1163539007cababf3980a2ce10f8233718ed181162a56864f67257b391"
  end

  def install
    system "make", "INITFILE=#{share}/tinyscheme/init.scm"
    bin.install "scheme" => "tinyscheme"
    mkdir "#{share}/tinyscheme"
    share.install "init.scm" => "tinyscheme/init.scm"
  end
end
