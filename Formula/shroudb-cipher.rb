class ShroudbCipher < Formula
  desc "Encryption-as-a-service engine with key lifecycle management"
  homepage "https://github.com/shroudb/shroudb-cipher"
  version "2.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d5a4412f2f35ac117f4776bd970deefcbb1830f35e19322d45fb2aff737d5e31"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1dd473fc7efae513c1fbce5fd8f23da29f0b45ecc26aa025f453d890df9bf357"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "51585f1e3fc978bbad424f5feec942b0c04718d21d872a31f0c0f1ee5fd3acab"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb5cda9f14f9365ed92db7335cd0a52b3af37655db8fe2ce4653df93976c77ba"
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
