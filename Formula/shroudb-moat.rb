class ShroudbMoat < Formula
  desc "Unified security hub embedding all ShrouDB engines in a single binary"
  homepage "https://github.com/shroudb/shroudb-moat"
  version "2.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ce1276e6772c4fdf633adbefb0141b962d51f84153b6fc8874053e191857dbf6"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "85732bc3c8b6c2cf5cb0d301bc40733f147a6576f0e00328042e346b7c0fb424"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "324f9b9e843ea4b074b9eca74ca3916c818cc45e9d5d98cb33d64ebd7b7f01e9"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bafcb04c2925aae50f1d15bb389a928d8c476725d91fcf669769403f17db497a"
    end
  end

  def install
    bin.install "shroudb-moat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-moat --version")
  end
end
