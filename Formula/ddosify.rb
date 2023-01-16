# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddosify < Formula
  desc "High-performance load testing tool, written in Golang."
  homepage "https://ddosify.com"
  version "0.12.0"
  license "AGPL-3.0-only"

  depends_on "go" => :optional

  on_macos do
    url "https://github.com/ddosify/ddosify/releases/download/v0.12.0/ddosify_0.12.0_macos_all.tar.gz"
    sha256 "837d5c06b652deba61a405ac60628e5195b02cf726b5912b860d784ca919857e"

    def install
      bin.install "ddosify"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ddosify/ddosify/releases/download/v0.12.0/ddosify_0.12.0_linux_amd64.tar.gz"
      sha256 "eff732889749bb25c82a6f536e6602b5fcfb450d1b51761a53f4f2a328c07e69"

      def install
        bin.install "ddosify"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/v0.12.0/ddosify_0.12.0_linux_armv6.tar.gz"
      sha256 "e650226eee489aa83c4fc01ed0c166c581e374cb4e92ca5b1c73372833230fb5"

      def install
        bin.install "ddosify"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/v0.12.0/ddosify_0.12.0_linux_arm64.tar.gz"
      sha256 "3ef59d86ba79c7ddaa218cdbffb9cf7267c8f51852021777a0c22d47d5d23f30"

      def install
        bin.install "ddosify"
      end
    end
  end

  test do
    system "#{bin}/ddosify --help"
  end
end
