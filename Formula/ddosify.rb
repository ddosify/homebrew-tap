# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddosify < Formula
  desc "High-performance load testing tool, written in Golang."
  homepage "https://ddosify.com"
  version "0.5.0"
  license "AGPL-3.0-only"

  on_macos do
    url "https://github.com/ddosify/ddosify/releases/download/v0.5.0/ddosify_0.5.0_macos_all.tar.gz"
    sha256 "bb2363f21c5af0ba9d659084a976a804a834608c5615aaf6da349586b44e0236"

    def install
      bin.install "ddosify"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ddosify/ddosify/releases/download/v0.5.0/ddosify_0.5.0_linux_amd64.tar.gz"
      sha256 "9945882efac650d59cfebcb74f4ecab880abdd076141a2fe65e86871ec19e02e"

      def install
        bin.install "ddosify"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/v0.5.0/ddosify_0.5.0_linux_arm64.tar.gz"
      sha256 "61ee5adfa5da5b1b4b3223df76ce18091e4b37778f3eaa71c655372b1a419d78"

      def install
        bin.install "ddosify"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/v0.5.0/ddosify_0.5.0_linux_armv6.tar.gz"
      sha256 "4e803531472b08fffd478d8c1f923871d5d00f57b7a5344c628acf951c2e6639"

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
