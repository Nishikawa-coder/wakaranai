class Drink
    def initialize# ここにメソッドの定義
      @menu = {
        cola: 150,
        beer: 300,
        water: 90
      }
      @total=0
    end
    
    def buy(name)
      @name=name
      puts "#{name}"
      @total=@total+@menu[@name.to_sym]
    end
    
    def total
      "合計金額は#{@total}です！"#'合計金額は'+@menu[@name.to_sym]+'です！'←これだと×
    end
        
    
  end
  
  drink = Drink.new
  drink.buy("cola")
  drink.buy("cola")
  drink.buy("beer")
  drink.buy("beer")
  drink.buy("water")
  drink.buy("water")
  
  puts drink.total