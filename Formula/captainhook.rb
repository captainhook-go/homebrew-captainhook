# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Captainhook < Formula
  desc "CaptainHook is a flexible git hooks manager that makes sharing git hooks a breeze"
  homepage "http://captainhook.info/"
  version "0.9.4"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/captainhook-go/captainhook/releases/download/0.9.4/captainhook_Darwin_arm64.tar.gz"
      sha256 "c617e89f9623f0b94f43c00af5ff7dc9c0fc5ee0c5d2689c576847f0316d4284"

      def install
        bin.install "captainhook"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/captainhook-go/captainhook/releases/download/0.9.4/captainhook_Darwin_x86_64.tar.gz"
      sha256 "5f8a789e4e7b38794a08de70319a495af36ac97df362d80b4a59fc2069788746"

      def install
        bin.install "captainhook"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/captainhook-go/captainhook/releases/download/0.9.4/captainhook_Linux_arm64.tar.gz"
      sha256 "929ef0023ce1a390dbbe4db70c546972be7c34ecafa8996bf5088bd3f0a596c8"

      def install
        bin.install "captainhook"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/captainhook-go/captainhook/releases/download/0.9.4/captainhook_Linux_x86_64.tar.gz"
      sha256 "d91d8a953eda6c51e5f57202be50d3098cd6720b34ab5e9345db32bb5ef4939b"

      def install
        bin.install "captainhook"
      end
    end
  end
end