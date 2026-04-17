class ShroudbStash < Formula
  desc "S3-backed encrypted blob storage with fingerprinting and crypto-shred"
  homepage "https://github.com/shroudb/shroudb-stash"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5ffd5e512fb8de22394cadd1921d079bf8ae581d91d87e78893396c9e63a4b7a"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "23ab8622838d95bc719c6eb2ff9ff2d0f1733b157a76c6149d4d797f651b190e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e550e93c57ff47c53a68423be0b4397ecf411c1a0bca0859a1c4b8689b1aba58"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-stash/releases/download/v#{version}/shroudb-stash-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1fdc3610cb1f574213b242fe7b130c4521e2a5a4bbba2bcefeff5f250ea32776"
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
