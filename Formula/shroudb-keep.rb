class ShroudbKeep < Formula
  desc "Secrets manager with path-based access control and versioning"
  homepage "https://github.com/shroudb/shroudb-keep"
  version "1.6.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3b62c8cd729ee6767b4764f2a439e3fd967679a08882737dc72314141e783330"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "92cd7a5173c717585f3d5b004a71bf9222aa0203ce888bf7c7e985255b695303"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e44b1d93272eb199d2c6a01c5897f3f1caca6d847da7388b4fa831bb2d984d53"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a1a80d0f532321b41c205d1c3e836e4e61c52fb1eb4a93ea93bf81602170a068"
    end
  end

  def install
    bin.install "shroudb-keep"
    bin.install "shroudb-keep-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-keep --version")
  end
end
