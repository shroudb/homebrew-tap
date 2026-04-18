class ShroudbScroll < Formula
  desc "Durable append-only event log with cursored readers and reader groups"
  homepage "https://github.com/shroudb/shroudb-scroll"
  version "0.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "__SHA256_LINUX_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "__SHA256_LINUX_AARCH64__"
    end
  end

  def install
    bin.install "shroudb-scroll"
    bin.install "shroudb-scroll-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-scroll --version")
  end
end
