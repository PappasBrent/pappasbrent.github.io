---
layout:     post
title:      Solving the Grecian Computer
date:       2023-12-31 09:00:00 EDT
categories: blog
---

My brother gave my a difficult puzzle for Christmas, so I wrote a program to
solve it for me.

## The Puzzle

Last Monday, Christmas morning, my brother gifted me with *The Grecian
Computer*, a puzzle created by Project Genius. Here is a picture of it:

<div class="row row-centered">
<img src="/assets/img/grecian_computer_unsolved.png" alt="Unsolved Grecian
Computer puzzle">
</div>

The puzzle is made of wood and consists of five layered circles. The circles
have ridged edges, and four rings of 12 numbers each placed at evenly-spaced
intervals. The upper circles are smaller than the lower ones, and are
interspersed with gaps. The ultimate effect is that the puzzle resemebles a
cross between a gear and a clock.

The objective of the puzzle is to rotate the circles such that each column sums
to 42. I messed around with trying to solve the puzzle on my own for a few
minutes, but then realized that I could probably craft a program to solve it for
me. Turns out that I was correct!

## The Program

I came up with the following brute-force algorithm to solve the puzzle: For each
possible rotation of each circle, check if pairing it with each possible
rotation of every other circle solves the problem. There may be a more efficient
way to solve this problem, but since the problem space is so small (there's only
12 unique rotations of each circle, and five circles, for a total of 12^5 =
248832 solutions to check), any modern computer should be able to run a decent
implementation of this algorithm in a fraction of a second. 

The tricky part is encoding the data in a machine-readable format. I toyed
around with a few different ideas, but ultimately decided to encode the puzzle
as 3-dimensional integer array. The first dimension corresponds to the number of
circles (five circles, with the lowest index corresponding to the bottom
circle), the second to the number of rings in each circle (four rings for each
circle, with the lowest index corresponding to the outer-most ring) and the
third to the numbers printed on each ring (12 numbers on each ring, beginning
with a number at an arbitrary rotation I chose when starting to encode the
puzzle and made sure to keep consistent until I finished). I inserted zeros
where rings contained gaps instead of numbers.  I implemented my solution in C
and defined a macro for each circle, so here's an example of what this encoding
looks likes for the the top-most circle (i.e., layer):

<div class="row row-centered">
<pre>
#define LAYER_FIVE                                                             \
  {                                                                            \
    {0}, {0}, {0}, { 0, 8, 0, 3, 0, 6, 0, 10, 0, 7, 0, 15 }                    \
  }
</pre>
</div>

Notice that I encode the first three rings to zero-filled arrays. This is
because the top-most layer only contains numbers for the inner-most ring, so I
fill the rings that circle does not cover with zeros. Refer back to the above
image to see what I mean.

Now that we've encoded the data, we can implement the core puzzle-solving
algorithm:

<div class="row row-centered">
<pre>
int solve(int layers[5][4][12]) {
  int l1, l2, l3, l4, l5;
  for (l1 = 0; l1 < 12; l1++) {
    for (l2 = 0; l2 < 12; l2++) {
      for (l3 = 0; l3 < 12; l3++) {
        for (l4 = 0; l4 < 12; l4++) {
          for (l5 = 0; l5 < 12; l5++) {
            if (solved(layers)) {
              return 1;
            }
            rotate_layer_right(layers[4]);
          }
          rotate_layer_right(layers[3]);
        }
        rotate_layer_right(layers[2]);
      }
      rotate_layer_right(layers[1]);
    }
    rotate_layer_right(layers[0]);
  }
  return 0;
}
</pre>
</div>

It's just a deeply-nested for loop! At each loop, we check if the current
combination of rotated circles solves the problem, and if not, then try the next
combination of circle roations by rotating one of the circles to the right once.
I could write a more general solution using recursion and back-tracking, but I
prefer this simple (albeit it somewhat ugly) solution for now.

After reading the previous code snippet, you may have two questions: How do we
rotate a layer, and how do we check if the puzzle is solved? To rotate a layer,
we simply rotate each ring in the layer by one:

<div class="row row-centered">
<pre>
void rotate_right(int *a, int n) {
  int i;
  int temp = a[n - 1];
  for (i = n - 1; i > 0; i--) {
    a[i] = a[i - 1];
  }
  a[0] = temp;
}

void rotate_layer_right(int layer[4][12]) {
  int ring;
  for (ring = 0; ring < 4; ring++) {
    rotate_right(layer[ring], 12);
  }
}
</pre>
</div>

And to check if the puzzle is solved:

<div class="row row-centered">
<pre>
int solved(int layers[5][4][12]) {
  int column_sum = 0;
  int ring;
  int layer;
  int column;
  for (column = 0; column < 12; column++) {
    column_sum = 0;
    for (ring = 0; ring < 4; ring++) {
      for (layer = 4; layer > -1; layer--) {
        if (layers[layer][ring][column] > 0) {
          column_sum += layers[layer][ring][column];
          break;
        }
      }
    }
    if (column_sum != 42) {
      return 0;
    } 
  }
  return 1;
}
</pre>
</div>

`solved()` checks that all columns in the puzzle sum to 42. Because some rings
may contain gaps instead numbers, when adding the value in a given column to the
running sum for that column, we only sum the first non-zero value we find in
that column to the running sum (the one in the top-most ring), and ignore the
rest (that's what the `break` statement does).

## The Solution

After writing the above functions as well as some code for calling them and
printing the result, I successfully obtained the solution! So without further
ado, here's the solved puzzle. Don't look too hard at the following picture if
you want to try and solve the puzzle yourself :)

<div class="row row-centered">
<img src="/assets/img/grecian_computer_solved.png" alt="Solved Grecian Computer
puzzle">
</div>

Feel free to check for yourself that all the columns sum to 42.

## Conclusion

This was a fun mental exercise! You can obtain a working version of the source
code [here](/assets/code/c/grecian_computer.c). I wonder if I could somehow turn
this into a competitive coding problem and submit it to a site such as LeetCode?
That would give me a reason to write a more general (and perhaps faster)
solution.

