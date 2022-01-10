# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddosify < Formula
  desc "High-performance load testing tool, written in Golang."
  homepage "https://ddosify.com"
  version "0.7.0"
  license "AGPL-3.0-only"

  on_macos do
    url "https://github.com/ddosify/ddosify/releases/download/0.7.0/ddosify_0.7.0_macos_all.tar.gz"
    sha256 "ae1072af8aa8c9e32092c710e1dd0774c64d7975e4edca8f7359fa5cd456022c"

    def install
      bin.install "ddosify"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ddosify/ddosify/releases/download/0.7.0/ddosify_0.7.0_linux_amd64.tar.gz"
      sha256 "8a22a2eda4a5a4902d1668777306eb73183687c098d44aa6af848d70051314f7"

      def install
        bin.install "ddosify"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/0.7.0/ddosify_0.7.0_linux_armv6.tar.gz"
      sha256 "30c83156845d011861f330826d88e70d9d627d74e052580a1914efb28c64586a"

      def install
        bin.install "ddosify"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/0.7.0/ddosify_0.7.0_linux_arm64.tar.gz"
      sha256 "8b5a12f1d96d6e377e7d0c25868abafbf8eff6e1cabfeaa43a0b389cdc0c0c3c"

      def install
        bin.install "ddosify"
      end
    end
  end

  depends_on "go" => :optional

  test do
    system "#{bin}/ddosify --help"
  end
end
