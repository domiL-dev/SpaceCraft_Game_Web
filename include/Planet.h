#pragma once
#include "header.h"
#include "LTexture.h"
class Planet
{
public:
	//The dimensions of the planet
	static const int PLANET_WIDTH = 300;
	static const int PLANET_HEIGHT = 300;

	//create object planet_texture from Class LTexture
	//LTexture planet_texture;

	//Initializes the variables
	Planet();

	// getter Methods for PlanetCenterPosition
	int getmPosX();
	int getmPosY();

	//Shows the Planet on the screen
	void render(LTexture& planet_texture);

	//returns Planet health
	Uint8 get_health();

	//decrease health trough damage
	void damage(collision_type type);

private:
	int mPosX, mPosY;

	int health;
};

