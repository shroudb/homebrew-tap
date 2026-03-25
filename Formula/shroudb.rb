class Shroudb < Formula
  desc "Encrypted credential store — server and CLI"
  homepage "https://github.com/shroudb/shroudb"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "71f12434f2e9652251eae002444c9d6b8b88000cba90be2f26723b562b896094"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fb4903c8f697bf938f01d456f6b19fdfd775cbb6bbcdd6a656b3b340a4d991bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b33615bdfa8bc7b9dccf0d1a3a41bac13b3e9ba9958f694bb816ca65b75d0cf5"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b2b8cd1b7c71cfd1f553945533ddad9ff7e1b0a19d3a9118a12df45e63b99ce"
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
