class ShroudbScroll < Formula
  desc "Durable append-only event log with cursored readers and reader groups"
  homepage "https://github.com/shroudb/shroudb-scroll"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "54cdc737bd11aa3a79b05fbbecacf3fc60a71b6f265fbac61d580a5999207164"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8f527188c3faecee3bd3710333e15815bb050572c368125ec6db2e3b96cdd07b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e7e5d4ad5f340231180a03a694e5d1b683fcfe537bdb70ea43083070482619b"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9b4fa88ca585d74acae1646503ddd368aeb97e6554008898589d488af2ad1a7"
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
