void main() {
  print(removeDuplicates([0,0,1,1,1,2,2,3,3,4]));
}

int removeDuplicates(List<int> nums) {
  for (var i = 0; i < nums.length - 1; i++) {
    if (nums[i] == nums[i + 1]) {
      nums.removeAt(i+1);
      continue;
    }
  }
  return nums.length;
}
