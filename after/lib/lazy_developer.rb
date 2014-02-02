# encoding: utf-8
$:.unshift File.dirname(__FILE__)
require "developer"
class LazyDeveloper < Developer
  private
  def wakeup
    "出社ギリギリに起きる"
  end
  def goto_work
    "バタバタと出社する"
  end
  def work
    "コピペでゴミコードを量産する"
  end
  def spend_time_alone_at_home
    "帰宅後ダラダラ過ごす"
  end
end
