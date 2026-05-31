# typed: false
# frozen_string_literal: true

class Stunt < Formula
  desc ""
  homepage ""
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.5.0/stunt-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "509cca88d037abaa02f75ad8836d5cdb0504005f48c3fd8ce115ad2b167edd2b"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.5.0/stunt-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "d59d5b6ba81aeb949331f85467fa99d6f111be8357ff6f5632840f83d12d102c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.5.0/stunt-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7bb9d2ad00de49397559dce3f3f70698cf110ce7743aacd06a382abdeceeacf3"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.5.0/stunt-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84ee2f979ddb82ca709f975197d5073c806e70549e14be58a2d7be154affdb19"
    end
  end

  def install
    bin.install "stunt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stunt --version")
  end
end
