module.exports = {
  day01,
};

function day01(entries, targetSum) {
  const set = new Set();
  for (const entry of entries) {
    if (set.has(targetSum - entry)) {
      return entry * (targetSum - entry);
    } else {
      set.add(entry);
    }
  }
  throw `No two entries sum to ${targetSum}`;
}
