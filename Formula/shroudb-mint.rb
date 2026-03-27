class ShroudbMint < Formula
  desc "Lightweight internal Certificate Authority for short-lived TLS certificates"
  homepage "https://github.com/shroudb/shroudb-mint"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-mint/releases/download/v#{version}/shroudb-mint-v#{version}-x86_64-apple-darwin.tar.gz"
      # sha256 will be filled after release artifacts are built
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-mint/releases/download/v#{version}/shroudb-mint-v#{version}-aarch64-apple-darwin.tar.gz"
      # sha256 will be filled after release artifacts are built
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-mint/releases/download/v#{version}/shroudb-mint-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      # sha256 will be filled after release artifacts are built
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-mint/releases/download/v#{version}/shroudb-mint-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      # sha256 will be filled after release artifacts are built
    end
  end

  def install
    bin.install "shroudb-mint"
    bin.install "shroudb-mint-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-mint --version")
  end
end
