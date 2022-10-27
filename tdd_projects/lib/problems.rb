
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

end