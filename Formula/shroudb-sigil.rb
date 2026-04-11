class ShroudbSigil < Formula
  desc "Credential envelope engine with encrypted PII storage"
  homepage "https://github.com/shroudb/shroudb-sigil"
  version "1.7.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b39393b6a3cb34d62981e6a96e33eb5f9afd66df4220a07ef8675d587331d895"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "43b920678ddf3d0ec62db81b2409816ba0687f80844715f5f888743eaef2f60b"
    end
  end

  def install
    bin.install "shroudb-sigil"
    bin.install "shroudb-sigil-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-sigil --version")
  end
end
