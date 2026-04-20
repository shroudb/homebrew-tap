class ShroudbVeil < Formula
  desc "Encrypted search engine with blind indexing over E2EE data"
  homepage "https://github.com/shroudb/shroudb-veil"
  version "1.9.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9823c10cb7738ef4abe44b2bc8d472bf1ceca0ace888bf2b37fdfbe1b3e43b1b"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "93e26d327dc0a29bce18797353d2458d091c7113b2512dc51f9f602e0f04dd34"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5e8ecfc25587222b816597fd9126fc47041f1b2d3399c5c422b91301396b832"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e7d047f11e5397dc96ff866eb8af3bfc4f2cd356c3b15d3d3dba933bd889adab"
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
