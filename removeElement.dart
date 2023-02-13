void main() {
  print(removeElement([0, 1, 2, 2, 3, 0, 4, 2], 2));
}

int removeElement(List<int> nums, int val) {
  for (var i = 0; i < nums.length;) {
    if (nums[i] == val) {
      nums.remove(val);
      continue;
    }
    i++;
  }
  return nums.length;
}
