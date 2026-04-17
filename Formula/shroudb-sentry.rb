class ShroudbSentry < Formula
  desc "Policy-as-code authorization engine with signed JWT decisions"
  homepage "https://github.com/shroudb/shroudb-sentry"
  version "1.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "29ecae89076c3fdf7b9512a4fd5a669adfba8885ead1cf587e05e5f795f04e17"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fbe898d88534360d23a880abeb1ca1c88079f5d560b249ff5f534ee9e3281757"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c934d64d75b6448aecaccd7701f851918b311ff8be9fc3528b12e17dc8a563fa"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-sentry/releases/download/v#{version}/shroudb-sentry-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "edfbf96e912389873ef8a43e930635d4628794f6c4511033d36771305ee2cb2a"
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
