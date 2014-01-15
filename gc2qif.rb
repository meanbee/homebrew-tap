require 'formula'

class Gc2qif < Formula
  homepage 'https://github.com/punkstar/gc2qif'

  url 'https://github.com/punkstar/gc2qif/archive/v1.0.0.tar.gz'
  sha1 'bc15e1578037e412b376b186640e81c6ccbd4632'
  version '1.0.0'

  head 'https://github.com/punkstar/gc2qif.git'

  def install
    bin.install "gc2qif"
  end
end
