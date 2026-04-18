class ShroudbStash < Formula
  desc "S3-backed encrypted blob storage with fingerprinting and crypto-shred"
  homepage "https://github.com/shroudb/shroudb-stash"
  version "0.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "cfe0fea894a8fb18b9d07d3d192da4bfe4caf9c233797f1a3bc7fd8c0d3c578e"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "58f038ec6dfbc8f02733c1fb0c27f831a81958b4808a46d46f11f77a7e7bba97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "543239f28ecd68116a90ddc7cb86b926791cec7cfedcea44e649b34279837515"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "156341f6e2b8108add27932e962924defcf14e6972d807cb80b78795619b762f"
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
