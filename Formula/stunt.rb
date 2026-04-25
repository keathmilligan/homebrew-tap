# typed: false
# frozen_string_literal: true

class Stunt < Formula
  desc ""
  homepage ""
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.4.0/stunt-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "a772dcf3351e7cd98070d18b69fcd38c9694ee060d29da8923ed142cf03a49ca"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.4.0/stunt-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "94f9d7dccc6d6cb0e9bd949ae1ce278fb4712ed405d0c6c217d7d739e8b10c5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keathmilligan/stunt/releases/download/v0.4.0/stunt-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "729a4a00effd0a860c98cb594298b70c1a9bdee7efed0b391e8fa270f9823834"
    else
      url "https://github.com/keathmilligan/stunt/releases/download/v0.4.0/stunt-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7805af6ce33f1fea098d8ce0b23527c6f6bdcd1fc47122aa475df31d0a0f07bf"
    end
  end

  def install
    bin.install "stunt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stunt --version")
  end
end
