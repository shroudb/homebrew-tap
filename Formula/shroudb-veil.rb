class ShroudbVeil < Formula
  desc "Encrypted search engine with blind indexing over E2EE data"
  homepage "https://github.com/shroudb/shroudb-veil"
  version "1.8.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7af9ae3a962b72ba580117f035ab06e18d255d222d2820ff6a1c3e21839059ba"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e2c7f1b6e08e8c79245482685fd0b03461ae932081fa23023c503e31fba90e95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5c5504e4eaf02342d0b1f1ecb5bc75982f6748fcdff35487fb55afe46ac0cd8"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec9b77b19b60cb00ebe0d144139a75a88fd3c2927e1b6329e028bedd48956c72"
    end
  end

  def install
    bin.install "shroudb-veil"
    bin.install "shroudb-veil-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-veil --version")
  end
end
