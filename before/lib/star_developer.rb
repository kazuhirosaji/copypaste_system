# encoding: utf-8

class StarDeveloper
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
    "早朝に起きる"
  end

  def eat_breakfast
    "食事をとる"
  end

  def goto_work
    "早朝に出社して業務開始まで趣味の勉強・開発をする"
  end

  def work
    "フレームワークを作成する。高難度のコードを製造する。レビューをする。ゴミコードをすべて修正する"
  end

  def work_overtime_until_the_last_train
    "終電まで残業する"
  end

  def go_to_home
    "帰宅する"
  end

  def spend_time_alone_at_home
    "趣味の開発をする"
  end

  def go_to_bed
    "就寝する"
  end
end
