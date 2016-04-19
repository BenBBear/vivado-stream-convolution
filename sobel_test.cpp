#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "sobel.h"

#define OUTPUT_IMAGE_FILE "Output/Group_640x360.raw"
#define OUTPUT_GOLDEN_IMAGE_FILE  "Output/Group_640x360_golden.raw"
#define TIME_BEGIN()   begin = clock();
#define TIME_END(msg)  end = clock(); \
		elapsed_secs = double(end - begin) / CLOCKS_PER_SEC; \
		printf("<%s> runs for %f seconds.\n", msg, elapsed_secs);



FILE* file;
FILE* writeFile;
clock_t begin,end;
double elapsed_secs;

int main()
{
	BYTE      input_image[IMG_H][IMG_W];
	BYTE      output_image[IMG_H][IMG_W];
	BYTE 	  output_image_gold[IMG_H][IMG_W];
	
	int i,j, n;
	n=1;
	for (i=0; i<IMG_H; i++)
	{
		for (j=0; j<IMG_W; j++)
		{
			input_image[i][j] = 0;//GetRand(0, 255);
			output_image[i][j] = input_image[i][j];
			output_image_gold[i][j] = input_image[i][j];
			n=n+1;	
		}
	}
		
		file = fopen("Input/Group_640x360.raw", "rb");
		
		if (!file)
		{
		printf("Something wrong in reading image file\n");
		}
		else
		{
			fread(input_image, sizeof(char),IMAGE_SIZE, file);
			memcpy(output_image, input_image,sizeof(char) * IMAGE_SIZE);
			fclose(file);
			printf("Image file read success!\n");
		}
		
		
		TIME_BEGIN();
		sobel(input_image, output_image);
		TIME_END("Optimized Function");
		writeFile = fopen(OUTPUT_IMAGE_FILE, "wb");
		fwrite(output_image, sizeof(char), IMAGE_SIZE, writeFile);
		fclose(writeFile);
		
		TIME_BEGIN();
		sobel_truth(input_image, output_image_gold);
		TIME_END("Unoptimized Function");
		writeFile = fopen(OUTPUT_GOLDEN_IMAGE_FILE, "wb");
		fwrite(output_image, sizeof(char), IMAGE_SIZE, writeFile);
		fclose(writeFile);


		bool success = true;
		for (i=1; i<359; i++)
		{
			for (j=1; j<639; j++)
			{
				if(!output_image[i][j] == output_image_gold[i][j]){
					printf("Test failed at (%d,%d), truth = %d, yours = %d\n",i,j
							,output_image_gold[i][j],output_image[i][j]);
					success = false;
				}
			}
		}
		if(success)
			printf("SUCCESS\n");
		else
			printf("FAIL\n");
		return 0;


}
