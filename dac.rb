require 'formula'

class Dac < Formula
  homepage 'https://github.com/shawesome/dac'
  url 'http://cdn.meanbee.com/brew/dac/dac-12907ab10b72143c2f296f158ac6a38aa6958b47.tar.gz'
  sha256 'cb5ffcd82bb1c03db611db63d6156ce03f68816efa7ddd5902c97372a1056b9f'

  def install
    bin.install "dac"
  end
end
