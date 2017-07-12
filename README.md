# Bitmap Editor

Produce a Ruby 2.3 program that simulates a basic interactive bitmap editor. Bitmaps are represented as an M x N matrix of pixels with each element representing a colour.

## Running
1. Ensure to have `Ruby 2.3.x or above`
2. `bundle`
3. `>bin/bitmap_editor examples/show.txt`
4. run `rspec` for test

## Approach

* Since the bitmap editor support multiple commands, it makes sense to apply the strategy pattern to allow for easy extensibility should you need to in future.
* A way of applying strategy pattern here is to have each command in its own singleton class because those commands(strategies) are solving the same problem in different way, depending on the conditions. Why singleton? Because it does not need to be instantiate.
* I choose to store the commands in a hash so I can use the key(main operator) to access the instructions (coordinates + colour).

## Supported Commands
 | Command    | Description |
 |----------  |-------------|
 |I M N       |Create a new M x N image with all pixels coloured white (O).|
 |C           |Colours the pixel (X,Y) with colour C|
 |L X Y C     |Colours the pixel (X,Y) with colour C.|
 |V X Y1 Y2 C |Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive).|
 |H X1 X2 Y C |Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive).|
 |S           |Show the contents of the current image|

 ## Example

 `>bin/bitmap_editor examples/show.txt`

 * Input file
 `I 5 6
 L 1 3 A
 V 2 3 6 W
 H 3 5 2 Z
 S`

 * Expected Outputs

`OOOOO
OOZZZ
AWOOO
OWOOO
OWOOO
OWOOO`
