class ShroudbChronicle < Formula
  desc "Tamper-evident audit log engine with hash-chained events and analytics"
  homepage "https://github.com/shroudb/shroudb-chronicle"
  version "1.13.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4606e8149ce9c7a3aa446fc972a726ce139e38ecc30f454e9b46658c562f54e3"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7bc7f232c14f46e02e8f4bcb45d1aa219aaf63b6307a5d36ba5a82c255f6f3eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "75fd51c0cc65bcad88412dc4d32200957b842609800fd737f414807201975953"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "955e51ac81643c444e15832c5f521f894c6da1f7a716cdc99c0d5f30d5a56a3d"
    end
  end

  def install
    bin.install "shroudb-chronicle"
    bin.install "shroudb-chronicle-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-chronicle --version")
  end
end
