const characters = [1, 2, 5, 5, 67]; // 5 is the first recurring

const recurr = (arr, repeatCount) => {
  const frequency = {};

  for (let i = 0; i < arr.length; i++) {
    const element = arr[i];

    if (frequency[element]) {
      frequency[element]++;
      const val = frequency[element];
      if (val == repeatCount) {
        return `${element} is the first to recurr ${repeatCount} times`;
      }
    } else {
      frequency[element] = 1;
    }
  }
};

console.log(recurr(characters, 2));
