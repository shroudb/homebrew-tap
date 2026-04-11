class ShroudbCipher < Formula
  desc "Encryption-as-a-service engine with key lifecycle management"
  homepage "https://github.com/shroudb/shroudb-cipher"
  version "1.4.14"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d24d0c3e58a798b5061b388c14544d8bba095a6292aec2da5f832604b35ba835"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1902e5828955e50a71c109944cfc13ca4ddfccd1cff8ee6efde10ccff5086117"
    end
  end

  def install
    bin.install "shroudb-cipher"
    bin.install "shroudb-cipher-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-cipher --version")
  end
end
