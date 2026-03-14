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
      sha256 "7d604fad36524e45cd3d14c18f966f10b22cbd58597b0112f0f5e5dba160d666"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.0/unfk-1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "08f7bd0488a508cecf37d7ff53bd5c2fc080c5255e2c24d9864059bc2bad9f39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.0/unfk-1.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "225a04bf305f8cf39c6516cb471cbfc53c6a435a03728aa262c0e07c69aa190d"
    else
      url "https://github.com/keathmilligan/unfk/releases/download/v1.3.0/unfk-1.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75f492fc5c19f3b5b89a9484e017148ab9932501c703801c0267d55941d8563f"
    end
  end

  def install
    bin.install "unfk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unfk --version")
  end
end
