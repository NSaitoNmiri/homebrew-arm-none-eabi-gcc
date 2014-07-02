require 'formula'

class ArmNoneEabiGcc48 < Formula
  homepage 'https://launchpad.net/gcc-arm-embdded'
  version '20140609'
  url 'https://launchpad.net/gcc-arm-embedded/4.8/4.8-2014-q2-update/+download/gcc-arm-none-eabi-4_8-2014q2-20140609-mac.tar.bz2'
  md5 '4a05e26d9eb30f43752667a34001e755'

  def install 
    ohai 'Copying binaries...'
    system 'cp', '-rv', 'arm-none-eabi', 'bin', 'lib', 'share', "#{prefix}/"
  end
end
