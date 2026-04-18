class ShroudbSentry < Formula
  desc "Policy-as-code authorization engine with signed JWT decisions"
  homepage "https://github.com/shroudb/shroudb-sentry"
  version "1.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "042a0cd515951dbc5f67075e1399d44fa72af1c057ecab64510a8f76e30b92d3"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d3071b2750495c268d20471c56d217816ffc0b4efd5d07b4bb239dfbad53885a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10aabe738482c9863e06b340171eaeee02d68fb520d1156436f37075ff0825e8"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "578e6affee382223ba9ce2802ecf8538cb76b3e83577e02cc1522e70e5b92c05"
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
