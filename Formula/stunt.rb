# typed: false
# frozen_string_literal: true

class Stunt < Formula
  desc ""
  homepage ""
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.2.0/stunt-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "be51cef8c844024f38415456ea0cce5efadd348e7509bedb3027a2f615d0e32f"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.2.0/stunt-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "cf1fcc2574a6edcf2b7c52ed57ed878a009aa02ca8859e5412bd1a6f1934bfe4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.2.0/stunt-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "412ee0c6efa94cbd3f35594be366078a87d2d5c7c7a812ed7ddae741e776059e"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.2.0/stunt-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a1ce79e3239f0cb740733df2f0bf002406a0b60b3b6bfaee0ac20e048be6e52"
    end
  end

  def install
    bin.install "stunt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stunt --version")
  end
end
