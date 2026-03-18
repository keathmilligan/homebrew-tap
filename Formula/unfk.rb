# typed: false
# frozen_string_literal: true

class Unfk < Formula
  desc ""
  homepage ""
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.2/unfk-1.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "b8f78e6d3aeb1eb6a244a5aa59586fd4d23c2d2c82f24cabb34efdb4eaa2357b"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.2/unfk-1.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "0987b1736145757a0b2b2fb9e91592b808be7fea53495042c8e96cad211f5c90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.2/unfk-1.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38a1fc2b2eb7232fc3fae6f4986783d80f14f6129ee9a9e5020de05be99358b5"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.2/unfk-1.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d27b46f38af4e540bd37081da4757270991d17ee371c75529303ff5d3c9fb72f"
    end
  end

  def install
    bin.install "unfk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unfk --version")
  end
end
