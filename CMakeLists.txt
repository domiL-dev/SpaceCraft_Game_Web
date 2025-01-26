cmake_minimum_required(VERSION 3.10)
project(SpaceCraft_Game)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Emscripten setup
if(EMSCRIPTEN)
    set(CMAKE_TOOLCHAIN_FILE $ENV{EMSDK}/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake)
endif()

# Include Directories
include_directories(
    C:/VC_lib/SDL2-2.28.5/include
    C:/VC_lib/SDL2_image-2.8.0/include
    C:/VC_lib/SDL2_ttf-2.22.0/include
    C:/VC_lib/eigen-3.4.0
    include  # Include directory for project headers
)



# Source files
set(SOURCES
    src/ACCvector.cpp
    src/Enemy.cpp
    src/Functions.cpp
    src/LaserShot.cpp
    src/LTexture.cpp
    src/Math_Functions.cpp
    src/Planet.cpp
    src/SpaceCraft.cpp
    src/UI.cpp
    Space_ship.cpp  # Main entry point in root
)

# Define the executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Link libraries
if(EMSCRIPTEN)
    # For Emscripten, we specify libraries differently
    # target_link_libraries(${PROJECT_NAME} SDL2main SDL2 SDL2_image SDL2_ttf)
    
    # Emscripten specific flags and preload assets
    set_target_properties(${PROJECT_NAME} PROPERTIES
        SUFFIX ".html"

       LINK_FLAGS "-s USE_SDL=2 -s USE_SDL_IMAGE=2 -s SDL2_IMAGE_FORMATS=\"png\" -s USE_SDL_TTF=2 --preload-file ../SpaceCraft_Game@/SpaceCraft_Game"
 
#        LINK_FLAGS "-s USE_SDL=2 -s USE_SDL_IMAGE=2 -s SDL2_IMAGE_FORMATS='["png"]' -s USE_SDL_TTF=2 --preload-file ../SpaceCraft_Game@/SpaceCraft_Game"
    )
else()

	# Link Directories
 	link_directories(
    		C:/VC_lib/SDL2-2.28.5/lib/x64
    		C:/VC_lib/SDL2_image-2.8.0/lib/x64
    		C:/VC_lib/SDL2_ttf-2.22.0/lib/x64
)
    # For Windows (Visual Studio), link the pre-built libraries
    target_link_libraries(${PROJECT_NAME} SDL2main SDL2 SDL2_image SDL2_ttf)
endif()

# Optional: If you need to compile SDL2 with Emscripten
# if(EMSCRIPTEN)
#     add_subdirectory(C:/VC_lib/SDL2-2.28.5)
#     set(SDL2MAIN_LIBRARY SDL2main)
#     set(SDL2_LIBRARY SDL2)
# endif()