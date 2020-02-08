class Cursor
   @x = uninitialized UInt8
   @y = uninitialized UInt8

   def x
      @x
   end
   def y
      @y
   end

   def moveto(c : Cursor)
      @x = c.x
      @y = c.y
   end

   def up
      if @y > 0
         @y -= 1
      end
   end

   def down
      @y += 1
   end

   def left
      if @x > 0
         @x -= 1
      end
   end

   def right
      @x += 1
   end

   def key(k : Char) : Bool
      case k
      when 'w'
         up
      when 'a'
         left
      when 's'
         down
      when 'd'
         right
      else
         return false
      end
      return true
   end
end

class GameBoard
   @@sentinel = 'Q'
   @@values = ['A', '&', 'C', '%', '?', '0', '*']
   @@reset = "\033[0m"
   @@default = "\033[34m"
   @@highlight = "\033[93m"
   @@valcol = "\033[91m"
   @board : Array(Array(Char))
   @selectedchar = 'A'

   def _select
      @selected.moveto(@cursor)
      @selectedchar = @board[@selected.y][@selected.x]
   end

   def initialize(@width : UInt8, @height : UInt8)
      @board = Array.new(@height) { Array.new(@width) { @@values[Random.rand(@@values.size)] } }
      @cursor = Cursor.new
      @selected = Cursor.new
      @moves = 0
      _select
   end

   def home
      print "\033[H"
   end

   def clear
      print "\033[3J\033[H\033[2J"
   end

   def resetty
      clear
      home
      print "\033[0m"
   end

   def draw
      resetty
      statuss
      puts @@default
      @board.each { |row|
         row.each { print "# " }
         puts
      }
   end

   def moveto(x : UInt8, y : UInt8)
      print "\033[#{y + 2};#{x * 2 + 1}f"
   end

   def statuss
      home
      print "#{@@reset}   Moves: #{@moves}  Selected: (#{@selected.x}, #{@selected.y}): '#{@selectedchar}'"
      home
   end

   def update(c : Char)
      x = @cursor.x
      y = @cursor.y
      val = @board[y][x]
      moveto(x, y)
      @cursor.key(c)
      if val == @@sentinel
         print " "
      else
         print "#{@@default}#"
      end
      moveto(@cursor.x, @cursor.y)
      if c == ' ' && val
         @moves += 1
         print @@valcol + val
         if val == @selectedchar
            @board[y][x] = @@sentinel
            sy = @selected.y
            sx = @selected.x
            @board[sy][sx] = @@sentinel
            print " "
            moveto(sx, sy)
            print " "
         end
         _select
      else
         print "#{@@highlight}X"
      end
      statuss
   end
end

module Memory
   board = GameBoard.new(20, 5)
   board.draw
   STDIN.noecho!
   c = uninitialized Char | Nil
   while true
      STDIN.raw!
      c = STDIN.read_char
      if c == 'q'
         break
      end
      STDIN.cooked!
      board.update(c || 'x')
   end
   STDIN.cooked!
   board.resetty
end
