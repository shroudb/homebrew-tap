class ShroudbPulse < Formula
  desc "Unified observability — audit log aggregation, event queries, derived signals"
  homepage "https://github.com/shroudb/shroudb-pulse"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-pulse/releases/download/v#{version}/shroudb-pulse-v#{version}-x86_64-apple-darwin.tar.gz"
      # sha256 will be filled after release artifacts are built
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-pulse/releases/download/v#{version}/shroudb-pulse-v#{version}-aarch64-apple-darwin.tar.gz"
      # sha256 will be filled after release artifacts are built
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-pulse/releases/download/v#{version}/shroudb-pulse-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      # sha256 will be filled after release artifacts are built
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-pulse/releases/download/v#{version}/shroudb-pulse-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      # sha256 will be filled after release artifacts are built
    end
  end

  def install
    bin.install "shroudb-pulse"
    bin.install "shroudb-pulse-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-pulse --version")
  end
end
