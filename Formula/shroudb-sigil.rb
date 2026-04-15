class ShroudbSigil < Formula
  desc "Credential envelope engine with encrypted PII storage"
  homepage "https://github.com/shroudb/shroudb-sigil"
  version "1.9.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "cf69327c66ca0d4823dc05a07cc334e2fa35dc91c5708ce2e96adeeccc7f18f3"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9d4de98a90a7b1e199e56b4c4835c9d9a3a63da6b9a2661dcfa6ff078ec48dde"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0ed9c223ac59270e440e85d192b4c4e5191f25e048d4ffec4723a76328dcb5b0"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a02ccd57de20c7f8c2c20f28722da856783cf6728692e72147898e80e390925"
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
