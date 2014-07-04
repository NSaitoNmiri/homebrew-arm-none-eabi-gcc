require 'formula'

class ArmNoneEabiGccCodesourcery2010q1 < Formula
  homepage 'http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/'
  version '2010q1-188'
  url 'http://static.leaflabs.com/pub/codesourcery/arm-2010q1-188-arm-none-eabi-toolchain-macosx32.tar.gz'
  sha1 'adf9ca424d9ac5f6ecd67d013332e4b0ffbd0cf5'

  keg-only

  def install 
    ohai 'Copying binaries...'
    ohai 'This package is a keg_only package.'
    ohai 'To use this package, other gcc compiler packages for ARM processor should be unlinked so that this package can be linked.'

    ohai '(e.g.) $ brew unlink arm-none-eabi-gcc47'
    ohai '$ brew link arm-none-eabi-gcc-codesourcery-2010q1'

    prefix.install Dir["arm/*"]
#    system 'cp', '-rv', 'arm-none-eabi', 'bin', 'lib', 'share', "#{prefix}/"
  end
end
