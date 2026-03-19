# typed: false
# frozen_string_literal: true

class Unfk < Formula
  desc ""
  homepage ""
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.0/unfk-1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa77809666ab40b8edb64c94f0ddf20196ef8276ba225052c3fb092050f3e3b2"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.0/unfk-1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "828ca5889bb55b4c0c7d47af09a57d3cd6751a3711244f264551672b05c88a8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.0/unfk-1.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b4bdf3696f309f157532284a16205a746c7e9f89df5ee7b9e105716f2569da3"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.0/unfk-1.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0779fbd6a09d1780c53a9058fc62d157a1584bb72baf9a8e815852f7227b1a8"
    end
  end

  def install
    bin.install "unfk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unfk --version")
  end
end
