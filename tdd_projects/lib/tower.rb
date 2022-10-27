class Tower
    attr_reader :board

    def initialize
        @board = [[3,2,1],[],[]]
    end

    def move(tower_1,tower_2)
        if valid_move?(tower_1,tower_2)
            @board[tower_2].push(@board[tower_1].pop)
        end
    end

    def valid_move?(tower_1,tower_2)
        if @board[tower_1].empty?
            return false
        elsif @board[tower_2].empty?
            return true
        elsif @board[tower_2].last < @board[tower_1].last
            return false
        end
        true
    end

    def won?
        total_disks = @board.count {|subarr| subarr.length}
        return true if @board.last.length == total_disks
        false
    end

end


