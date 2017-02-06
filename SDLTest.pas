program Chapter5_SDL2;

uses SDL2;

var
i : integer;
sdlWindow1 : PSDL_Window;
sdlRenderer : PSDL_Renderer;
sdlRect1 : PSDL_Rect;
sdlPoints1 : array[0..499] of PSDL_Point;

begin

  //initilization of video subsystem
  if SDL_Init( SDL_INIT_VIDEO ) < 0 then HALT;

  sdlWindow1 := SDL_CreateWindow( 'Window1', 50, 50, 500, 500, SDL_WINDOW_SHOWN );
  if sdlWindow1 = nil then HALT;

  sdlRenderer := SDL_CreateRenderer( sdlWindow1, -1, 0 );
  if sdlRenderer = nil then HALT;
  
SDL_SetRenderDrawColor( sdlRenderer, 0, 255, 255, 255 );
  SDL_RenderClear( sdlRenderer );
  SDL_RenderPresent ( sdlRenderer );
  SDL_Delay( 1000 );
  
  
  SDL_SetRenderDrawColor( sdlRenderer, 255, 0, 0, 255 );
  SDL_RenderDrawLine( sdlRenderer, 100, 100, 200, 100 );
  SDL_RenderPresent ( sdlRenderer );
  
  SDL_SetRenderDrawColor( sdlRenderer, 255, 0, 0, 255 );
    SDL_RenderDrawLine( sdlRenderer, 200, 100, 200, 200 );
  SDL_RenderPresent ( sdlRenderer );
  
  SDL_SetRenderDrawColor( sdlRenderer, 255, 0, 0, 255 );
    SDL_RenderDrawLine( sdlRenderer, 200, 200, 100, 200 );
  SDL_RenderPresent ( sdlRenderer );
  
  SDL_SetRenderDrawColor( sdlRenderer, 255, 0, 0, 255 );
    SDL_RenderDrawLine( sdlRenderer, 100, 200, 100, 100 );

  SDL_RenderPresent ( sdlRenderer );
  SDL_Delay( 1000 );

  SDL_RenderClear( sdlRenderer );
  SDL_DestroyRenderer( sdlRenderer );
  SDL_Delay( 1000 );
  SDL_DestroyWindow ( sdlWindow1 );

  //shutting down video subsystem
  SDL_Quit;

end.
