class ShroudbForge < Formula
  desc "Internal Certificate Authority with short-lived TLS certificates and OCSP"
  homepage "https://github.com/shroudb/shroudb-forge"
  version "1.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b8291f77fafd47f5f627ca149add32220c6b21ac820ca59d24af61a53a8f6c4f"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6aa4a26757a321b483126c18fd233bf50c71a948c2f78cf775abb8357e7c192e"
    end
  end

  def install
    bin.install "shroudb-forge"
    bin.install "shroudb-forge-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-forge --version")
  end
end
