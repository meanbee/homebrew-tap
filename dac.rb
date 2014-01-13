require 'formula'

class Dac < Formula
  homepage 'https://github.com/shawesome/dac'
  url 'http://cdn.meanbee.com/brew/dac/dac-12907ab10b72143c2f296f158ac6a38aa6958b47.tar.gz'
  sha1 'd91b2393d31ec1b6606ad3d9fc7a0bf1c8d25b5f'

  def install
    bin.install "dac"
  end
end
