class ShroudbSentry < Formula
  desc "Policy-as-code authorization engine with signed JWT decisions"
  homepage "https://github.com/shroudb/shroudb-sentry"
  version "1.4.14"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55d408486b8a2f9d07b48d13d653094ff4706940759e287ffd46b0aa224a7d6b"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5b3fe1b95acf342cdccf6c24c129d6aa6cceb3ca7e07a055efdf7330d7de27d"
    end
  end

  def install
    bin.install "shroudb-sentry"
    bin.install "shroudb-sentry-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-sentry --version")
  end
end
