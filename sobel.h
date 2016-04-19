#ifndef SOBLE_H_

#define SOBLE_H_


typedef unsigned char BYTE;
const int IMG_W = 640;
const int IMG_H = 480;
const int IMAGE_SIZE = IMG_W * IMG_H;


int sobel(BYTE g_cBufferOrg[IMG_H][IMG_W],
				BYTE g_cBufferDraw[IMG_H][IMG_W]);

int sobel_truth(BYTE g_cBufferOrg[IMG_H][IMG_W],
				BYTE g_cBufferDraw[IMG_H][IMG_W]);

#endif
