======================
Assignment 1a: Haskell
======================

In this assignment, you will pick up the basics of Haskell. This will help you
to understand and write the harder assignments later in the course.

Getting started
===============

Install Haskell/GHC and stack

- Follow the installation instructions on https://docs.haskellstack.org/en/stable/README/
- Download the tarball for this assignment from canvas and unzip it

Testing
=======

You can build and test the code base by running the following command
in the root directory of the assignment:

.. code:: sh

    $ stack test

This will run all automated test scripts over the code.
Without modifications, the code will give a large list
of errors as the functions are yet to be implemented.
Of course, the end goal is to pass all of these tests.

Reducing bloat
--------------

Since all tests are run, the output may be quite overwhelming.
To reduce clutter, one can pass some additional arguments to
only run a subset of all tests.

For example, the following will run all List tests:

.. code:: sh

    $ stack test --test-arguments="-m List"

You can even restrict this to run test for only one function, e.g.

.. code:: sh

    $ stack test --test-arguments="-m List.length"

Interactive testing
-------------------

To run functions manually, you can use the built-in REPL

.. code:: sh

    $ stack ghci

This will boot an interactive environment (ghci) in which you can
run your code.

Here, you can debug your implementation of functions by running them, e.g.

.. code:: haskell

    ghci> List.length [2, 2, 2, 2]
    4

To disambiguate which implementation of a function to call,
use fully qualified names. For example, use ``List.length``
instead of ``length``.

**NOTICE**

After applying changes, if you wish to run the new implementation,
make sure to reload the module by calling:

.. code:: haskell

    ghci> :r

Otherwise, you will run your old code, which can be very confusing...

To quit ghci, just run

.. code:: haskell

    ghci> :q

Assignment
==========

Implement all functions found within the ``src`` folder. Some functions
may have additional constraints attached to them regarding how you implement
them. We recommend going through the files in the following order:

1. ``src/List.hs``
2. ``src/Tree.hs``
3. ``src/NoRec.hs``
4. ``src/Infix.hs``
5. ``src/Infinite.hs``

Example
-------

In each of these files, you will find a set of functions like the 
following:

.. code:: haskell

    -- returns true if the passed list was empty
    -- e.g. null [1, 2] = False
    null :: [a] -> Bool
    null = undefined

You provide an implementation for null, e.g

.. code:: haskell

    -- returns true if the passed list was empty
    -- e.g. null [1, 2] = False
    null :: [a] -> Bool
    null [] = True
    null _  = False

Note that you may not change the function signature. This is true for
all functions!

Constraints
-----------

Some files and functions place additional constraints
on the implementation of a function. To elaborate, some ask for 
time-complexity shorter that O(n), others disallow explicit 
recursion, etc.

These constraints are placed in comments in the file, either 
at the top level if they are for the whole file, or in front
of a function if they only apply to a single function.

In general, we **strongly** encourage you to read all the
comments in the code. They're there to place constraints,
but, most of all, to help you!

Hand-In
=======

You can hand in your code by running 

.. code:: sh

    $ ./tarball.sh

and uploading the resulting ``handin.tar.gz`` file to canvas.

Grading
=======

Grading is done according to the following formula:

.. code::

    (correct functions)/(total functions) * 9 + 1

This grade will also be computed for you when running all
the tests!

Do note that the grade you get from the automated checkers is subject
to change. For example, if we find that some of the constraints 
on functions haven't been met, we revoke the points you got for those
functions.

