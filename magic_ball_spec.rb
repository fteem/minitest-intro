# magic_ball_spec.rb
require "minitest/autorun"
require "minitest/spec"
require_relative "magic_ball"

describe MagicBall do

  describe "#ask" do
    it "returns an answer" do
      magic_ball = MagicBall.new
      assert_includes MagicBall::ANSWERS, magic_ball.ask("Is Minitest awesome?")
    end

    it "predefined answers is array" do
      assert_kind_of Array, MagicBall::ANSWERS
    end

    it "predefined answers is not empty" do
      refute_empty MagicBall::ANSWERS
    end

    it "raises error when question is number" do
      assert_raises "Question has invalid format." do
        magic_ball = MagicBall.new
        magic_ball.ask(1)
      end
    end
  end

end
