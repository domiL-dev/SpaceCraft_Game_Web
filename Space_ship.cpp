

//Using SDL, SDL_image, standard IO, and strings
#include <SDL.h>
#include <SDL_image.h>
#include <stdio.h>
#include <string>
#include <SDL_ttf.h>
#include <fstream>
#include <iostream>
#include <tuple>

//update Code to compile for Web with Emscripten
#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#endif

//Headers
#include "header.h"
#include "Math_Functions.h"
#include "LTexture.h"
#include "LTimer.h"
#include "Planet.h"
#include "SpaceCraft.h"
#include "Enemy.h"
#include "ACCvector.h"
#include "LaserShot.h"
#include "Enemy.h"
#include "UI.h"

#include <cstdlib>



//Starts up SDL and creates window
//bool init();

//Loads media
bool loadMedia();

//Frees media and shuts down SDL
void close();



//The window we'll be rendering to
SDL_Window* gWindow = NULL;

//The window renderer
SDL_Renderer* gRenderer = NULL;

//Create UI object
UI gUI;



//Scene textures
LTexture planet_texture;


//Charakter-Spacecraft textures
LTexture gSpaceCraftTexture;

//Enemy-Spacecraft texture
LTexture gEnemyTexture;

//Counter Enemies destroyed
LTexture gEnemiesDestroyedTextTexture;

//Start Game text Texture
LTexture gStartGameTexture;

//Digits 0-9 Texture vector
std::vector<LTexture> gDigits_Texture(10);

//Explosion Texture Vector containing 4 objects 0->3 = small to big
std::vector<LTexture> gExplosionTexture(4);


int n = 0; 
int frame_SDL_PollEvent = 0;
int cnt_Enemies = 0;
int Enemies_at_once = 1;
int Enemies_destroyed = 0;
int spawning_delay = 100;
bool Enemy_just_destroyed = false;
int spawning_delay_counter = spawning_delay;

int delay_LaserShot = 5;

//Text to display
std::wstring cnt_Enemies_text = L"ENEMIES DESTROYED : ";

//Text start game
std::wstring start_Game_text = L"Press Enter to start Game";


//initialize variables for gameloop globally
#pragma region MyCustomRegion
	//Main loop flag
	bool quit = false;



	//Flag to create a Laser Object
	bool Laser_fired = false;

	//Vector for Laser Objects
	std::vector <std::unique_ptr<LaserShot>> LaserShots;

	/*-----------------------------------------------------------------------*/
				//Vector for Enemy Objects
	std::vector <std::unique_ptr<Enemy>> Enemies;
	/*-----------------------------------------------------------------------*/

				//Event handler
	SDL_Event e;

	//Create UI object
	//UI gUI();

	//The SpaceCraft that will be moving around on the screen
	SpaceCraft SpaceCraft;

	//The Planet wich will apppear
	Planet planet;

	//Accelration Vectors
	ACCvector acceleration;

	//Flags for Menu logic
	bool menu = true;
	bool gameloop = false;
#pragma endregion



//LTexture gBackgroundTexture;

//______________________________________________________________

//The SpaceCraft that will move around on the screen


//SpaceCraft methods implementation


//_______________________________________________________________

/* bool init()
bool init()
{
	//Initialization flag
	bool success = true;

	//Initialize SDL
	if (SDL_Init(SDL_INIT_VIDEO) < 0)
	{
		printf("SDL could not initialize! SDL Error: %s\n", SDL_GetError());
		success = false;
	}
	//Initialize SDL_tff
	else if (TTF_Init()) {
		printf("SDL tff could not initialize! SDL Error: %s\n", SDL_GetError());
		success = false;
	}
	else
	{
		//Set texture filtering to linear
		if (!SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, "1"))
		{
			printf("Warning: Linear texture filtering not enabled!");
		}

		//Create window
		gWindow = SDL_CreateWindow("SpaceCraft_Game", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_RESIZABLE);
		if (gWindow == NULL)
		{
			printf("Window could not be created! SDL Error: %s\n", SDL_GetError());
			success = false;
		}
		else
		{
			//Create vsynced renderer for window
			gRenderer = SDL_CreateRenderer(gWindow, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
			if (gRenderer == NULL)
			{
				printf("Renderer could not be created! SDL Error: %s\n", SDL_GetError());
				success = false;
			}
			else
			{
				//Initialize renderer color
				SDL_SetRenderDrawColor(gRenderer, 0xFF, 0xFF, 0xFF, 0xFF);

				//Initialize PNG loading
				int imgFlags = IMG_INIT_PNG;
				if (!(IMG_Init(imgFlags) & imgFlags))
				{
					printf("SDL_image could not initialize! SDL_image Error: %s\n", IMG_GetError());
					success = false;
				}
			}
		}
	}

	return success;
}
*/

