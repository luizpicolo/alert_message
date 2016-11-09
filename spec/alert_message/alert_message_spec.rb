require 'spec_helper'

describe AlertMessage do

  path = 'lib/generators/alert_message/templates/'

  it 'should return true if template exist' do
    expect(File.exist?("#{path}_alerts.html.erb")).to be_truthy
  end
end
