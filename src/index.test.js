const days = require("./days");

test("finds the two entries that sum to 2020 and multiplies them", () => {
	expect(days.day01([1721, 979, 366, 299, 675, 1456], 2020)).toBe(514579);
});
