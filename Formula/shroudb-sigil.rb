class ShroudbSigil < Formula
  desc "Credential envelope engine with encrypted PII storage"
  homepage "https://github.com/shroudb/shroudb-sigil"
  version "1.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ee8082f1af9f1f22afff562ac3927b10ec511193550a1ce6b4054633ecf4401f"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e4a5195855ae72cd0ba128ce1ad9c5d3fe14cd03470ed9056c0baa77369e696b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e5907cb3b21fc11ddc1ddd42641ed3d118ee8bec6c6baec54bcda0169fc6cfa"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sigil/releases/download/v#{version}/shroudb-sigil-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "517314abf66d0115d5772baaae35a57db97ba39d07af679704f2c6e0fb792abb"
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
