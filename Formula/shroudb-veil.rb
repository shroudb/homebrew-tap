class ShroudbVeil < Formula
  desc "Encrypted search engine with blind indexing over E2EE data"
  homepage "https://github.com/shroudb/shroudb-veil"
  version "1.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b1074493410527c1b8fe22d220327cc89f5baac3dd17573384433ac0fe4b1d06"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5bd9ffa024b7eb240e4e57a55a847497035cc1d5af2aba781932fea0989bdc09"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c52fe57cf75d775aa659595ab3982cff09431d8f17d76269ec9d851a0f162582"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-veil/releases/download/v#{version}/shroudb-veil-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c510331f8fe2a8ca1011474e46a1bdfe59f880e3fcf4885c1ca3132b160a8a19"
    end
  end

  def install
    bin.install "shroudb-veil"
    bin.install "shroudb-veil-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-veil --version")
  end
end
