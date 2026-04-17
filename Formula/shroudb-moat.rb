class ShroudbMoat < Formula
  desc "Unified security hub embedding all ShrouDB engines in a single binary"
  homepage "https://github.com/shroudb/shroudb-moat"
  version "2.0.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c0be2c096b0c3dfb38528319ad6ae737ea37bc3b2744bbd7b04b81bcead83b75"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9a284c014799903b6f35de9bcee372dcd760384b606a7a6263bca2307785b647"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ab2b2ecd9d1765905771014cf6c1c68c43e162d21dfe4fd446b2ef93a4b04b2c"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6246da6b66ea673152ba7abd41927eece8f1d24d5bec8ea69fb1b21dc541bc0e"
    end
  end

  def install
    bin.install "shroudb-moat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-moat --version")
  end
end
