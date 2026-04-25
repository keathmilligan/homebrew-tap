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
      sha256 "4028db39361171ae6d8e7b0af5fddbec30d3becaeb67899411643a983f964c58"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.1/unfk-1.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "3c33f1e2731b5ab1836c1304d435e321436d8f070f58918e616e385a81f3475b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.1/unfk-1.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69bd76c63df81af638e65714710465cdef430c2b230f465ad83159e2f8ed697a"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.1/unfk-1.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b70c5d1a4d0951db4409476f454891359830a6fae51a24d92d429f626eac47ed"
    end
  end

  def install
    bin.install "unfk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unfk --version")
  end
end
