# encoding: utf-8
require "spec_helper"
require_relative "../type"

system('ruby tmgen.rb') if @type == 2

if [0,1,2].include? @type
  require "normal_developer"
elsif @type == 3
  require "developers"
else
  raise "invalid type #{@type}"
end

describe NormalDeveloper do
  context :spend_day do
    cases = [
      {
        case_no: 1,
        case_title: "valid case",
        expected: [
          "起きる",
          "食事をとる",
          "余裕を持って出社する",
          "当たり障りなくコーディングする",
          "終電まで残業する",
          "帰宅する",
          "リラックスする",
          "就寝する",
        ]
      },
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          developer = NormalDeveloper.new

          # -- when --
          actual = developer.spend_day

          # -- then --
          expect(actual).to eq(c[:expected])
        ensure
          case_after c
        end
      end

      def case_before(c)
        # implement each case before
      end

      def case_after(c)
        # implement each case after
      end
    end
  end

end
