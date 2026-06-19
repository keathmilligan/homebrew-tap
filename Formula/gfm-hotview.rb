# typed: false
# frozen_string_literal: true

class GfmHotview < Formula
  desc ""
  homepage ""
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.1.1/gfm-hotview-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "e92591a8720a0773b4da9a200abab33f100c07394b0fe27668e1f3b32a7857dc"
    else
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.1.1/gfm-hotview-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "c0f4029f6da6f81ec8ae4425f05d7f7b30ef00aea545cefdc09c274b52ef5044"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.1.1/gfm-hotview-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ce9cff47311cc219ec4e4662211270fe4ba24e7770068f81687c65fa2865a2d9"
    else
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.1.1/gfm-hotview-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9914d4c17d60f2310bb005e781c43a22f1358fdd52873b1f3eb9ff82d544211d"
    end
  end

  def install
    bin.install "gfm-hotview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gfm-hotview --version")
  end
end
