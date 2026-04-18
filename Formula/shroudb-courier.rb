class ShroudbCourier < Formula
  desc "Secure notification delivery with SMTP, webhook, and WebSocket adapters"
  homepage "https://github.com/shroudb/shroudb-courier"
  version "1.5.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6707d44fdbeaeead263c616482f6999af8831421a00f9681ce0e4fa7bce9b7e6"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5cf95b495b22bed91bf302ed9f8a3382817ebbc38a255ccd186acad6b949f76f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3834760562efd282032ddc261348ad70daebd137c1f3132658164af6a64d9ce1"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-courier/releases/download/v#{version}/shroudb-courier-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a70a7bca76caa223ad01348a465393da3d70bff89658c60b60fef4ab5e207828"
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
