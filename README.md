# Bitmap Editor

Produce a Ruby 2.3 program that simulates a basic interactive bitmap editor. Bitmaps are represented as an M x N matrix of pixels with each element representing a colour.

## Running
1. Ensure to have `Ruby 2.3.x or above`
2. `bundle`
3. `>bin/bitmap_editor examples/show.txt`
4. run `rspec` for test

## Approach

* Since the bitmap editor supports multiple commands, it makes sense to apply the strategy pattern vs a `Command` class that contains all the supported commands as methods because this violates SRP or having switch case for each supported command to be excecutes based on the case.
* Each supported command is in its own singleton class because those commands(strategies) are solving the same problem in different way, depending on the conditions. They are excuted in `BitmapEditor` class only when the right corresponding key is provided in `show.txt`. (Why singleton? Because it does not need to be instantiate).
* I choose to store the commands in a hash so I can use the key(main operator) to access the instructions (coordinates + colour).
* To ensure the program fails gracefully and outputs helpful messages, I added a few arguments verifications such as `check when coordinate is not integer`, `wrong number of argument provided` and `when coordinate is out of range`.

### Other edge cases to consider
* When arguments of create image command are negative integers. Although it's safe to assume that they're going to be positive since documentation says `Bitmaps starts at coordinates 1,1` but maybe an output error message would be helpful for users.

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
 ```
 I 5 6
 L 1 3 A
 V 2 3 6 W
 H 3 5 2 Z
 S
 ```

 * Expected Output
```
OOOOO
OOZZZ
AWOOO
OWOOO
OWOOO
OWOOO
```
