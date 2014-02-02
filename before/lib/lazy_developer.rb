# encoding: utf-8

class LazyDeveloper
  # 一日を過ごす
  def spend_day
    acts = []
    acts << wakeup
    acts << eat_breakfast
    acts << goto_work
    acts << work
    acts << work_overtime_until_the_last_train
    acts << go_to_home
    acts << spend_time_alone_at_home
    acts << go_to_bed
    acts
  end

  private
  def wakeup
    "出社ギリギリに起きる"
  end

  def eat_breakfast
    "食事をとる"
  end

  def goto_work
    "バタバタと出社する"
  end

  def work
    "コピペでゴミコードを量産する"
  end

  def work_overtime_until_the_last_train
    "終電まで残業する"
  end

  def go_to_home
    "帰宅する"
  end

  def spend_time_alone_at_home
    "帰宅後ダラダラ過ごす"
  end

  def go_to_bed
    "就寝する"
  end
end
