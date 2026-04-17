class Shroudb < Formula
  desc "Encrypted key-value database with namespaces, versioning, and RESP3 protocol"
  homepage "https://github.com/shroudb/shroudb"
  version "1.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "504483698b6149382bb4ae7576975e6d7b0ac3f8162fabcd2097da082e93535e"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4c4da5401248bb74245a99b6bb9647e71e05fd306c018498a57e71b82052fefa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7eb600461c106ff2d75c20072d4f663849a0616bc3e193ae8bc5631eedc40b1d"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-shroudb-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90afaf4518c3318a73a7387af7c596d0cf24f904fa1ed4b2d27a49f9e64d27e1"
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
