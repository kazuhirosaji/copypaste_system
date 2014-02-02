# encoding: utf-8
$:.unshift File.dirname(__FILE__)
require "developer"
class StarDeveloper < Developer
  private
  def wakeup
    "早朝に起きる"
  end
  def goto_work
    "早朝に出社して業務開始まで趣味の勉強・開発をする"
  end
  def work
    "フレームワークを作成する。高難度のコードを製造する。レビューをする。ゴミコードをすべて修正する"
  end
  def spend_time_alone_at_home
    "趣味の開発をする"
  end
end
