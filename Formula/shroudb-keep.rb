class ShroudbKeep < Formula
  desc "Secrets manager with path-based access control and versioning"
  homepage "https://github.com/shroudb/shroudb-keep"
  version "1.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "11334b3d618c586339efe8cfb2a1f109b09a47e44aced7bbf539da8d421af61a"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3b73d6748e075c0ccc261002599784d08483e3b0b223cf1c6c574d09694087e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d60f503d602e9e4b7bb78d1fc4a1029f2a1ca3d9a3156138d6a53790be5dae54"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7946738504cc9bbd34b68ea3054140e4cc53a9e1eedc4b2fc0c25f9bc59be295"
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
