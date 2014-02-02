# encoding: utf-8
$:.unshift File.dirname(__FILE__)
require "developer"
class NormalDeveloper < Developer
  private
  def wakeup
    "起きる"
  end
  def goto_work
    "余裕を持って出社する"
  end
  def work
    "当たり障りなくコーディングする"
  end
  def spend_time_alone_at_home
    "リラックスする"
  end
end
