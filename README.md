# README #

This is source code repository for my CSE_291: FPGA Image Processing Course Homework 2. 

PID: A53095838


### Link to the Video

TODO


### How to run the Project

```shell
## in the vivada_hls shell
git clone https://bitbucket.org/xyz0/cse_291_fpga_cv_hw2/ hw2  && cd hw2/sobel
vivado_hls ./script.tcl
```

### Architecture

todo


### Result Comparision

#### Old
![old.jpg](https://bitbucket.org/repo/7kRXr5/images/4064045564-old.jpg)

#### Optimized

![new.png](https://bitbucket.org/repo/7kRXr5/images/1316155658-new.png)

### Test Bench

I compare every pixel value between the original sobel implementation and this optimized one to determine its correctness and accuracy.

```c++
//stuff
sobel(input_image, output_image);
sobel_truth(input_image, output_image_gold);
bool success = true;
for (i=1; i<359; i++)
   for (j=1; j<639; j++)
       if(!output_image[i][j] == output_image_gold[i][j]){
	    printf("Test failed at (%d,%d), truth = %d, yours = %d\n",i,j
			,output_image_gold[i][j],output_image[i][j]);
	    success = false;
	}
```