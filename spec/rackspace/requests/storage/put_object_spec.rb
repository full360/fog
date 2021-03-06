require File.dirname(__FILE__) + '/../../../spec_helper'

describe 'Rackspace::Storage.put_object' do
  describe 'success' do

    before(:each) do
      Rackspace[:storage].put_container('container_name')
    end

    after(:each) do
      Rackspace[:storage].delete_object('container_name', 'object_name')
      Rackspace[:storage].delete_container('container_name')
    end

    it "should return proper attributes" do
      Rackspace[:storage].put_object('container_name', 'object_name', lorem_file)
    end

  end
end
