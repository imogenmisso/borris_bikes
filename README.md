## Borris Bikes

### Introduction

Week 1 Makers Academy. Introduction into OOP, TDD, and pair programming. Goal was to build a functioning system for maintaining and managing Boris Bikes. 

Here is the [spec](https://github.com/makersacademy/course/blob/master/boris_bikes/0_challenge_map.md).

### Completion

- Completed up to step 19/22.
- all 13 tests passing
- all methods <= 5 lines

### Installation

- `git clone` https://github.com/imogenmisso/borris_bikes
- to run tests
  - `rspec`

### Improvements

- use rspec doubles 

### How it works

`2.5.1 :001 > require './lib/docking_station'
 => true`
 
`2.5.1 :003 > bike = Bike.new
 => #<Bike:0x00007fefbf9356f0 @working=true>`
 
`2.5.1 :004 > docking_station = DockingStation.new
 => #<DockingStation:0x00007fefbfa0bcf0 @capacity=20, @bikes=[]>`
 
`2.5.1 :005 > docking_station.dock(bike)
 => [#<Bike:0x00007fefbf9356f0 @working=true>]`
 
`2.5.1 :006 > docking_station.bikes
 => [#<Bike:0x00007fefbf9356f0 @working=true>]`
 
`2.5.1 :007 > docking_station.release_bike
 => #<Bike:0x00007fefbf9356f0 @working=true>`
 
`2.5.1 :008 > docking_station.bikes
 => []`
 
`2.5.1 :009 > exit`


