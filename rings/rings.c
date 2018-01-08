#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int convertRings(char * fileName) {
	FILE * inFile, * outFile;
	char * extPos;
	unsigned char * inRingsData, * outRingsData, * origInRingsData;
	unsigned char temp[4];
	int dataSize, ringCount, xPos, yPos, vertical, outDataSize, dataPos, dataPos2, xPos2;
	
	inFile = fopen(fileName, "rb");
	if (inFile == NULL) {
		printf("File %s could not be opened for reading\n", fileName);
		return 1;
	}
	
	fseek(inFile, 0, SEEK_END);
	dataSize = ftell(inFile) - 2;
	if (dataSize < 0 || dataSize % 2) {
		puts("The input rings data file is too small");
		fclose(inFile);
		return 1;
	}
	if (dataSize % 4) {
		dataSize -= 2; /* SonED2 edited file */
	}
	fseek(inFile, 0, SEEK_SET);
	
	inRingsData = malloc(dataSize);
	if (inRingsData == NULL) {
		printf("Memory of %d bytes could not be allocated\n", dataSize);
		fclose(inFile);
		return 1;
	}
	
	if (fread(inRingsData, dataSize, 1, inFile) != 1 && dataSize != 0) {
		puts("Error reading data");
		fclose(inFile);
		free(inRingsData);
		return 1;
	}
	
	fclose(inFile);
	extPos = strstr(fileName, ".bin");
	if (extPos == NULL) {
		puts("Invalid file name");
		free(inRingsData);
		return 1;
	}
	strcpy(extPos, "_INDIVIDUAL.bin");
	
	outDataSize = dataSize + 6; /* include starting 0000 0000 and end FFFF */
	for (dataPos = 2; dataPos < dataSize; dataPos += 4) {
		outDataSize += inRingsData[dataPos] >> 2 & 0x1C;
	}
	
	outRingsData = malloc(outDataSize);
	if (outRingsData == NULL) {
		printf("Memory of %d bytes could not be allocated\n", outDataSize);
		free(inRingsData);
		return 1;
	}
	
	*outRingsData++ = 0;
	*outRingsData++ = 0;
	*outRingsData++ = 0;
	*outRingsData++ = 0;
	origInRingsData = inRingsData; /* copy pointer for later use */
	
	for ( ; dataSize != 0; dataSize -= 4, inRingsData += 4) {
		xPos = inRingsData[0] << 8 | inRingsData[1];
		yPos = (inRingsData[2] << 8 | inRingsData[3]) & 0xFFF;
		vertical = inRingsData[2] & 0x80;
		for (ringCount = inRingsData[2] >> 4 & 7; ringCount != -1; --ringCount) {
			*outRingsData++ = xPos >> 8 & 0xFF;
			*outRingsData++ = xPos & 0xFF;
			*outRingsData++ = yPos >> 8 & 0xFF;
			*outRingsData++ = yPos & 0xFF;
			if (vertical) {
				yPos += 0x18;
			} else {
				xPos += 0x18;
			}
		}
	}
	
	*outRingsData++ = 0xFF;
	*outRingsData++ = 0xFF;
	outRingsData -= outDataSize; /* set it back to start position */
	
	/* Due to the expansion of the rings data, some rings might become unsorted, so fix this here
	In Sonic 2's unmodified rings manager, this is done by loc_17328, and I've used almost a direct conversion of that code
	Obviously, since the ported rings manager leaves ring locations in ROM, it's impossible to sort them there
	So the sort has to take place here for the rings manager to work properly */
	for (dataPos = 0; dataPos < outDataSize - 2; dataPos += 4) {
		for (dataPos2 = dataPos+4; dataPos2 < outDataSize - 2; dataPos2 += 4) {
			xPos = outRingsData[dataPos] << 8 | outRingsData[dataPos+1];
			xPos2 = outRingsData[dataPos2] << 8 | outRingsData[dataPos2+1];
			if (xPos2 < xPos) {
				/* swap rings around */
				memcpy(temp, outRingsData+dataPos, 4);
				memcpy(outRingsData+dataPos, outRingsData+dataPos2, 4);
				memcpy(outRingsData+dataPos2, temp, 4);
			}
		}
	}
	
	outFile = fopen(fileName, "wb");
	if (outFile == NULL) {
		printf("File %s could not be opened for writing\n", fileName);
		free(inRingsData);
		free(outRingsData);
		return 1;
	}
	fwrite(outRingsData, outDataSize, 1, outFile);
	free(origInRingsData); /* use pointer to original data */
	free(outRingsData);
	fclose(outFile);
	return 0;
}

int main (int argc, char * argv[]) {
	char name[1024], * newlinePos;
	int totalSucc, totalUnsucc, silentMode;
	FILE * nameFile;

	nameFile = fopen("rings.txt", "r");
	if (nameFile == NULL) {
		puts("File rings.txt could not be opened for reading");
		return 1;
	}

	if (argc > 1 && !strcmp(argv[1],"-ns")) {
		silentMode = 0;
	} else {
		silentMode = 1;
	}
	
	puts("\nrings.exe: Beginning conversion\n");
	totalSucc = 0;
	totalUnsucc = 0;
	while (fgets(name, 1024, nameFile) != NULL) {
		newlinePos = strchr(name, '\r');
		if (newlinePos != NULL) {
			*newlinePos = '\0';
		}
		newlinePos = strchr(name, '\n');
		if (newlinePos != NULL) {
			*newlinePos = '\0';
		}

		if (!silentMode) {
			printf("Converting file %s\n", name);
		}
		if (convertRings(name) == 0) {
			if (!silentMode) {
				puts("Conversion successful");
			}
			++totalSucc;
		} else {
			++totalUnsucc;
		}
	}
	
	printf("\nrings.exe: Conversion complete. %d successful, %d unsuccessful\n\n", totalSucc, totalUnsucc);
	fclose(nameFile);
	return 0;
}
