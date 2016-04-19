
#include "sobel.h"
#include "math.h"
#include <stdlib.h>
#define SLIDE_WINDOW_BUFFER(x,y,z)  \
			window_buffer[0][2] = x; \
	    	window_buffer[1][2] = y; \
	    	window_buffer[2][2] = z;

int Gx, Gy;

int sobel_truth(BYTE input_image[IMG_H][IMG_W], BYTE output_image[IMG_H][IMG_W])
{
	IMG_H:for (int i=1; i<IMG_H-2; i++)
		{
		IMG_W:for (int j=1; j<IMG_W-2; j++)
			{
			//Sobel mask for x-direction:
	    Gx=(input_image[i-1][j+1]*1+input_image[i][j+1]*2+input_image[i+1][j+1]*1)-(input_image[i-1][j-1]*1+input_image[i][j-1]*2+input_image[i+1][j-1]*1);

	     //Sobel mask for y-direction:
	    Gy=(input_image[i-1][j-1]*1+input_image[i-1][j]*2+input_image[i-1][j+1]*1)-(input_image[i+1][j-1]*1+input_image[i+1][j]*2+input_image[i+1][j+1]*1);

	    //The gradient of the image
	    output_image[i][j]=abs(Gx)+abs(Gy);
	    //output_image[i][j]=(BYTE)sqrt(Gx^2+Gy^2);


			}
		}
}

unsigned char line_buffer[3][IMG_W] = {0};
unsigned char window_buffer[3][3] = {0};

int sobel(BYTE input_image[IMG_H][IMG_W], BYTE output_image[IMG_H][IMG_W])
{

//the wierd (0,0) error is caused by off bound loop memory access.
//but anyway, give up the border.
IMG_H:for (int i=0; i<IMG_H; i++)
	{ 
	IMG_W:for (int j=0; j<IMG_W; j++)
		{ 


			SLIDE_WINDOW:for(int k=0;k<3;k++){
		    	  window_buffer[k][0] = window_buffer[k][1];
		    	  window_buffer[k][1] = window_buffer[k][2];
		    }

			line_buffer[0][j] = line_buffer[1][j];
			line_buffer[1][j] = line_buffer[2][j];
			line_buffer[2][j] = input_image[i][j];
			SLIDE_WINDOW_BUFFER(line_buffer[0][j],
				    	    	line_buffer[1][j],
				    	    	line_buffer[2][j]);

//			if(window_buffer[0][0] == 255)
//						window_buffer[0][0] = 255;

		//Sobel mask for x-direction:
    Gx=(window_buffer[0][2]*1+window_buffer[1][2]*2+window_buffer[2][2]*1)-
    		(window_buffer[0][0]*1+window_buffer[1][0]*2+window_buffer[2][0]*1);
    
     //Sobel mask for y-direction:
    Gy=(window_buffer[0][0]*1+window_buffer[0][1]*2+
    		window_buffer[0][2]*1)-(window_buffer[2][0]*1+
    				window_buffer[2][1]*2+window_buffer[2][2]*1);
    
    //The gradient of the image
    output_image[i-1][j-1]=abs(Gx)+abs(Gy);
    //output_image[i][j]=(BYTE)sqrt(Gx^2+Gy^2);
         	
        
		}
	}
				
}
							
 				
