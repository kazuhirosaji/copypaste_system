# encoding: utf-8

class Developer
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
    raise "not implement"
  end

  def eat_breakfast
    "食事をとる"
  end

  def goto_work
    raise "not implement"
  end

  def work
    raise "not implement"
  end

  def work_overtime_until_the_last_train
    "終電まで残業する"
  end

  def go_to_home
    "帰宅する"
  end

  def spend_time_alone_at_home
    raise "not implement"
  end

  def go_to_bed
    "就寝する"
  end
end
