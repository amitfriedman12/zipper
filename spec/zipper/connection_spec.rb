require 'spec_helper'

describe Zipper::Connection do
  subject { described_class.new }
  let(:faraday_connection) { double(:faraday) }

  describe '#get' do
    let(:path) { '/zips/90266' }
    let(:json_response) { double(:json_response, body: response_body.to_json) }
    let(:response_body) do
      {
        'Zip' => '90266',
        'CBSA' => '31084',
        'MSA' => 'Los Angeles-Long Beach-Anaheim, CA',
        'Pop2015' => 13_340_068,
        'Pop2014' => 13_254_397
      }
    end

    before do
      expect(Faraday).to receive(:new)
        .with(url: 'https://pop-data.herokuapp.com/')
        .and_return(faraday_connection)
      expect(faraday_connection).to receive(:get)
        .with(path)
        .and_return(json_response)
    end

    it 'returns the JSON parsed response body' do
      expect(subject.get(path)).to eq(response_body)
    end
  end
end
