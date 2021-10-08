# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddosify < Formula
  desc "High-performance load testing tool, written in Golang."
  homepage "https://ddosify.com"
  version "0.4.0"
  license "AGPL-3.0-only"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ddosify/ddosify/releases/download/v0.4.0/ddosify_0.4.0_macos_amd64.tar.gz"
      sha256 "d795602fa2592e77020ba799651ada29b7cebbf218b5ff7d598a2ac673c06ec7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ddosify/ddosify/releases/download/v0.4.0/ddosify_0.4.0_macos_arm64.tar.gz"
      sha256 "3229e9e72189c87f59b6148b1db6ae07baf1a90e9990133d911a0f512440200b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ddosify/ddosify/releases/download/v0.4.0/ddosify_0.4.0_linux_amd64.tar.gz"
      sha256 "22b7a189e7957feb27af6623992069cb50c3f1505cb4a21e00255332d3002ff3"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/v0.4.0/ddosify_0.4.0_linux_armv6.tar.gz"
      sha256 "43eb78335ac8beeeab91458d8ed98ab6f3665975c58aa2c2871e569a256e7f51"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ddosify/ddosify/releases/download/v0.4.0/ddosify_0.4.0_linux_arm64.tar.gz"
      sha256 "3b717e9d73a651d46dd59515dbe81608fbcf4f222899f6be856ed9b8314a4e66"
    end
  end

  depends_on "go" => :optional

  def install
    bin.install "ddosify"
  end

  test do
    system "#{bin}/ddosify --help"
  end
end
