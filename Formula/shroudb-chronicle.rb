class ShroudbChronicle < Formula
  desc "Tamper-evident audit log engine with hash-chained events and analytics"
  homepage "https://github.com/shroudb/shroudb-chronicle"
  version "1.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "357b4d831e145184bd4e9ead84af531268a5a870825d36200af5cea067d5971c"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c892251d2255b94a3efabc7af5023a4a6df5d6b6f917f92161c6ef4e55ef3c24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7abf33aacc2beb92df0c2ffa9a4338cef07770f92101576294d4908c9000fb8"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f79615992536845abbf03ae4c55272d04a136b4e59c3db6462ea1ba1ea1d7d67"
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
