class ShroudbCourier < Formula
  desc "Secure notification delivery with SMTP, webhook, and WebSocket adapters"
  homepage "https://github.com/shroudb/shroudb-courier"
  version "1.4.9"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "06380f39bcc7e18e42a76e93a467d60c0b642d556e14108062d8b8c359f252ed"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ddf7dc4b18c6db1b008f3ce7e4d47423ae07f36e3b27173bb490627fd67c3060"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d3be1c45fab5c14d0c33df16edafe23e72f49af2be7de7913199b7e90889031"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3f4ade867ccef69d73ceebef9c2eee4d1c47ac49987b0e7847b323b2df16e201"
    end
  end

  def install
    bin.install "shroudb-courier"
    bin.install "shroudb-courier-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-courier --version")
  end
end
