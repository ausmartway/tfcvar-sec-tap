# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TfcvarSec < Formula
  desc "The tfcvar-sec is a tool that scanns Terraform Cloud for insecure terraform/enviroment variables."
  homepage "https://github.com/ausmartway/tfcvar-sec"
  version "0.2.7"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ausmartway/tfcvar-sec/releases/download/v0.2.7/tfcvar-sec_0.2.7_darwin_arm64.tar.gz"
      sha256 "3b14dfe2e25e1594374030dcf87c095f10ae5e35963f8e0c37c5d51994ac5b27"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ausmartway/tfcvar-sec/releases/download/v0.2.7/tfcvar-sec_0.2.7_darwin_amd64.tar.gz"
      sha256 "595861420806bb29e78869bd6e54fcd446a037efbea5718aa25cf1ad1c5944f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ausmartway/tfcvar-sec/releases/download/v0.2.7/tfcvar-sec_0.2.7_linux_arm64.tar.gz"
      sha256 "5e502009a02249f7085b551ec7d02babe8d80cd5148cfaaddbca43d9866d1ee8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ausmartway/tfcvar-sec/releases/download/v0.2.7/tfcvar-sec_0.2.7_linux_amd64.tar.gz"
      sha256 "1493e943cd0bacf10e243ef51a3f8a88918ee5c7926d0e7007185ff4db09db51"
    end
  end

  def install
    bin.install "tfcvar-sec"
  end

  def caveats; <<~EOS
    Type 'tfcvar-sec scan' on your command line.
  EOS
  end

  test do
    system "#{bin}/tfcvar-sec --version"
  end
end
