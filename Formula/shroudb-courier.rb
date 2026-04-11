class ShroudbCourier < Formula
  desc "Secure notification delivery with SMTP, webhook, and WebSocket adapters"
  homepage "https://github.com/shroudb/shroudb-courier"
  version "1.4.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "03a90cd8eb99e8a42add8a891ec6fc376a9c41243314532e167f158170c5b360"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "317e55b630e07ed6e182dcdbf6951da77945c8dd13dc48855ecc8850af9eec2f"
    end
  end

  def install
    bin.install "shroudb-courier"
    bin.install "shroudb-courier-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-courier --version")
  end
end
