import 'dart:collection';

void main() {
  print(twoSums([2, 7, 11, 15, 5, 12], 12));
}

List<int> twoSum(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (i == j) break;
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }
  return [];
}

List<int> twoSums(List<int> nums, int target) {
  Map<int, int> map = new HashMap();
  for (var i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (map.containsKey(complement)) {
      return [map.values.firstWhere((element) => element == i), i];
    }
    map.putIfAbsent(nums[i],() => i);
  }
  return [];
}
