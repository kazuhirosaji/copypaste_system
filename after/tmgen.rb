
class Generater
  # ファイルデータの作成
  def create_file(file)
    @output = ""

    open(file) do |f|
      load_declar(f)

      @ignore_func = false
      while line = f.gets
        @output << load_funcs(line)
      end
    end
  end

  # ファイルに書き込み
  def save_file(file)
    f = File.open(file, "w") {|f|f.puts @output}
  end

  # 宣言部分の作成
  def load_declar(f)
    @output = "# encoding: utf-8\r\n"
    @output += "$:.unshift File.dirname(__FILE__)\r\n"
    @output += "require \"developer\"\r\n"

    while line = f.gets
      next if comment_or_empty_line?(line)

      # class 宣言までを取り込み
      if line.index("class")
        @output += line.chomp + " < Developer\r\n"
        return
      end
    end
  end

  # 関数実装部分の取り込み
  def load_funcs(line)
    return "" if comment_or_empty_line?(line)

    if @ignore_func
      if line.chomp.strip == "end"
        @ignore_func = false
      end
      return ""
    else
      patterns = [
      "def spend_day", 
      "def eat_breakfast", 
      "def work_overtime_until_the_last_train",
      "def go_to_home",
      "def go_to_bed"]
      patterns.each { |str|
        if line.index(str)
          @ignore_func = true
          return ""
        end
      }
    end
    line
  end

end

def comment_or_empty_line?(line)
  line.strip.index("#") == 0 || line.chomp.size == 0
end

# 実行処理
cur = File.dirname(__FILE__)

BEFORE_DIR =  "#{cur}/../before/lib/"
AFTER_DIR = "#{cur}/lib/"

generater = Generater.new()

["lazy", "normal", "star"].each do |type|
  file_name = "#{type}_developer.rb"
  generater.create_file("#{BEFORE_DIR}#{file_name}")
  generater.save_file("#{AFTER_DIR}#{file_name}")
end
