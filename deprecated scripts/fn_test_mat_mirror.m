assert(mat_mirror([1], false) == [1 1; 1 1]);
assert(mat_mirror([2], true ) == [2]);
assert(mat_mirror([3 4], false) == [3 4 4 3; 3 4 4 3]);
assert(mat_mirror([3 4], true) == [3 4 3]);
assert(mat_mirror([5 6; 7 8], false) == [5 6 6 5; 7 8 8 7; 7 8 8 7; 5 6 6 5]);
assert(mat_mirror([5 6; 7 8], true) == [5 6 5; 7 8 7; 5 6 5]);