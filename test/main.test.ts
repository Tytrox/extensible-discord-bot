import { add } from "../src/main";
import { describe } from "node:test";

describe("testing main file", () => {
  test("one plus one = 2", () => {
    expect(add(1, 1)).toBe(2);
  });
});
