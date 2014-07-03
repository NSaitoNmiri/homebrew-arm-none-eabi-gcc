require 'formula'

class ArmNoneEabiGcc47 < Formula
  homepage 'https://launchpad.net/gcc-arm-embdded'
  version '20140429'
  url 'https://launchpad.net/gcc-arm-embedded/4.7/4.7-2014-q2-update/+download/gcc-arm-none-eabi-4_7-2014q2-20140408-mac.tar.bz2'
  sha1 '7b15f1f27e4801d1b4fed8b1a90e7481e11fd7a2'

  def install 
    ohai 'Copying binaries...'
    system 'cp', '-rv', 'arm-none-eabi', 'bin', 'lib', 'share', "#{prefix}/"
  end
end
