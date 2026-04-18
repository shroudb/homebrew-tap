class ShroudbKeep < Formula
  desc "Secrets manager with path-based access control and versioning"
  homepage "https://github.com/shroudb/shroudb-keep"
  version "1.8.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "eb654984db2bc57e33b3207c8bc4d29831086c4d62ac42ca4529abc2225274ff"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "30d422c991c7851c64efc9fe036b8b506746ccb7d7a466bc270cefe157e642d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64a6d7fb97f55f760a136a78b7f4a083b67d5d2626506eeec8be138f433b0820"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e5fa090eca175f84c29bbe56980d6cfd9645253149f1f132e711a2d672d9181"
    end
  end

  def install
    bin.install "shroudb-keep"
    bin.install "shroudb-keep-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-keep --version")
  end
end
