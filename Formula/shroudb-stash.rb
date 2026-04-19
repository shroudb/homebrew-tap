class ShroudbStash < Formula
  desc "S3-backed encrypted blob storage with fingerprinting and crypto-shred"
  homepage "https://github.com/shroudb/shroudb-stash"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "70e41235391de031769e984d0d066853cca5ae3a68134057279e7fb9ad0a9322"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2de181efd75dbed62be5d3c5a582512d27675b39b4643ea88e9f7a3d1854e639"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b76ccfab65d1d676c38210575196e6255ec7c227eb94901e04b7be8fe921b353"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b93542a8f6e779ea59635b2b9e5168a57185b5a5734f1d232256ab798c2a231"
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
