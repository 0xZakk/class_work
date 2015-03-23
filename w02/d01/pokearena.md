Homework 01-05

##### Learning Objectives
- Practice modeling a problem domain in an object-oriented way
- Practice defining classes with attributes and behaviors
- Practice debugging using `pry`

Your assignment for this weekend will be to use your newfound knowledge of object-oriented program design to model a real-world problem.



# Poke Arena
![poke](http://anime.unm.edu/wp-content/uploads/2014/04/Pokemon.jpg)

## Step 1 - Model

Start by modeling out this new problem domain. You will be building 3 classes with their own set of attributes (nouns) and behaviors (verbs).
- Think about the datatypes you will use to represent the specific attributes
- Think about the pros and cons of the datatypes
- Think about the associations you will be making between your objects
- Think about which object should have what logic. Remember, an object should have dominion over it's attributes and the expression of those attributes. We want you to be able to defend the choices you make when designing your classes.

## Step 2 - Define your classes

#### Pokemon class
All pokemon should have a:
- name
- id
- poketype
- hp
  - default/max is 100
- attack
- defense
- speed

All pokemon should be able to:
- list their stats
- fully restore their hp
- take damage
  - their hp should decrement
  - unless their hp is 0
- give their status
  - fainted or not (hp of 0)

#### Trainer class
A trainer should have a:
- name
- age
- hometown
- pokemons

A trainer should be able to:
- list their pokemons
- list their info
- add a pokemon
  - can not have more than 6

#### Nurse class
A nurse should have a:
- name
- age
- town

A nurse should be able to:
- list their info
- heal a trainer's pokemons
  - hint: it should accept a single parameter

## Step 3 - Test drive with pry

- Instantiate 8 pokemon objects
  - Two should have 0 hp
  - Two should have 50 hp
  - The other four can have any hp

**insert a binding.pry - check that your pokemon are created and you can utilize their instance methods**

- Instantiate a trainer object
  - give the trainer 5 pokemon

**insert a binding.pry - check that your trainer has pokemon, that you can utilize their instance methods, try to add 2 more pokemon**

- Instantiate a nurse object

**insert a binding.pry - check that you can utilize all of the nurses instance methods**

- call the method to list each objects info (trainers, pokemons, nurse) and print it to the console.
