require 'rubygems'
require 'test/unit'

$LOAD_PATH << "#{File.dirname(__FILE__)}/../lib/"
require "handsoap"

class TestFollowRedirects < Test::Unit::TestCase
  def test_follow_redirects
    assert !Handsoap.follow_redirects?
    Handsoap.follow_redirects!
    assert Handsoap.follow_redirects?
  end

  def test_max_redirects
    assert_equal Handsoap.max_redirects, 1
    Handsoap.max_redirects = 10
    assert_equal Handsoap.max_redirects, 10
  end

  def test_ssl_version
    assert_equal Handsoap.ssl_version, nil
    Handsoap.ssl_version = 'SSLv3'
    assert_equal Handsoap.ssl_version, "SSLv3"
  end

end