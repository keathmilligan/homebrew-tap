# typed: false
# frozen_string_literal: true

class Stunt < Formula
  desc ""
  homepage ""
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.5.1/stunt-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "626c1f1659953885c84011f1ac2bc263e8945e5407580128a0f87476356bad06"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.5.1/stunt-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "2ee1d9f021d04fea23db7866aa303f688f07f59dda3e419e7116afc3a1ef42a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.5.1/stunt-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0078b6fbdcb73fdb54b365d25294c772105aeb661d94e7f94fdbcfe9f31ef991"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.5.1/stunt-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a4c0c32c97f1b36fafbaaadf5210ac1983f402e837d6024ed3037e5ed428ce7"
    end
  end

  def install
    bin.install "stunt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stunt --version")
  end
end
