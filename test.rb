
require "minitest/autorun"
require_relative "learn"

class  TestA< Minitest::Test
  def test_find_anwser_in_list_seen
    actrul = find_anwser_in_list(20,[6,2,1,3,4,12,9],Set.new([6,2,8]))
    assert_equal actrul,[8,12]
  end

  def test_find_anwser_in_list_never_seen
    actrul = find_anwser_in_list(20,[1,2,4,5,7,8,123,6,2,1,3,4,12,9],Set.new)
    assert_equal actrul,[8,12]
  end
end
