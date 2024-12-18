class DvtfPingctl < Formula
    desc "A simple CLI tool to assist HCL generation and debugging with using the DaVinci Terraform provider from Ping Identity."
    homepage "https://github.com/patrickcping/dvtf-pingctl"
    license "MIT"
    version "0.4.2"
  
    head "https://github.com/patrickcping/dvtf-pingctl.git"
  
    on_macos do
      on_arm do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_darwin_arm64.tar.gz"
        sha256 "66d7646566c6967570a52e932ec5dff59b75c2ec84d943fc6d3559499a2cfdb8"
      end
      on_intel do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_darwin_amd64.tar.gz"
        sha256 "e1d2aacdad5e34d45343555b1f604bb800e38aac49f964d48293d3b283f430cf"
      end
    end
  
    on_linux do
      on_arm do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_linux_arm64.tar.gz"
        sha256 "a1fe2f8592ccabcc22e094a61285a7b62ee059eb89cc5a3ba84aaed94ec98275"
      end
      on_intel do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_linux_amd64.tar.gz"
        sha256 "858fd944208440578cdf603789cd2687cc747eaf0413d5b1ee0f0967d216b4c4"
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