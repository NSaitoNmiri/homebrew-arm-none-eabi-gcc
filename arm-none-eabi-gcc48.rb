require 'formula'

class ArmNoneEabiGcc48 < Formula
  homepage 'https://launchpad.net/gcc-arm-embdded'
  version '20140609'
  url 'https://launchpad.net/gcc-arm-embedded/4.8/4.8-2014-q2-update/+download/gcc-arm-none-eabi-4_8-2014q2-20140609-mac.tar.bz2'
  sha1 '751895b7c967dcc964b98c86f06198a3457a859e'

  keg_only ""

  def install 
    ohai 'Copying binaries...'
    ohai 'To use this package, other gcc compiler packages for ARM processor should be unlinked so that this package can be linked.'
    ohai '(e.g.) $ brew unlink arm-none-eabi-gcc47'
    ohai '       $ brew link arm-none-eabi-gcc48 --force'

    system 'cp', '-rv', 'arm-none-eabi', 'bin', 'lib', 'share', "#{prefix}/"
  end
end
