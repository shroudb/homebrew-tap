class ShroudbCourier < Formula
  desc "Secure notification delivery with SMTP, webhook, and WebSocket adapters"
  homepage "https://github.com/shroudb/shroudb-courier"
  version "1.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fce7c83a22983aea7dc1524cb40dbb5c1b27d750321a5b3f8eb7e09484e98e93"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "75ecc1a6d00e6871c6f8a22913303d046a0f570761f1b73cdd2fce087f0f6383"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fac6a8e41147cdf879400f3ca61bd3d27adefa1dca223c404c5b3d564d898d5e"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dfb008733ebcc2bec3e12a56fc642364f8020ba35e84a2e41a73b806b3b6b3fc"
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
