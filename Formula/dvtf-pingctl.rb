class DvtfPingctl < Formula
    desc "A simple CLI tool to assist HCL generation and debugging with using the DaVinci Terraform provider from Ping Identity."
    homepage "https://github.com/patrickcping/dvtf-pingctl"
    license "MIT"
    version "0.2.0"
  
    head "https://github.com/patrickcping/dvtf-pingctl.git"
  
    on_macos do
      on_arm do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_darwin_arm64.tar.gz"
        sha256 "70a245bd207cc8e9e0e4bd3c182009db851c5aed1a640c64928d049d121ad6e8"
      end
      on_intel do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_darwin_amd64.tar.gz"
        sha256 "f8f9877407991ae74c2d69fb720daf0e5bbf072e9fed2aedfff9f70305ee5797"
      end
    end
  
    on_linux do
      on_arm do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_linux_arm64.tar.gz"
        sha256 "0dc6f69b75ac5e920bd8824e3750e29d9f563a81de30fd8c3cbccdb22cf48a41"
      end
      on_intel do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_linux_amd64.tar.gz"
        sha256 "6383447d3f0ad14d199147818d4e6211031ce41a2c93f21dae28d4241eefc099"
      end
    end
  
    def install
      libexec.install Dir["*"]
  
      bin.install_symlink "#{libexec}/dvtf-pingctl" => "dvtf-pingctl"
    end
  
    test do
      system bin/"dvtf-pingctl", "-v"
    end
  end