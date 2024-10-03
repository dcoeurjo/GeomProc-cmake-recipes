FetchContent_Declare(
	stb_image_write
    URL https://raw.githubusercontent.com/nothings/stb/5736b15f7ea0ffb08dd38af21067c314d6a3aae9/stb_image_write.h
    DOWNLOAD_NO_EXTRACT TRUE
)

FetchContent_MakeAvailable(stb_image_write)
FetchContent_GetProperties(stb_image_write)

include_directories(${stb_image_write_SOURCE_DIR})

FetchContent_Declare(
	stb_image
    URL https://raw.githubusercontent.com/nothings/stb/5736b15f7ea0ffb08dd38af21067c314d6a3aae9/stb_image.h
    DOWNLOAD_NO_EXTRACT TRUE
)

FetchContent_MakeAvailable(stb_image)
FetchContent_GetProperties(stb_image)

include_directories(${stb_image_SOURCE_DIR})
