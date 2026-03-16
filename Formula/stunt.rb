# typed: false
# frozen_string_literal: true

class Stunt < Formula
  desc ""
  homepage ""
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.1.4/stunt-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "a352cca5d90eb2fae90b772acba22397b764dd74c25c7008c613e4474b2c4744"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.1.4/stunt-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "3c6adc44bd9e1360993b860b92afe0003b83c617846cabc196e1a14c18732f0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.1.4/stunt-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de7e4a0901719b0064216ea8cb2e02944d38d747ef220b04c42ed122f60ad97f"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.1.4/stunt-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7b65c20df7f09a5444fe0024500762e16fbf1f55852566ddea6935de8c1c479"
    end
  end

  def install
    bin.install "stunt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stunt --version")
  end
end
