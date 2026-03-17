---
layout: post
title: Optimizing my Diet with Code
date: 2026-03-29 09:00:00 -0500
categories: blog
---

Finally, a quick way to find perfectly nutritious diets.

## Why search for perfect diets?

A healthy diet is essential for one's well-being.
With a balanced diet, one thinks more clearly, has more energy, is more resistant to disease, and will likely live longer.
On the other hand, a poor diet can lead to brain-fog, fatigue, and disease.
So to seize the benefits of healthy eating whilst avoiding the drawbacks of malnutrition, it is vital to plan one's diet carefully[^1].

Yet planning a diet is difficult.
There are dozens of different vitamins and minerals that humans need, and a "perfect" diet would provide sufficient levels of all of them.
Additionally, there are hundreds of different foods to choose from, with each providing different amount of these nutrients.
This makes it challenging to find a combination of foods that provides all vitamins and minerals.

And existing diet planning tools are all lacking in some capacity.
[Many](https://www.dishgen.com/mealplan) [use](https://galaxy.ai/ai-diet-plan-generator) [AI](https://makemealplan.com/), which makes them inherently unreliable.
[Other](https://fitchef.com) [tools](https://dietplanner.io) [hide](https://mealplan.rex.fit) their implementation from users, and so provide little faith that they aren't just using AI as well.
And some tools are [paid services](https://www.eatthismuch.com/), which some people be unable to afford (example).

So I wrote a free, open-source, non-AI program to generate "perfect" diets.
The key insight is that we can find a perfect diet by just trying all combinations of foods until finding one that satisfies all our daily recommended intake of vitamins and minerals.
In fact, the only thing stopping people from doing by this by hand is the sheer number of combinations one would need to try>
But computers are perfect for this sort of task, being designed to process large amounts of data.
And the technique of solving problems by simply exhausting all possible solutions already has a name: backtracking.

## Finding "perfect" diets with backtracking

[Backtracking](https://en.wikipedia.org/wiki/Backtracking) is a well-studied category of algorithms which dates back to the [1950s](https://www.google.com/books/edition/Handbook_of_Constraint_Programming/Kjap9ZWcKOoC?hl=en&gbpv=1&pg=PA14&printsec=frontcover).
A backtracking algorithm is one which incrementally builds its way to a solution that satisfies a given set of constraints, by exploring each "path" to the solution one at a time.
If the algorithm explores a path that would prevent the solution from satisfying the problem's constraints, then the algorithm abandons that potential solution, "backtracks" to the most recent solution that would still be able to satisfy the constraints, and explores a different path to the solution instead.
To make things more clear, let's see how we can use backtracking to solve our problem of creating a "perfect" diet, one which provides 100% of one's daily recommended intake of all vitamins and minerals.

## Minimal example

To keep the example simple, let's focus on a diet providing 100% of your daily recommended intake of just one vitamin, B12, and one mineral, iron.
And let's to make this example even simpler, we'll restrict ourselves to only eating eggs and toast for breakfast[^2]
The diet should also include no more than 2 servings of eggs or bread, because you prefer to eat a light breakfast.
Backtracking can solve this problem by trying all possible combinations of servings of eggs and toast with these requirements.
This is illustrated in the following diagram:

![All combinations of servings of eggs and toast, with each combination containing at most 2 eggs and 2 toast.](/assets/img/food-1.svg)

Notice that we only explore combinations with at most 2 servings of egg or toast, and avoid wasting time exploring combinations involving more than 2 servings of eggs or toast.

Now that we have all possible combinations of eggs and toast, we need a way to check which combinations actually satisfy 100% of our daily recommended intake of iron and B12.
To do this, we first need to know how much iron and B12 one serving of eggs and toast each provide.
For the sake of example, let's pretend eggs and toast provide the following nutrients

|       | Iron | B12 |
| ----- | ---- | --- |
| **Eggs**  | 25%  | 50% |
| **Toast** | 50%  | 0%  |

Armed with this information, let's return to the previous diagram, coloring in green those combinations of eggs and toast which achieve 100% of our recommended daily intake of both iron and B12.

![All combinations of servings of eggs and toast. Green combinations satisfy our 100% daily recommended intake of iron and B12.](/assets/img/food-2.svg)

From this diagram, we can see that there are two possible combinations of eggs and toast that satisfy our intake requirements for iron and B12: 2 eggs with 1 piece of toast (for 100% iron and B12), and 2 eggs with 2 pieces of toast (for 150% iron and 100% B12).
This illustrates the big idea of the algorithm: just try all possible combinations of foods, and emit any that satisfy at least 100% of our daily recommended intake of all vitamin and minerals.

But although this algorithm works, in practice it would be horribly slow, because we would want to explore many more combinations of foods with a greater a maximum number of servings per food
So now let's see how we can speed it up.

## Optimizations

### Stopping once we find a solution

One easy way to optimize this algorithm would be to simply stop exploring the search space once we reach our first solution.
For instance, let's assume we explore each node in the search tree by trying that node's combination first, then its left subtree's combinations, and finally its right subtree's combinations (this would be an [in-order](https://en.wikipedia.org/wiki/Tree_traversal#In-order,_LNR) tree traversal, a kind of [depth-first search](https://en.wikipedia.org/wiki/Tree_traversal#Depth-first_search_implementation).)
With this approach we would avoid exploring much of the tree.
The following diagram illustrates this idea, with the green node signifying our solution, and gray nodes signifying combinations that skip checking.

![All combinations of servings of eggs and toast. The green combination satisfies our 100% daily recommended intake of iron and B12. Gray combinations are ones we would skip exploring because we would have already reached a solution before we would explore them.](/assets/img/food-3.svg)

We skipped checking 15 of 19 possible solutions; quite the speedup.

### Avoiding redundant work with memoization

We were able to greatly accelerate our algorithm by stopping once we found a single solution, but eating the same thing everyday can become boring.
So is there a way we can optimize our approach to go faster while still finding all (or at least, more than one) solution?
In fact, there is!
If we take a second look at the diagram, we'll notice that we explore some combinations more than once (in the following diagram these combinations are red).

![All combinations of servings of eggs and toast. Red combinations are ones that appear at least twice.](/assets/img/food-4.svg)

To make make our algorithm faster, we can keep track of the combinations we've already explored, and skip re-evaluating them if we encounter them again.
For the above example, this would result in the following search space, with solutions in green, and skipped combinations in gray.

![All combinations of servings of eggs and toast. The green combination satisfies our 100% daily recommended intake of iron and B12. Gray combinations are ones we would skip exploring because we would have already explored identical combinations before.](/assets/img/food-5.svg)

With this optimization, we skip checking 10/19 combinations.
This isn't quite as fast as returning after the first solution (that would have skipped 15 combinations), but the upside is that we now obtain all solutions.
This technique of remembering prior inputs to avoid redundant computation is called [memoization](https://en.wikipedia.org/wiki/Memoization), and our usage of it makes our algorithm an example of top-down [dynamic programming](https://en.wikipedia.org/wiki/Dynamic_programming).

## Try it!

You can check out my implementation of this approach on
[GitHub](https://github.com/PappasBrent/diet_finder)!
Here's some sample output:

```txt
Diet 1
  Bell pepper             400 grams    80.0 calories
  Carrot                  400 grams    164.0 calories
  Chicken                 200 grams    478.0 calories
  Peanut butter           100 grams    598.0 calories
  Salmon                  200 grams    412.0 calories
  Spinach                 100 grams    23.0 calories
  Tofu                    100 grams    144.0 calories
  Total                   4300 grams    1899.0 calories
```

You can even customize the tool to generate diets from different lists of
foods, and change the maximum number of servings and calories that you want
each diet to provide. I encourage you to try it out :)

## Notes

[^1]: If you want to learn more about nutrition in a fun and easy way, I recommend checking out the YouTube channel [Talon Fitness](https://www.youtube.com/@Talon_Fitness). My girlfriend recently discovered this channel and shared it with me, and I came up with the idea for this post and algorithm after watching a few of their videos.

[^2]: This technique and its implementation supports finding diets that use more foods to satisfy our requirements for more vitamins and minerals; these restrictions are again just for the sake of example.
