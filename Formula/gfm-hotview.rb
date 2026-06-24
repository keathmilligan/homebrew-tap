# typed: false
# frozen_string_literal: true

class GfmHotview < Formula
  desc ""
  homepage ""
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.2.1/gfm-hotview-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "1ad123d56ac9d80e2bbb0da888cc19c96c31cc8fe020b2dd22f57a4770064b7a"
    else
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.2.1/gfm-hotview-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "87c89f31ee11c34e2cdd6c6a6ff6edcef5886b70600d77d9a092528e914c452f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.2.1/gfm-hotview-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a0154644133e038d9c9b73469ab5270fa2012f177bde1cb07c5745d86079540"
    else
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.2.1/gfm-hotview-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd4937cb7155c3085a75967b3a401985ff5a9db1ef6b8ae590e6eef95727905b"
    end
  end

  def install
    bin.install "gfm-hotview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gfm-hotview --version")
  end
end
