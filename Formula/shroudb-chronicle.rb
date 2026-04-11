class ShroudbChronicle < Formula
  desc "Tamper-evident audit log engine with hash-chained events and analytics"
  homepage "https://github.com/shroudb/shroudb-chronicle"
  version "1.7.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6fd4ea6fcde60eb4960f982820ce569030bf6c295c5f4d69e1ec30b40eead02"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-chronicle/releases/download/v#{version}/shroudb-chronicle-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "80983b3351ead773106a28cfe8d92edeadf3ee3ef5b132e9de100db0a50f1350"
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
