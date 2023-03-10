# AROB Matlab Functions

Usefull matlab functions for AROB (applied industrial robotics course at the Lucerne University of Applied Sciences and Arts).

This is a work in progress (FS23)!
I am providing the code as is. It is tested with Matlab R2022b, but should also work with Octave.

Have you found any errors or would like to contribute something? Feel free to send me an email or start a GitHub issue.


# Function Overview

| Function | Description |
|--------|--------|
| A = rotMatX(angleInDeg) | Returns a rotational matrix A rotated around the x-axis with the angle angleInDeg. |
| A = rotmatY(angleInDeg) | Returns a rotational matrix A rotated around the y-axis with the angle angleInDeg. |
| A = rotMatZ(angleInDeg) | Returns a rotational matrix A rotated around the z-axis with the angle angleInDeg. |
# FAQ

## How to include the files
1. Download and save the files into a folder (e.g. C:\Users\yourUsername\arob-matlab-functions).
   
   Alternatively clone the Github repo into this folder.

2. Include the following line into your Matlab Script (before the first use of one of the  functions):
   
    Windows:

        addpath('C:\Users\yourUsername\arob-matlab-functions');

    You can use relative paths as well.

3. Use the functions as usual with their respective name.
   
   E.g.:

        R = rotXHmatDeg(phi);


# Troubleshooting hints

## Angle mode
Have you entered the angles in degree?
    You can use rad2deg(angle) to convert the angles from radiant into degree.
    E.g.:

    A = rotMatX( rad2deg(pi) );
   
