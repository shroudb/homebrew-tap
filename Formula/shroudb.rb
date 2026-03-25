class Shroudb < Formula
  desc "Encrypted credential store — server and CLI"
  homepage "https://github.com/shroudb/shroudb"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f6556c6aa1999ec8672c42a550fc050a80ec3f6c11f6f6714f37ad1397de123d"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "29aff7fd27eca231f953f53742ed067e1f0c2f9548455f883f2538048892caf8"
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
