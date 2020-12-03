const days = require("./days");

describe("day01 part 1", () => {
	test("finds the two entries that match a sum and multiplies them", () => {
		expect(days.day01([1721, 979, 366, 299, 675, 1456], 2020)).toBe(514579);
	})

	test("throws an error when no two numbers sum correctly", () => {
		expect(() => {
			days.day01([1, 2, 3], 100);
		}).toThrow('No two entries sum to 100');
	})
})
