class ShroudbChronicle < Formula
  desc "Tamper-evident audit log engine with hash-chained events and analytics"
  homepage "https://github.com/shroudb/shroudb-chronicle"
  version "1.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b0d875e1969010e4955107b9dbb2789c8ba85e4ad2e243f13c4799cf82b84e8b"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "74ba1f0a79871f1c133649b368bdf2916ff7b6206f7a23e665e85dcf58089fc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3756c2bc940ab054405fdbf7cfb0eef5892ba26f241bc3966594f5f9fd9f6ea3"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d55af48bef141ea0552c029aa4f9e8addd9a262e890e2a0f87b77be008b2aee1"
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
