class ShroudbForge < Formula
  desc "Internal Certificate Authority with short-lived TLS certificates and OCSP"
  homepage "https://github.com/shroudb/shroudb-forge"
  version "2.0.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "afa8d879fbdabcd188b35565edad8654bb24f211765318476fccae68ad217f80"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a899e19abd0c3c765729f2835bb5caabe4322fbe5eb2fb471490acdfc1fb634a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb7e490ef442eb973d754d616311598d92391bf015f5d983adbcd69dde28de15"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-forge/releases/download/v#{version}/shroudb-forge-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e389ee24560d1bc70ac38ab527b21235ac2e5f8c419e2cd0f799ab9e9856bc3a"
    end
  end

  def install
    bin.install "shroudb-forge"
    bin.install "shroudb-forge-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-forge --version")
  end
end
