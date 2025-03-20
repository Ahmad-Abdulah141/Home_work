//Given an integer array nums, return true
// if any value appears at least twice in the array,
// and return false if every element is distinct.

bool containsDuplicate(List<int> nums) {
  Set<int> seen = {};
  for (int num in nums) {
    if (seen.contains(num)) {
      return true;
    }
    seen.add(num);
  }
  return false;
}

void main() {
  List<int> nums1 = [1, 2, 3, 1];
  List<int> nums2 = [1, 2, 3, 4];
  List<int> nums3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
  print(containsDuplicate(nums1));
  print(containsDuplicate(nums2));
  print(containsDuplicate(nums3));
}
