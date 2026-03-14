# typed: false
# frozen_string_literal: true

class Unfk < Formula
  desc ""
  homepage ""
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.1/unfk-1.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "892ad07817adba8a4ba7026d7000ea8fede786bb1c607d064b6f56aae4cc4fca"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.1/unfk-1.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "9e6c22e6e1a4f01a5a586f11d3fa951a6008cbefd495d655a0b83d5c43494604"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.1/unfk-1.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83f61b07940ef42bc8d552ed85817a1c3463cd8e6e4e77dd5f4fa79d005e7e5f"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.1/unfk-1.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3db5a0e26882ada0767422acc3a392de75cefe3dcad2732eb6e523c59d927faf"
    end
  end

  def install
    bin.install "unfk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unfk --version")
  end
end