bool loadMedia()
{

	typedef struct {
		int numbers;
		std::string type, name, format, object_name;

	}media_data;

	media_data info;
	

	std::fstream textfile;

	std::string line;
	textfile.open("SpaceCraft_Game/load_media.txt", std::fstream::in);
		//textfile >> s;
	if (textfile.is_open())
	{

		while (std::getline(textfile, line))
		{
			std::stringstream ss(line);
			std::string token;
			std::vector<std::string> data;
			while (std::getline(ss, token, ',')) {
				data.push_back(token);
			}
			std::tie(info.numbers, info.type, info.name, info.format, info.object_name) = std::make_tuple(std::stoi(data[0]), data[1], data[2], data[3], data[4]);
			std::cout << info.numbers << info.type << info.name << info.format << info.object_name << std::endl;
		}
	}

	textfile.close();

	

	//Loading success flag
	bool success = true;

	//Load Planet texture
	if (!planet_texture.loadFromFile("SpaceCraft_Game/Planet.png"))
	{
		printf("Failed to load Planet texture!\n");
		success = false;
	}

	//Load SpaceCraft texture
	if (!gSpaceCraftTexture.loadFromFile("SpaceCraft_Game/space_craft5.png"))
	{
		printf("Failed to load SpaceCraft texture!\n");
		success = false;
	}

	//Load EnemySpaceCraft texture
	if (!gEnemyTexture.loadFromFile("SpaceCraft_Game/Enemy_Texture_2.png"))
	{
		printf("Failed to load Enemy SpaceCraft texture!\n");
		success = false;
	}

	//Load Explosion texture
	for (int i = 0; i < 4; i++) {
		if (!gExplosionTexture[i].loadFromFile("SpaceCraft_Game/Explosion_" + std::to_string(i+1) + ".png"))
		{
			printf("Failed to load Explosion texture nr.!\n");
			std::cout << std::to_string(i + 1) << std::endl;
			success = false;
		}
	}
	//Load Text Texture (ENEMIES DESTROYED : )
	if (!gEnemiesDestroyedTextTexture.loadFromFile("SpaceCraft_Game/EnemiesDestroyed.png")) {
		printf("Failed to load Enemies destroyed counter texture!\n");
			success = false;
	}

	//Load Text Texture (Start Game : )
	if (!gStartGameTexture.loadFromFile("SpaceCraft_Game/StartScreen.png")) {
		printf("Failed to load start Game text texture!\n");
		success = false;
	}


	

	//Load digit Texture
	for (int i = 0; i < gDigits_Texture.size(); i++) {

		std::wstring Digit = std::to_wstring(i);

		if (!gDigits_Texture[i].loadFontFromFile("SpaceCraft_Game/fonts/Air_Americana.ttf", Digit)){
			printf("Failed to load Digit texture!\n");
				success = false;
	    }
	}

	printf("311\n");

	return success;
}


void close()
{
	printf("319\n");
	//Free loaded images
	gSpaceCraftTexture.free();
	planet_texture.free();
	gEnemiesDestroyedTextTexture.free();
	gStartGameTexture.free();

	for (auto& element : gDigits_Texture) {
			element.free();
	}

	for (auto& element : gExplosionTexture) {
		element.free();
	}
	//Destroy window	
	SDL_DestroyRenderer(gRenderer);
	SDL_DestroyWindow(gWindow);
	gWindow = NULL;
	gRenderer = NULL;

	//Quit SDL subsystems
	IMG_Quit();
	SDL_Quit();
}


