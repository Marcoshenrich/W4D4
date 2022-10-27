
class Array
    def my_uniq
        resarr = []
        self.each do |ele|
            resarr << ele unless resarr.include?(ele)
        end
        resarr
    end
end