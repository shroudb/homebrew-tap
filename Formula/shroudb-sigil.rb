class ShroudbSigil < Formula
  desc "Credential envelope engine with encrypted PII storage"
  homepage "https://github.com/shroudb/shroudb-sigil"
  version "2.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2a1eb40f3ff216129b002cfe51bf92d403a2059b6870fc510f13b4b808fc777e"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "12f4fee7aa1324b35697985657374acfcf34af61683682be0293ebc182a66315"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "991629d8cbb591a0062718a7bcc379e409e538e59fedb4710965553a63678d51"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3e7f1ec9a6db69d67315e881bbb5d25714e72f77382aaf54f2b3f8d2bdf9f5a6"
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
