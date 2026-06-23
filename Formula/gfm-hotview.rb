# typed: false
# frozen_string_literal: true

class GfmHotview < Formula
  desc ""
  homepage ""
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.2.0/gfm-hotview-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "5dedb2b789903f061c3fcc05beda34bc68e0bbba5bd78a719389243afa85b777"
    else
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.2.0/gfm-hotview-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "e36ad89161d6dfba7afa5fda22509e433533a0a6850ea9ee26ddd31a3227df3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.2.0/gfm-hotview-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59665a3ae1eab3d78c3d21578f62bda7dc570dd70ffe11555d27e9bee7d13090"
    else
      url "https://github.com/keathmilligan/gfm-hotview/releases/download/v0.2.0/gfm-hotview-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4e1312874358c45848b612ea95f5fccd0a53be19a63901efc8851d151d3b5be"
    end
  end

  def install
    bin.install "gfm-hotview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gfm-hotview --version")
  end
end
