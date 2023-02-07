void main() {
  print(twoSum([2, 7, 11, 15, 12, 5], 12));
}

List<int> twoSum(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < nums.length; j++) {
      if (i == j) break;
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }
  return [];
}
