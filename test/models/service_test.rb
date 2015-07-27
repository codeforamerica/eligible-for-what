require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  def setup
    @service = Service.new(name: 'Sample Service', description: 'This is an example of a service.', location: '12345 Main Street, Oakland, CA 94607', organization: 'Test Organization')
  end

  test "should be valid" do
    assert @service.valid?
  end

  test "name should be present" do
    @service.name = ''
    assert_not @service.valid?
  end

  test "name should not be too long" do
    @service.name = 'z' * 256
    assert_not @service.valid?
  end

  test "description should be present" do
    @service.description = ''
    assert_not @service.valid?
  end

  test "description should not be too long" do
    @service.description = 'a' * 256
    assert_not @service.valid?
  end
end
