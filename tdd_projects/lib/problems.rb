
class Array
    def my_uniq
        resarr = []
        self.each do |ele|
            resarr << ele unless resarr.include?(ele)
        end
        resarr
    end

    def two_sum
        resarr = []
        self.each_with_index do | num_1, i |
            self.each_with_index do | num_2, j |
                if num_1 + num_2 == 0 && j > i 
                    resarr << [i, j]
                end
            end 
        end
        resarr
    end


    def my_transpose
        resarr = Array.new(self.length) {[]}
        return nil if self.any? {|row| self.length != row.length}

        self.each_with_index do |row, i|
            row.each_with_index do |ele, j|
                resarr[j] << ele 
            end
        end
        resarr
    end

    def stock_picker
        max_price = []
        return nil if self.empty?
        self.each_with_index do |buy, i|
            self.each_with_index do |sell, j|
                max_price = [i, j, sell - buy] if j > i && (max_price == [] || sell - buy > max_price[2])
                
            end
        end
        max_price[0..1]
    end

end