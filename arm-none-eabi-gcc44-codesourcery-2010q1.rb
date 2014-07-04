require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class ArmNoneEabiGcc44Codesourcery2010q1 < Formula
  homepage "http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/"
  url "http://static.leaflabs.com/pub/codesourcery/arm-2010q1-188-arm-none-eabi-toolchain-macosx32.tar.gz"
  sha1 "adf9ca424d9ac5f6ecd67d013332e4b0ffbd0cf5"
  version '2010q1-188'

  keg_only ""

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    ohai 'Copying binaries...'
    ohai 'To use this package, other gcc compiler packages for ARM processor should be unlinked so that this package can be linked.'
    ohai '(e.g.) $ brew unlink arm-none-eabi-gcc47'
    ohai '       $ brew link arm-none-eabi-gcc44-codesourcery-2010q1 --force'

    system 'cp', '-rv', 'arm-none-eabi', 'bin', 'lib', 'libexec', "#{prefix}/"

  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test arm-2010q1-188-arm-none-eabi-toolchain-macosx`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
