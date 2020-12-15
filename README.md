# gopro-timelapse

Scripts for recording timelapses on an old GoPro camera

> Exposure time 8.5 sec, ISO 6400, 160 frames
> ![](./assets/demo.gif)

## How to use

1. Download `autoexec.ash` file for your camera from `scripts` directory.
2. Change ISO and exposure time for your needs.
3. Place `autoexec.ash` to the root of your GoPro's SD card.
4. Turn on GoPro and left it somewhere.

## Script example

- Camera: GoPro HERO 3+ Silver
- ISO: 3200
- Exposure time: 8.5 sec 

```
# Run a Photo mode
t app appmode photo
sleep 1

# Set up an ISO and Exposure Time
# Usage: t ia2 -ae exp [ISO: 100-6400] [EXT: 2-1000]
t ia2 -ae exp 3200 2
sleep 1

# Press the shot button
t app button shutter PR
sleep 10

# Run this script again
d:\autoexec.ash

# Restart the camera
reboot yes
```

For GoPro HERO 3+ Black you should use `t ia2 -ae still_exp <ISO> <EXT>` instead of `t ia2 -ae exp <ISO> <EXT>`.

## ISO

You can use any value of iso between 100 and 6400

## Exposure time identifier

As `EXT` param you should place value identifier for required exposure time (not the real time). 

| Value | Real exposure time in seconds |
| --- | --- |
| 2 | 8,5 |
| 5 | 7,7 |
| 15 | 7,3 |
| 20 | 7,1 |
| 25 | 6,9 |
| 30 | 6,8 |
| 39 | 6,4 |
| 40 | 6,3 |
| 45 | 6,2 |
| 50 | 6,1 |
| 75 | 5,3 |
| 85 | 5 |
| 95 | 4,7 |
| 99 | 4,6 |
| 100 | 4,6 |
| 130 | 3,9 |
| 160 | 3,3 |
| 200 | 2,7 |
| 255 | 2 |
| 400 | 1 |
| 500 | 0,56 |
| 600 | 0,33333 |
| 1000 | 0,000158328 |

## Inspired by 

[GoPro Long Exposure pictures/timelapse hack](https://konradit.github.io/gopro-longexp/)

[Autoexec Long Exposure hack (GoPro Hero3+ Silver Edition)](http://www.ma55ey.co.uk/2015/08/autoexec-long-exposure-hack-gopro-hero3.html) 