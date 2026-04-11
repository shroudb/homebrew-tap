class ShroudbStash < Formula
  desc "S3-backed encrypted blob storage with fingerprinting and crypto-shred"
  homepage "https://github.com/shroudb/shroudb-stash"
  version "0.4.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "84ef420a215d63a33fe28ea8087feba7f3a6197bc2c9a0ba72572dff906aa265"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "19698612136dd02ee55983938ed790f55dccfd986e989595e24cfd650cc23c26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4dc8833ed56370f080880383dc1d390dce2dc0dd3c0504aa08171ba57dcbfed2"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e43ddb8cff4933c282d628b7d017561e88cd163e596150afa1ca470959265b97"
    end
  end

  def install
    bin.install "shroudb-stash"
    bin.install "shroudb-stash-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-stash --version")
  end
end
