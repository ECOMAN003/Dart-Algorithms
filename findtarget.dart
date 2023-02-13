void main() {
  List<int> nums = [-1, 0, 3, 5, 9, 12];
  print(findingTarget(nums, 9));
}

int findingTarget(List<int> nums, int target) {
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      return i;
    }
  }
  return -1;
}
