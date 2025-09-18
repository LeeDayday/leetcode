# 2353. Design a Food Rating System
# https://leetcode.com/problems/design-a-food-rating-system/?envType=daily-question&envId=2025-09-17

from collections import defaultdict
from heapq import heappush, heappop
class FoodRatings:
    def __init__(self, foods: List[str], cuisines: List[str], ratings: List[int]):
        self.food_to_cuisine = {}
        self.food_to_rating = {}
        self.cuisine_to_food = defaultdict(list)

        for f, c, r in zip(foods, cuisines, ratings):
            self.food_to_cuisine[f] = c
            self.food_to_rating[f] = r
            heappush(self.cuisine_to_food[c], (-r, f))

    def changeRating(self, food: str, newRating: int) -> None:
        cuisine = self.food_to_cuisine[food]
        self.food_to_rating[food] = newRating
        heappush(self.cuisine_to_food[cuisine], (-newRating, food))

    def highestRated(self, cuisine: str) -> str:
        heap = self.cuisine_to_food[cuisine]
        while heap:
            r, f = heap[0]
            # 최신 값만 취하기
            if self.food_to_rating[f] == -r:
                break
            heappop(heap)
        return heap[0][1]
        


# Your FoodRatings object will be instantiated and called as such:
# obj = FoodRatings(foods, cuisines, ratings)
# obj.changeRating(food,newRating)
# param_2 = obj.highestRated(cuisine)
