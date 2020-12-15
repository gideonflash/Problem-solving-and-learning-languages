import assert from "assert";
type targetSum = number;
type sumPair = [number, number];

const findSum = (nums: number[], target: targetSum): sumPair | [] => {
  const numsLength = nums.length;

  for (let counter1 = 0; counter1 < numsLength; counter1++) {
    for (let counter2 = counter1 + 1; counter2 < numsLength; counter2++) {
      const isMatch = nums[counter1] + nums[counter2] == target;

      if (isMatch) return [nums[counter1], nums[counter2]];
    }
  }
  return [];
};

assert.strict.deepEqual(findSum([3, 5, -4, 8, 11, 1, -1, 6], 10), [11, -1]);
