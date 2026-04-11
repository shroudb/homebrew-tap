class ShroudbSentry < Formula
  desc "Policy-as-code authorization engine with signed JWT decisions"
  homepage "https://github.com/shroudb/shroudb-sentry"
  version "1.4.15"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "522dbe171c6c00de33ae6a51f86d239a0d14eb1afaa6c9c8b80e067d5b116840"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "62006387e6f5135c41e53e6a2bacec2337b596b7e490493f833dbeacc78d42fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5bd2052b9aa7665771f2448d8b562958dc14203e65a5c74bb2d6512f89e9170"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e51ff61e4e2be3daab66c89ac3e7764d8ccfb8f79cc80eb3d586e90257d1f100"
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
