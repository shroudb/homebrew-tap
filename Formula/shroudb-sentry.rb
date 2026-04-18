class ShroudbSentry < Formula
  desc "Policy-as-code authorization engine with signed JWT decisions"
  homepage "https://github.com/shroudb/shroudb-sentry"
  version "1.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7fed4066ca9b94df3ea94e2926c4b665674a52d10b565d11f21930d1a2ab9d59"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "46733ce344f62f2f989d06c57e5a902adf1f48c06f9dd752cc1383522183db32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd11b9fd5f2a44eb7e8c5a3ac215b0c3e7e21a41ff15c2ae49026fa788c7ecc8"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c72945cddada3b56d08e4be50ada17eba39ace3bda7fa00d4621fafb66d5eebf"
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
