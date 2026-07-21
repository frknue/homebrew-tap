class ShopifyAuth < Formula
  desc "Switch between Shopify CLI accounts using named profiles"
  homepage "https://github.com/frknue/shopify-auth"
  url "https://github.com/frknue/shopify-auth/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "a6e930c9e9731a6ad72e47cdf8dd32ec43014c12bb13bd407da2feea4e15aff7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/shopify-auth"
  end

  test do
    assert_match "shopify-auth 0.4.0", shell_output("#{bin}/shopify-auth version")
  end
end
