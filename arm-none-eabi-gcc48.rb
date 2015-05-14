require 'formula'

class ArmNoneEabiGcc48 < Formula
  homepage 'https://launchpad.net/gcc-arm-embdded'
  version '20140930'
  url 'https://launchpad.net/gcc-arm-embedded/4.8/4.8-2014-q3-update/+download/gcc-arm-none-eabi-4_8-2014q3-20140805-mac.tar.bz2'
  sha1 'da07fd4edc09da8748b3a61252eed793059c138f'
  keg_only "To use this package, other gcc compiler packages for ARM processor should be unlinked so that this package can be linked."

  def install 
    ohai 'Copying binaries...'
    system 'cp', '-a', 'arm-none-eabi', 'bin', 'lib', 'share', "#{prefix}/"
  end
end
