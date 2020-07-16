from graphics import *

def main():
    win = GraphWin("my window", 500, 500)
    
    win.getMouse()
    win.close()
    
main()

circle = Circle((250, 400),60)
circle.draw(win)
circle.fill = Color("pink")
