# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddosify < Formula
  desc "High-performance load testing tool, written in Golang."
  homepage "https://ddosify.com"
  version "0.13.1"
  license "AGPL-3.0-only"

  depends_on "go" => :optional

  on_macos do
    url "https://github.com/ddosify/ddosify/releases/download/v0.13.1/ddosify_0.13.1_macos_all.tar.gz"
    sha256 "8fbe960d400d4ab14c0093ca8bd387769c1c2e82a83f7996b28332169f584888"

    def install
      bin.install "ddosify"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/v0.13.1/ddosify_0.13.1_linux_arm64.tar.gz"
      sha256 "0a85690d72636168e09af010c3d737b5bb9759eb8e9e92a366ad0fd3beeea5d4"

      def install
        bin.install "ddosify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ddosify/ddosify/releases/download/v0.13.1/ddosify_0.13.1_linux_amd64.tar.gz"
      sha256 "172400e3dc1610f98b544af6707af94ae471ba25a9781fc9a956adf1cd15488b"

      def install
        bin.install "ddosify"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/v0.13.1/ddosify_0.13.1_linux_armv6.tar.gz"
      sha256 "0b45803d9d39e21c784aff823d949e16acbcd94fead7e55f2521eaacfabb85bc"

      def install
        bin.install "ddosify"
      end
    end
  end

  test do
    system "#{bin}/ddosify --help"
  end
end
