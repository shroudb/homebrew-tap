class ShroudbVeil < Formula
  desc "Encrypted search engine with blind indexing over E2EE data"
  homepage "https://github.com/shroudb/shroudb-veil"
  version "1.7.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "251c9f5c13b23c9caf0137d2aeaef02abc7415134bb30b424dbf7c7c46ca8c6c"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9601861263aad5cde8bff062463f3d4b16144b990eb2674ead06e95d44dbd31d"
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
