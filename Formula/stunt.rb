# typed: false
# frozen_string_literal: true

class Stunt < Formula
  desc ""
  homepage ""
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.3.0/stunt-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "7ca60102a76c82cc8153139d6af07763b19fb080ba4669cd6520c094410a166a"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.3.0/stunt-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "aa5a019412ac6fcd7b03e03ea819497a66921802cad068ff7c22089b04daf9b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.3.0/stunt-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e9a9146b9c4105a774c425ab29475f31a2556435e9e99567886fd4cb1fe66ce"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.3.0/stunt-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2ffb44f927324e2f6a66b2ace7b29e196dce2f141f9c06cd072c760fa29fa27"
    end
  end

  def install
    bin.install "stunt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stunt --version")
  end
end
