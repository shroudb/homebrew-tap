class ShroudbStash < Formula
  desc "S3-backed encrypted blob storage with fingerprinting and crypto-shred"
  homepage "https://github.com/shroudb/shroudb-stash"
  version "0.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "59ed43dfa823f56ac41ac9cb5399d0462154497f19bb3a6979278e862c849b22"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "15baf2818bfb07111fcce1a9e963af20077c482b978a4324511a453a8023145c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89692fef50efe44f5c42007ac7aa56127e98de89690738f5025ebb6463c49d59"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c88720df48b1b24367fb39ab3abf64f7bd63de96e9c1de0f7d02bfbc5b9a61ea"
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
