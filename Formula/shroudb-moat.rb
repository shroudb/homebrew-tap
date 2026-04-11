class ShroudbMoat < Formula
  desc "Unified security hub embedding all ShrouDB engines in a single binary"
  homepage "https://github.com/shroudb/shroudb-moat"
  version "1.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c0ea146172f80a5ddfc8b198b32fdb0f08f0038cafb8885c595b1fd8fe216bf"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e0d983cf8a4db237b2dc8f30ba67365840a77668def96b7dfc83f2a15f7baca"
    end
  end

  def install
    bin.install "shroudb-moat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-moat --version")
  end
end
