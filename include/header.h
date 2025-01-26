#pragma once
#include <SDL.h>
#include <SDL_image.h>
#include <SDL_ttf.h>
#include <stdio.h>
#include <string>
#include <array>
#include <vector>
#include <memory>
#include <cmath>


//Screen dimension constants
static int SCREEN_WIDTH = 832;//832;//640;
static int SCREEN_HEIGHT = 624;//624;//480;


//LaserShot length
static int LaserShot_length = 5;

const double G = 6.674 * pow(10, -11);

//length faktor vor Visualizing Acceleration Vektors
const double AccLengthFaktor = 10.0;

//enumerations
enum collision_type {no_collision, with_lasershot, with_spacecraft, with_planet, with_enemy};


// Declare extern variables
extern SDL_Window* gWindow;
extern SDL_Renderer* gRenderer;







