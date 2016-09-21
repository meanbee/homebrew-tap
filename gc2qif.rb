require 'formula'

class Gc2qif < Formula
  homepage 'https://github.com/punkstar/gc2qif'

  url 'https://github.com/punkstar/gc2qif/archive/v1.0.0.tar.gz'
  sha256 'e5e5cd18b1d37d0f0e2e0824349f78e7c514146513e74fffd78a038153fe8739'
  version '1.0.0'

  head 'https://github.com/punkstar/gc2qif.git'

  def install
    bin.install "gc2qif"
  end
end
