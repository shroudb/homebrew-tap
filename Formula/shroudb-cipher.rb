class ShroudbCipher < Formula
  desc "Encryption-as-a-service engine with key lifecycle management"
  homepage "https://github.com/shroudb/shroudb-cipher"
  version "1.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "31af128aa55c47aa3540eeb0c29d0853139d34cdfc91af81de36e5f338f22db5"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "76c713c568412cb26a30db95dbe5278c54459d51cc2184153bc70ec153900a30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6636a757115fed5bf6a7fd7c46879a4760d27873643b98e2e911f601561c06bf"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a42c9343831e2c1985d37c4f7717d25cbf440d71703d823039bf199d121ba46"
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
