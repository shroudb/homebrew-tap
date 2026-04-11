class Shroudb < Formula
  desc "Encrypted key-value database with namespaces, versioning, and RESP3 protocol"
  homepage "https://github.com/shroudb/shroudb"
  version "1.0.11"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fa9ac38a32a929126238a995563a8ec767d94a6a82a68b98d0e055da319ed06e"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a9740c5aa94a1aad6b432a6b9b9a2fe24d672b4c525c1c912cb15b35df12093f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8e7d5f4814a6009761c362e7f2d159256c006659b72ffe3026ad7847c864434"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e7631de22ce4aa1b2574de18dcbb2a1ffe3c80141e8c4283539e0af914a8fb8"
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
