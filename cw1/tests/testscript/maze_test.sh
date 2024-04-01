#!/bin/bash

# Define the name of the maze program
MAZE_PROGRAM="./maze"

# Define the maze file path for testing
# maze_test1 is a file of a standard 20*43 maze
VALID_MAZE = "../testdata/maze_test1.txt"
# maze_test2 is a file of a 20*43 maze containing invalid characters (not '#', ' ', 'S', 'E')
INVALID_MAZE = "../testdata/maze_test2.txt"
# maze_test3 is a file of 3*4 maze (less than the minimum value of 5*5) 
SMALL_MAZE = "../testdata/maze_test3.txt"
# maze_test4 is a file of a 20*43 maze without any valid path from 'S' to 'E' 
UNSOLVABLE_MAZE = "../testdata/maze_test4.txt"

# Define the move command file path for testing
# operation_test1.txt is a command file containing a available path instructions sequence from 'S' to 'E'
VALID_MOVES = "../testdata/operation_test1.txt"
# operation_test2.txt is a command file containing illegal instructions sequence 
INVALID_MOVES = "../testdata/operation_test2.txt"
# operation_test3.txt is a command file containing instructions sequence attempting to move through walls and out of boundaries
OUTWALL_MOVES = "../testdata/operation_test3.txt"

# Test1: Valid maze and valid move instructions sequence
echo "Test 1: Valid maze and moves"
$MAZE_PROGRAM $VALID_MAZE < $VALID_MOVES

# Test2: Invalid maze 
echo "Test 2: Invalid maze file"
$MAZE_PROGRAM $INVALID_MAZE

# Test3: Maze size too small
echo "Test 3: Maze size too small"
$MAZE_PROGRAM $SMALL_MAZE

# Test4: Unsolvable maze
echo "Test 4: Unsolvable maze"
$MAZE_PROGRAM $UNSOLVABLE_MAZE

# Test5: Valid maze and invalid move instructions sequence
echo "Test 5: Invalid moves"
$MAZE_PROGRAM $VALID_MAZE < $INVALID_MOVES

# Test6: Valid maze and outwall instructions sequence
echo "Test 6: Outwall moves"
$MAZE_PROGRAM $VALID_MAZE < $OUTWALL_MOVES