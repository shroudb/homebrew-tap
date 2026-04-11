class Shroudb < Formula
  desc "Encrypted key-value database with namespaces, versioning, and RESP3 protocol"
  homepage "https://github.com/shroudb/shroudb"
  version "1.0.10"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9f074737e696612ee3fd08d959d6e14e7e9a998a40413b3afa93d436943421d"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cdfe2844ef4a040a72a80ab6465455790dc310d95cd16e1b9023391bb2bd1405"
    end
  end

  def install
    bin.install "shroudb"
    bin.install "shroudb-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb --version")
  end
end