//update code to compile for web with emscripten
static void mainloop(void)
{

	if (quit) {
		close();
		#ifdef __EMSCRIPTEN__
		emscripten_cancel_main_loop();  /* this should "kill" the app. */
		#else
		exit(0);
		#endif
	}

	//while (!quit) { this is handled above
	//	if (menu && !quit) {

			if (!gameloop && !quit) {
				printf("2 !gameloop && !quit; true");
				gStartGameTexture.render(0, 0);
				while (SDL_PollEvent(&e) != 0)
				{
					//User requests quit
					if (e.type == SDL_QUIT)
					{
						quit = true;
					}
					else if (e.key.keysym.sym == SDLK_RETURN)
					{
						gameloop = true;
						menu = false;
					}
				}
				SDL_RenderPresent(gRenderer);
			}


			//While application is running
			if (gameloop && !quit)
			{


				//Handle events on queue
				while (SDL_PollEvent(&e) != 0)
				{
					//User requests quit
					if (e.type == SDL_QUIT)
					{
						quit = true;
					}
					else if (e.key.keysym.sym == SDLK_ESCAPE)
					{
						menu = !menu;
						gameloop = false;
					}
					else if (e.key.keysym.sym == SDLK_v)
					{
						acceleration.toggle_showAccVector();

					}
					else if (e.key.keysym.sym == SDLK_SPACE)
					{
						if (frame_SDL_PollEvent > delay_LaserShot) {
							Laser_fired = true;
							frame_SDL_PollEvent = 0;
						}
					}
					frame_SDL_PollEvent++;
					//Handle input for the SpaceCraft
					SpaceCraft.handleEvent(e);
					//SpaceCraft.rotation_Matrix();
				}

				/*_____________________________________________________________________________________________________________*/
				//create LaserShot Object when Space was pressed - store in specified vector - reset Flag
				if (Laser_fired) {
					for (auto& element : LaserShots) {
						if (element == nullptr) {
							element = std::move(std::make_unique<LaserShot>(SpaceCraft.getCenterCoords(gSpaceCraftTexture), SpaceCraft.getLaserVelCoords()));
							Laser_fired = false;
							//std::cout << &element << std::endl;
						}
					}
					if (Laser_fired) {
						LaserShots.push_back(std::move(std::make_unique<LaserShot>(SpaceCraft.getCenterCoords(gSpaceCraftTexture), SpaceCraft.getLaserVelCoords())));
						Laser_fired = false;
					}

					//std::cout << "Size of LaserShots: " << LaserShots.size() << std::endl;

				}
				/*_____________________________________________________________________________________________________________*/
				if (Enemy_just_destroyed) {

					spawning_delay_counter--;
					if (spawning_delay_counter == 0) {
						Enemy_just_destroyed = false;
						spawning_delay_counter = spawning_delay;
					};
				}

				//create Enemy Object
				if (cnt_Enemies < Enemies_at_once && !Enemy_just_destroyed) {
					bool create_Enemy = true; // Flag for logic inside if Statement
					//create LaserShot Object when Space was pressed - store in specified vector - reset Flage
					for (auto& element : Enemies) {
						if (element == nullptr) {
							element = std::move(std::make_unique<Enemy>());
							cnt_Enemies++;
							create_Enemy = false;
							//std::cout << &element << std::endl;
						}
					}
					if (create_Enemy) {
						Enemies.push_back(std::move(std::make_unique<Enemy>()));
						cnt_Enemies++;
						create_Enemy = false;
					}
					//std::cout << "Size of Enemies: " << Enemies.size() << std::endl;
					//std::cout << "cnt_Enemies: " << cnt_Enemies << std::endl;
				}
				/*_____________________________________________________________________________________________________________*/



							//Move the SpaceCraft
				SpaceCraft.move(planet, gSpaceCraftTexture, planet_texture);

				//Clear screen
				SDL_SetRenderDrawColor(gRenderer, 0x00, 0x00, 0x00, 0x00);
				SDL_RenderClear(gRenderer);

				// render Laser Shots
				if (!LaserShots.empty()) {
					for (auto& element : LaserShots) {
						if (element != nullptr) {
							element->render(gRenderer);
							element->move();
						}
					}
				}

				// render Enemies
				if (!Enemies.empty()) {
					for (auto& element : Enemies) {
						if (element != nullptr) {
							element->render(gRenderer, gEnemyTexture, gExplosionTexture);
							/*_________________________________________________________________________________________*/

							if (acceleration.get_showAccVector()) {
								//Purpose -> Collision detection, Visualize the skeleton => when laser hits the skelleton than sets collision_detected to true
								int x1 = Texture_Boundaries(Bottom_X, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);
								int y1 = Texture_Boundaries(Bottom_Y, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);
								int x2 = Texture_Boundaries(Top_X, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);
								int y2 = Texture_Boundaries(Top_Y, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);

								int vertical_x1 = Texture_Boundaries(Left_X, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);
								int vertical_y1 = Texture_Boundaries(Left_Y, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);
								int vertical_x2 = Texture_Boundaries(Right_X, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);
								int vertical_y2 = Texture_Boundaries(Right_Y, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);

								//system("cls");
								/*std::cout << element->get_mAlpha() << std::endl;
								if (std::tan(element->get_mAlpha() * M_PI / 180) != INFINITY) {
									std::cout << std::tan(element->get_mAlpha() * M_PI / 180) << std::endl;
								}*/

								SDL_SetRenderDrawColor(gRenderer, 0, 255, 0, 255);
								SDL_RenderDrawLine(gRenderer, x1, y1, x2, y2);
								SDL_RenderDrawLine(gRenderer, vertical_x1, vertical_y1, vertical_x2, vertical_y2);
							}
							/*_________________________________________________________________________________________*/
						}
					}
				}

				//render objects that need to be in background
				planet.render(planet_texture);
				//renders digit value next to "Enemies Destroyed: "
				gUI.render_cnt_Enemies_Destroyed(gEnemiesDestroyedTextTexture, gDigits_Texture);

				//Render objects
				SpaceCraft.render(gRenderer, gSpaceCraftTexture);

				if (acceleration.get_showAccVector()) {
					acceleration.render(gRenderer, gSpaceCraftTexture, planet_texture, SpaceCraft, planet);
				}

				//SpaceCraft.renderAccDirection(gRenderer);

	/*_______________________________________________________________________________________________________*/
				//destroy Laser Shots when out of bounds
				if (!LaserShots.empty()) {
					for (auto& element : LaserShots) {

						if (element != nullptr) {
							int x, y = 0;
							x = element->getX_bottom();
							y = element->getY_bottom();

							if (x < 0 || x > SCREEN_WIDTH || y < 0 || y > SCREEN_HEIGHT)
								element.reset();
						}
					}
				}
				/*_________________________________________________________________________________________________________*/
							//destroy Enemy when collision detected
				if (!Enemies.empty()) {
					for (auto& element : Enemies) {

						if (element != nullptr) {
							int x, y{ 0 };
							x = element->get_mPosX() + gEnemyTexture.getCenterX();
							y = element->get_mPosY() + gEnemyTexture.getCenterY();

							//collision detection Enemey with Planet
							if (x < (SCREEN_WIDTH / 2 + 50) && x >(SCREEN_WIDTH / 2 - 50) && y < SCREEN_HEIGHT / 2 + 50 && y > SCREEN_HEIGHT / 2 - 50) {
								element->set_collision_detected();
								element->set_collision_with_enemy();

								std::cout << "health : " << static_cast<int>(planet.get_health());
							}

							//collision detection Enemy with Charakter SpaceCraft
							int x_SpaceCraft = SpaceCraft.getmPosX() + gSpaceCraftTexture.getCenterX();
							int y_SpaceCraft = SpaceCraft.getmPosY() + gSpaceCraftTexture.getCenterY();

							/*if (abs(x - x_SpaceCraft) < gEnemyTexture.getWidth() / 2 + gSpaceCraftTexture.getWidth() / 2
								&& abs(y - y_SpaceCraft) < gEnemyTexture.getHeight()/2 + gSpaceCraftTexture.getHeight()/2
								&& !(element->get_collision_detected())) {
							*/

							if (!(element->get_collision_detected())) {

								int A_x = Texture_Boundaries(Bottom_X, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);
								int A_y = Texture_Boundaries(Bottom_Y, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);

								int B_x = Texture_Boundaries(Right_X, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);
								int B_y = Texture_Boundaries(Right_Y, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);

								int D_x = Texture_Boundaries(Left_X, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);
								int D_y = Texture_Boundaries(Left_Y, element->get_mPosX(), element->get_mPosY(), element->get_mAlpha(), gEnemyTexture);


								if (point_within_area(x_SpaceCraft, y_SpaceCraft, A_x, A_y, B_x, B_y, D_x, D_y)) {
									element->set_collision_detected();
									element->set_collision_with_spacecraft();
								}
								for (auto& lasershot : LaserShots) {
									if (lasershot != nullptr) {
										int x_Laser_top = lasershot->getX_top();
										int y_Laser_top = lasershot->getY_top();
										int x_Laser_bottom = lasershot->getX_bottom();
										int y_Laser_bottom = lasershot->getY_bottom();

										//std::cout << "x_SpaceCraft: " << x_SpaceCraft << std::endl << "y_SpaceCraft: " << y_SpaceCraft << std::endl;
										if (point_within_area(x_Laser_top, y_Laser_top, A_x, A_y, B_x, B_y, D_x, D_y)
											|| point_within_area(x_Laser_bottom, y_Laser_bottom, A_x, A_y, B_x, B_y, D_x, D_y)) {
											element->set_collision_detected();
											element->set_collision_with_lasershot();

										}
									}
								}
							}

							if (element->get_exploded()) {

								switch (element->get_collision_type()) {

								case with_lasershot: gUI.increment_cnt_Enemies_Destroyed();
									break;

								case with_spacecraft: gUI.increment_cnt_Enemies_Destroyed();
									/*update damage to spacecraft*/
									break;

								case with_planet: /*update damage to planet*/
									break;

								case with_enemy:
									break;

								case no_collision:
									break;

								}
								if (element->get_collision_type() == with_enemy) {
									planet.damage(with_enemy);
								}
								element.reset();
								cnt_Enemies--;
								Enemy_just_destroyed = true;
								spawning_delay -= 10;


								//increase Enemies spwaning at once after 10 destroyed Enemies
								if (++Enemies_destroyed % 10 == 0 && Enemies_destroyed != 0) {
									Enemies_at_once++;
									spawning_delay = 100;
								}
								/*std::cout << "Enemies destroyed: " << Enemies_destroyed << std::endl;
								std::cout << "spawning_delay: " << spawning_delay << std::endl;
								std::cout << "Enemies at once: " << Enemies_at_once << std::endl;*/
							}
						}
					}
				}


				gUI.render_health_bar(planet.get_health());

				//avoid growing vector large in size
				/* if (LaserShots.size() == 3) {
					LaserShots.clear();
				}
				std::cout << "LaserShots - Size: " << LaserShots.size() << std::endl;
				*/



				//Update screen
				SDL_RenderPresent(gRenderer);




				//debug-test________________________
				//std::cout << "SpaceCraft CenterCoords: " << SpaceCraft.getCenterCoords(gSpaceCraftTexture).at(0) << std::endl;


			}
	//	} menu && !quit loop
	//} !quit loop


}



int main(int argc, char* args[])
{
#ifdef __EMSCRIPTEN__
	printf("Emscripten is defined :)");
#endif
	//Start up SDL and create window
	if (!gUI.init())
	{
		printf("Failed to initialize!\n");
	}
	else
	{	
		//for test/experiment purpose
		gWindow = gUI.get_m_window();
		gRenderer = gUI.get_m_renderer();
		//Load media
		if (!loadMedia())
		{
			printf("Failed to load media!\n");
		}
		else
		{
			//initializing the game complete
			//updated code to compile for web with emscripten
			#ifdef __EMSCRIPTEN__
			emscripten_set_main_loop(mainloop, 0, 1);
			#else
			while (!quit) { mainloop(); }
			#endif

	}
}
	//Free resources and close SDL
	//close(); this is handled in the mainloop()

	return 0;
}
