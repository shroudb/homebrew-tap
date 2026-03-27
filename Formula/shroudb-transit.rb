class ShroudbTransit < Formula
  desc "ShrouDB transit layer — server and CLI for wire protocol proxying"
  homepage "https://github.com/shroudb/shroudb-transit"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-transit/releases/download/v#{version}/shroudb-transit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_NOT_FOUND__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-transit/releases/download/v#{version}/shroudb-transit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_NOT_FOUND__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-transit/releases/download/v#{version}/shroudb-transit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16195b0aef1a39bcd3c348ea10d3a313786e563ddbc683e31ffdc8237fc1d7f2"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-transit/releases/download/v#{version}/shroudb-transit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d64ebdcb4d53ff7265264ff5c8fb8682ed59ec39a63a77a6413700ec91a0bb1e"
    end
  end

  def install
    bin.install "shroudb-transit"
    bin.install "shroudb-transit-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-transit --version")
  end
end
