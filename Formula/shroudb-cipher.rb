class ShroudbCipher < Formula
  desc "Encryption-as-a-service engine with key lifecycle management"
  homepage "https://github.com/shroudb/shroudb-cipher"
  version "1.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4cf8ba6b5685a7e2e216d28e531b293ba4af55c26e93473c9e1a29eeab2b5a0a"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2269cfc5c85b75a915d06a1c046809c881415ff6e87758c6a555f6f4d1b5d933"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5bdbc6657c96a65d1a6d65c2ad3a69d75072fb98f5605f9628f74780e2c75c76"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-cipher/releases/download/v#{version}/shroudb-cipher-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fde4844298725199b8ebea4c4961e7e11c7ac14e1ea0948ac451ca90c7df9d04"
    end
  end

  def install
    bin.install "shroudb-cipher"
    bin.install "shroudb-cipher-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-cipher --version")
  end
end
