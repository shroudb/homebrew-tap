class ShroudbCourier < Formula
  desc "Secure notification delivery with SMTP, webhook, and WebSocket adapters"
  homepage "https://github.com/shroudb/shroudb-courier"
  version "1.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "416046decf604ca8143b2adb144838f6434c33643b796b9998fa2455fd37cfab"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f2d6185df413bb90fde046442d8423bc4eecb2433959f3ba4ded7aaa371687c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "21b9581f2b3659a6cf9db48ef40f882836b8634534a0af9e032d0bf1714b8482"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a0189b0797b2cbb5baaf91679b912670f79f2a8c9622062a64fb7eb482977608"
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
