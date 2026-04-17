class ShroudbMoat < Formula
  desc "Unified security hub embedding all ShrouDB engines in a single binary"
  homepage "https://github.com/shroudb/shroudb-moat"
  version "2.0.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1aa76338d03b6c08491453d32069914ed8a3880a31c67d15b634ac804f03f375"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "34217ebd514e206e056a067ccec067c4340a3642fa286024fa8049a890905404"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b06874a6995cc61e156c6f59b1823820587669b7d6c59c1ffb2fcec5427bdbc"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4fba9780b494dee458fe58e07c674f843f7f77c62ffeb667e604ef99d86ba7f6"
    end
  end

  def install
    bin.install "shroudb-moat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-moat --version")
  end
end
