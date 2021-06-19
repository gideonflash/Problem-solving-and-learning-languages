type BST<T> = {
  value: T;
  left: BST<T> | null;
  right: BST<T> | null;
};

const Tree: BST<number> = {
  value: 1,
  left: null,
  right: null,
};

function newBST<T>(value): BST<T> {
  return {
    value,
    left: null,
    right: null,
  };
}

function insert<T>(node: BST<T>, value: T): BST<T> {
  const newNode = newBST<T>(value);
  const stack: BST<T>[] = [node];

  while (stack.length != 0) {
    const currNode = stack.pop();

    // Add to stack if leaf node not reached yet
    if (currNode.value > value) {
      // Add to correct child when leaf node reached
      if (currNode.left) {
        stack.push(currNode.left);
      } else {
        currNode.left = newNode;
      }
    }

    // Add to stack if leaf node not reached yet
    if (currNode.value <= value) {
      // Add to correct child when leaf node reached
      if (currNode.right) {
        stack.push(currNode.right);
      } else {
        currNode.right = newNode;
      }
    }
  }

  return node;
}

function contains<T>(node: BST<T>, value: T): boolean {
  const stack: BST<T>[] = [node];

  while (stack.length != 0) {
    const currNode = stack.pop();

    if (currNode.value === value) return true;

    if (currNode.value > value && currNode.left) {
      stack.push(currNode.left);
    } else if (currNode.value < value && currNode.right) {
      stack.push(currNode.right);
    }
  }

  return false;
}

function remove<T>(tree: BST<T>, target: T): BST<T> {
  let currNode = tree;

  while (currNode != null) {
    let { value, left, right } = currNode;

    // if current value = target
    if (value === target) {
      // if current node is leaf node
      if (isLeaf<T>({ value, left, right })) {
        console.log("isLeaf:", value);
      }
      // if current node has at least one node
      // if current node has two children
      // * replace with the right most smallest value of the current tree
    }

    if (value > target && left) {
      currNode = left;
    } else if (value < target && right) {
      currNode = right;
    } else {
      currNode = null;
    }
  }
  return tree;
}

// Helpers
function isLeaf<T>(node: BST<T>): boolean {
  return node.left === null && node.right === null ? true : false;
}

// Tree: remove 15, 5, 13
const tree1: BST<number> = {
  value: 10,
  left: {
    value: 5,
    left: {
      value: 2,
      left: {
        value: 1,
        left: null,
        right: null,
      },
      right: {
        value: 5,
        left: null,
        right: null,
      },
    },
    right: {
      value: 5,
      left: null,
      right: null,
    },
  },
  right: {
    value: 15,
    left: {
      value: 13,
      left: null,
      right: {
        value: 14,
        left: null,
        right: null,
      },
    },
    right: {
      value: 22,
      left: null,
      right: null,
    },
  },
};

const res = remove(tree1, 14);
console.log(res);
