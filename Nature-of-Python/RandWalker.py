import pygame
import random

pygame.init()

#========= Setup
#===== Canvas
winHeight = 500
winWidth = 500
win = pygame.display.set_mode((winHeight, winWidth))
pygame.display.set_caption('RandWalker')

#===== Inner mechanics
clock = pygame.time.Clock()
closing = False

#========= Elements

posX = int(winWidth / 2)
posY = int(winHeight / 2)
         
def PrettyRec():
    pygame.draw.rect(win,(255, 255, 255),[posX, posY, 50, 50])

def Walking():
    choice = int(random.randrange(4))
    if choice == 0:
        posX += 1
    elif choice == 1:
        posX -= 1
    elif choice == 2:
        posY += 1
    else:
        posY -= 1

#========= Game Loop
while not closing:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            closing = True
      #  print(x)
    PrettyRec()
    pygame.display.update()
    Walking()
    PrettyRec()
    clock.tick(30)

#========= Ending 
pygame.quit()
quit()
