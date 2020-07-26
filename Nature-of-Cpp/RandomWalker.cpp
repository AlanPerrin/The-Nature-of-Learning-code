#include <filesystem>
#include <sdl/SDL.h>


int main(int argc, char *argv[]) {
int screenx = 1000;
int screeny = 600;
bool gameOver = false;
SDL_Rect playerRect;

SDL_Event event;
SDL_Window *window;
SDL_Renderer *renderer;

SDL_Init(SDL_INIT_VIDEO);

window = SDL_CreateWindow( "Game like Pygame", 20, 50, screenx, screeny, 0 );
renderer = SDL_CreateRenderer( window, -1, 0 );

playerRect.w = 64;
playerRect.h = 64;
playerRect.x = 200;
playerRect.y = 200;

while (gameOver == false) {
if (SDL_PollEvent(&event) != 0) {
     if (event.type == SDL_QUIT) {gameOver = true;}
} // SDL_PollEvent
SDL_SetRenderDrawColor(renderer,0,0,0,255);
SDL_RenderClear(renderer);

SDL_SetRenderDrawColor(renderer,255,0,0,255);
SDL_RenderFillRect(renderer, &playerRect);

playerRect.x = playerRect.x + 5;
playerRect.y = playerRect.y + 2;

if (playerRect.x > screenx) {playerRect.x=0;}
if (playerRect.y > screeny) {playerRect.y=0;}

SDL_RenderPresent(renderer);
SDL_Delay(30);
} // while gameOver == false

SDL_DestroyRenderer(renderer);
SDL_DestroyWindow(window);

SDL_Quit();
return 0;

}

