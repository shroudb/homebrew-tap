class ShroudbSigil < Formula
  desc "Credential envelope engine with encrypted PII storage"
  homepage "https://github.com/shroudb/shroudb-sigil"
  version "2.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "dc1dea59d9917a2a5285b0e8984d997cbd871f318ee33b7cd5e4e85c54613555"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a92cbcc24d79ca6dd20646a558f3ce152101561191f959bac16864b93960894f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4fef636587d0d10b0358e6ecde8a060ca428053abeee9e71195092bb0cb9235f"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0bc3d9a0e147c9c094b3ff1949ec9de8e10da430a3e39bae5b7a7d36cf46de09"
    end
  end

  def install
    bin.install "shroudb-sigil"
    bin.install "shroudb-sigil-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-sigil --version")
  end
end
