class ShroudbVeil < Formula
  desc "Encrypted search engine with blind indexing over E2EE data"
  homepage "https://github.com/shroudb/shroudb-veil"
  version "1.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fe8003fd81f60f46d7b1c299fe26234ee6b28e99f93fee755d05c8c4df252cc7"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3d2a12fe8bce12c5a3dbb13033ac99603e95ed4a8bc09b0ab028b8f682c0ab93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "463cc02e6100387e5d56dc6ebb04627f0ea36f3e44aaefd19caf94a1e27ddae6"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be0fe6c4cad21ae67726de7ab15aae0db933dd3e9d7c2184d6fc3e7b626d7316"
    end
  end

  def install
    bin.install "shroudb-veil"
    bin.install "shroudb-veil-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-veil --version")
  end
end
