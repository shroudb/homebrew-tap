class ShroudbForge < Formula
  desc "Internal Certificate Authority with short-lived TLS certificates and OCSP"
  homepage "https://github.com/shroudb/shroudb-forge"
  version "2.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7f5594563b2f5a2f46df15a7dba6a1252bb502f423485ec3235d276dd87d94ba"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8c17a6a21e927211e4c5c7c2a03bf38bac9fe3dc5835521587d5f2fdccc8615d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8f658bedfee0462524a50884ab5b23f722f7c95aaa7e3c7877b3e7bc7248fc6"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "18e20a658a1cdb43bc729f0f4a5609c0e05f0b0762a14eece9237066b070cdc3"
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
