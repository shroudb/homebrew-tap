class ShroudbKeep < Formula
  desc "Secrets manager with path-based access control and versioning"
  homepage "https://github.com/shroudb/shroudb-keep"
  version "1.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "69c69719b598716845cd5676bd340e2fe3dac687e2cd9685a505b1a34be7f2b0"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "590a718b7528d5d5d6624ca643cf163b1b3fb87c65b4cbcfcb86179bdc892677"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e31a38bf173fbaf8dd3397989af6f9b08d435bfb3cc0ab8f894d2659f4ba71af"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "731cb72d98c1df88e6d8382934ea8e64ea4922cac30a8ca4e868035a270be484"
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
