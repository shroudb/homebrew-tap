class ShroudbForge < Formula
  desc "Internal Certificate Authority with short-lived TLS certificates and OCSP"
  homepage "https://github.com/shroudb/shroudb-forge"
  version "2.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d9f5bcd19fd5e12f30e4018c7371bd087da2a10ced3b5dfd8ade7659a1152e9d"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2cdd3938aab33f019fe3e1bc08e51c9be9ed7e403c19f4190c02e85686e6231b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5bd259c80e1e39c6ad67ba036a5f4bf34b578345e9949636fe91099b973ff92"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f89b1000c5e2387ce4054e4900fb040c35a5f8d3700339c67728d64ccdddada6"
    end
  end

  def install
    bin.install "shroudb-forge"
    bin.install "shroudb-forge-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-forge --version")
  end
end
