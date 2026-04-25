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
      sha256 "2f37e7d35635fec3560b411816c85852751dfaf575e233f3964ed4b126e83076"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.2/unfk-1.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "649e3898d439a78cc176f79c88749b3c3e3c61d403d7a14af8830bccc5dd74bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.2/unfk-1.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c1ff94d153b99d004458290d3d76f187e26c29fe54a923cfad1370b9ccc7d2f"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.2/unfk-1.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a33fdafeda06d6f23950bf32d2eec6d5bd4f47d2a2cf6b8bd6e50e073c2e2a9"
    end
  end

  def install
    bin.install "unfk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unfk --version")
  end
end
