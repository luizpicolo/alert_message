require 'spec_helper'
require_relative '../../lib/version/version'

describe AlertMessage do

  it "should return version correctly" do
    expect(AlertMessage::Version::VERSION).to be_a_kind_of(String)
    expect(AlertMessage::Version::VERSION).to eq '1.1.3.1'
  end
end
