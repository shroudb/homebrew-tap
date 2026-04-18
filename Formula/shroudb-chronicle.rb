class ShroudbChronicle < Formula
  desc "Tamper-evident audit log engine with hash-chained events and analytics"
  homepage "https://github.com/shroudb/shroudb-chronicle"
  version "1.11.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4aa039c1c9147360ea4ea32990801c850b71750d2c0e3b3cca2a1b3157e72382"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f95aa57f06c07e57bcfa7a66dfe222cfb5ddf54c80591173ab325904c28ca44f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7daa8a8aa13820bb060cafd1475977a0236016a2a13e7fa1efa381546635979b"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e29338fe0529651bf255cb9426ff6ec254035200d56c586c8c2d9458e161d09"
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
