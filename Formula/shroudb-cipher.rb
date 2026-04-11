class ShroudbCipher < Formula
  desc "Encryption-as-a-service engine with key lifecycle management"
  homepage "https://github.com/shroudb/shroudb-cipher"
  version "1.4.15"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "379b26a5361416958da4055a03f2f52943637a3ca4492820eb05df157762c72c"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1e01bde0636a57360c18ac916c1e499a9b44c9c6c7329d66810bf3a44becafd5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f58a0d5f69af01dce1d4dcab95da0e04eb176c44989dcdefc5349e4a71c3b1d"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9716cc765c9793cadb90fc75a44154c787c7addf16cbe2efc3de1dc6b1f183b4"
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
