require 'spec_helper'

describe Zipper::Zip do
  subject { described_class }
  let(:connection) { ::Zipper::Connection.new }

  describe '.zip' do
    let(:zip) { 90_266 }
    let(:path) { "/zips/#{zip}" }

    it 'calls get on the connection instance' do
      expect(connection).to receive(:get).with(path)
      subject.get(connection, zip)
    end
  end
end
