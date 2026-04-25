# typed: false
# frozen_string_literal: true

class Stunt < Formula
  desc ""
  homepage ""
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.3.1/stunt-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "29a67b7a2e58d8432893869c94bc9f721732e8c2bf1fa43655ccd50eb2958511"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.3.1/stunt-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "c073d94d3a882dc5c929fb836b8da614819f04c14d46a018a4dc941f970bb8e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.3.1/stunt-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4e26d132ec81cf60197ac1c27cf9b69dc0ad044d0b24860c74e14186703967c"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.3.1/stunt-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a4bcb5ab31ac8e7954ad34e73417a10c019402bdf07139f950206a86c4c3ba8"
    end
  end

  def install
    bin.install "stunt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stunt --version")
  end
end
