class Shroudb < Formula
  desc "Encrypted key-value database with namespaces, versioning, and RESP3 protocol"
  homepage "https://github.com/shroudb/shroudb"
  version "1.0.12"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4484af23d2b04eb940f2dde47437b85d4e4a6da85f229d9266476a5a675fc141"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "888f3a40c41fc2fc3e25f3506b57508fff09a0bbe006167ce99ed94bbe9d6caf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "25ac32388371ce3930eb4672ea77b7bb8f19faafde4f9b41449745590714f21f"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e80c3111a7d8a236afe52bd6d7c2c53fbaef3740e9a97f4148008c921520d225"
    end
  end

  def install
    bin.install "shroudb"
    bin.install "shroudb-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb --version")
  end
end
