/* Grecian Computer Solver
 * Brent Pappas
 * 2023-12-31
 */

#include <stdio.h>

void print_layers(int layers[5][4][12]) {
  int ring;
  int layer;
  int i;
  for (ring = 0; ring < 4; ring++) {
    printf("Ring %d:\n", ring);
    for (layer = 0; layer < 5; layer++) {
      printf("Layer %d: ", layer);
      for (i = 0; i < 12; i++) {
        printf("%d ", layers[layer][ring][i]);
      }
      printf("\n");
    }
    printf("\n");
  }
}

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

int main(void) {
  /* 5 layers.
   * Each layer contains 4 rings.
   * Each ring contains 12 values.
   */
#define LAYER_ONE                                                              \
  {                                                                            \
    {8, 3, 4, 12, 2, 5, 10, 7, 16, 8, 7, 8},                                   \
        {4, 4, 6, 6, 3, 3, 14, 14, 21, 21, 9, 9},                              \
        {4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, {                          \
      11, 11, 14, 11, 14, 11, 14, 14, 11, 14, 11, 14                           \
    }                                                                          \
  }
#define LAYER_TWO                                                              \
  {                                                                            \
    {0, 12, 0, 6, 0, 10, 0, 10, 0, 1, 0, 9},                                   \
        {0, 2, 13, 9, 0, 17, 19, 3, 12, 3, 26, 6},                             \
        {3, 6, 0, 14, 12, 3, 8, 9, 0, 9, 20, 12}, {                            \
      0, 7, 14, 11, 0, 8, 0, 16, 2, 7, 0, 9                                    \
    }                                                                          \
  }
#define LAYER_THREE                                                            \
  {                                                                            \
    {0}, {0, 9, 0, 5, 0, 10, 0, 8, 0, 22, 0, 16},                              \
        {7 /* or 1... */, 12, 0, 21, 6, 15, 4, 9, 18, 11, 26, 14}, {           \
      0, 7, 8, 9, 13, 9, 7, 13, 21, 17, 4, 5                                   \
    }                                                                          \
  }

#define LAYER_FOUR                                                             \
  {                                                                            \
    {0}, {0}, {0, 0, 14, 0, 9, 0, 12, 0, 4, 0, 7, 15}, {                       \
      0, 11, 11, 6, 11, 0, 6, 17, 7, 3, 0, 6                                   \
    }                                                                          \
  }

#define LAYER_FIVE                                                             \
  {                                                                            \
    {0}, {0}, {0}, { 0, 8, 0, 3, 0, 6, 0, 10, 0, 7, 0, 15 }                    \
  }

  int layers[5][4][12] = {LAYER_ONE, LAYER_TWO, LAYER_THREE, LAYER_FOUR,
                          LAYER_FIVE};
  printf("%d\n", solve(layers));
  print_layers(layers);

  return 0;
}
