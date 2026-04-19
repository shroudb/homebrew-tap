class ShroudbForge < Formula
  desc "Internal Certificate Authority with short-lived TLS certificates and OCSP"
  homepage "https://github.com/shroudb/shroudb-forge"
  version "1.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "cd0ef627a2561f655527be2f6c6740ad7612bb0d0178a1815dfdb5b9ea4b0aaa"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "163acdc074ebdf932450831855084e7f1211e8d1542ca5ea040c51325d35731a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "baf5349ffe8bcf9cf24dc89932b574dc2470972c4b1d169410f2596f711c172c"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82f018b697bb2fd70454d70dff86c243a77e8be5e0de0bdf051b07a34d55095b"
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
