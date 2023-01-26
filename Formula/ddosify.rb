# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddosify < Formula
  desc "High-performance load testing tool, written in Golang."
  homepage "https://ddosify.com"
  version "0.13.0"
  license "AGPL-3.0-only"

  depends_on "go" => :optional

  on_macos do
    url "https://github.com/ddosify/ddosify/releases/download/v0.13.0/ddosify_0.13.0_macos_all.tar.gz"
    sha256 "b0415de14b91fffb747a0880163ec7799db8c87b155b696a20fda73109f6c062"

    def install
      bin.install "ddosify"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/v0.13.0/ddosify_0.13.0_linux_armv6.tar.gz"
      sha256 "aa98deae1cead8274f4399c5226168a49c71a5eabf00c771b004e13439af18ed"

      def install
        bin.install "ddosify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ddosify/ddosify/releases/download/v0.13.0/ddosify_0.13.0_linux_amd64.tar.gz"
      sha256 "4bc0afd98c764c96983c25951a329bdf8bc9b1b05d425f0d1e5fd4d99dc1122d"

      def install
        bin.install "ddosify"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/v0.13.0/ddosify_0.13.0_linux_arm64.tar.gz"
      sha256 "917f692576f806c15f9119c091c4e251841bcc0a88bd101378b7ded4e3532093"

      def install
        bin.install "ddosify"
      end
    end
  end

  test do
    system "#{bin}/ddosify --help"
  end
end
