class Shroudb < Formula
  desc "Encrypted credential store — server and CLI"
  homepage "https://github.com/shroudb/shroudb"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fd7d62be6cd54b731243f7620d2715e55ca7c312a6a8dd64d56e6fe44fff36c7"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb/releases/download/v#{version}/shroudb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "78adbfe1b216c85837ee816d96bb2dd0eefec3d5f1c5fdf70b94f603d0ee5257"
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
