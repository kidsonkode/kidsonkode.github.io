require 'ncurses'


Ncurses.initscr
Ncurses.cbreak

def moving(scr)
  scr.clear() # clear screen
  loop do
    scr.move(rand(50),rand(50)) # move cursor
    scr.addstr(["*", '.', '#'].sample)
    scr.refresh() # update screen
    sleep 0.0005
  end
end


begin
  moving(Ncurses.stdscr)
ensure
  Ncurses.echo
  Ncurses.nocbreak
  Ncurses.nl
  Ncurses.endwin
end

