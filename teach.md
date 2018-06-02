## How to Teach Intro Statistics and Data Science using R and RStudio

0. Use a cloud-based server

This is probably the most important advice we could give in terms of successfully 
integrating R and Rstudio into the class.  The "bring your own browser" model helps 
simplify the start of the class doing something interesting.  This approach is 
particularly helpful in avoiding 
distractions and negative energy from bumps that arise for installation.

1. Start right away.

Do something with R on day 1. Do something else on day 2. Have
students submit their first homework by the end of the first week (where
you provide the code and commands and all they need to do is add their
interpretation.

2. Illustrate frequently.

Have R running every class period and use it as needed throughout
the course so students can see what R does. Preview topics by
showing before asking students to do things.

3. Teach R as a language. (But don’t overdo it.)

There is a bit of syntax to learn, so teach it explicitly.

- Emphasize that capitalization (and spelling) matter.
- Explain carefully (and repeatedly) the syntax of functions.

Fortunately, the syntax is very straightforward. It consists of a
function name followed by an opening parenthesis, followed by
a comma-separated list of arguments (which may be named),
followed by a closing parenthesis.

Get students to think about what a function does and what
it needs to know to do its job. Generally, the function name
indicates what the function does. The arguments provide the
function with the necessary information to do the task at hand.

- Every object in R has a type (class). Ask frequently: What type of
thing is this?

Students need to understand the difference between a variable
and a data frame and also that there are different kinds of variables
(factor for categorical data and numeric for numerical
data, for example). Instructors and more advanced students will
want to know about vector and list objects.

Give more language details in higher level courses.
Upper level students should learn more about user-defined functions
and language control structures such as loops and conditionals.
Students in introductory courses don’t need to know as much
about the language.  In fact, everything they need can be found on the 
one-page cheatsheet: https://cran.r-project.org/web/packages/mosaic/vignettes/MinimalRgg.pdf

4. "Less volume, more creativity." [Mike McCarthy, head coach,
Green Bay Packers]

Use a few methods frequently and students will learn how to use
them well, flexibly, even creatively.

Focus on a small number of data types: numerical vectors, character
strings, factors, and data frames. Choose functions that employ
a similar framework and style to increase the ability of students to
transfer knowledge from one situation to another.

See https://cdn.rawgit.com/ProjectMOSAIC/mosaic/27c09830/ExtraDocs/LessVolume-MoreCreativity.html for details.

5. Rethink your course.

If you have taught computer-free or computer-light courses in
the past, you may need to rethink some things. With ubiquitous
computing, some things disappear from your course:

- Reading statistical tables.

Does anyone still consult a table for values of sin, or log? All
three of us have sworn off the use of tabulations of critical values
of distributions (since none of us use them in our professional
work, why would we teach this to students?)

- "Computational formulas".

Replace them with computation. Teach only the most intuitive
formulas. Focus on how they lead to intuition and understanding,
not computation.

- (Almost all) hand calculations.

At the same time, other things become possible that were not
before:

- Large data sets
- Beautiful plots
- Simulations and methods based on randomization and resampling
- Quick computations
- Increased focus on concepts rather than calculations

Get your students to think that using the computer is just part of
how statistics is done, rather than an add-on.

6. Keep the message as simple as possible and keep the commands
accordingly simple. 

Particularly when doing graphics, beware
of distracting students with the sometimes intricate details of
beautifying for publication. If the default behavior is good enough,
go with it.

7. Anticipate computationally challenged students, but don’t give in.

Some students pick up R very easily. In every course there will be
a few students who struggle. Be prepared to help them, but don’t
spend time listening to their complaints. Focus on diagnosing
what they don’t know and how to help them “get it”.
In our experience, the computer is often a fall guy for other things
the student does not understand. Because the computer gives
immediate feedback, it reveals these misunderstandings. For
example, if students are confused about the distinctions among
variables, statistics, and observational units, they will have a
difficult time providing the correct information to a plotting function.
The student may blame R, but that is not the primary source of the
difficulty. If you can diagnose the true problem, you will improve
their understanding of statistics and fix R difficulties simultaneously.

But even students with a solid understanding of the statistical
concepts you are teaching will encounter R errors that they cannot
eliminate. Tell students to copy and paste R code and error
messages into email when they have trouble. When you reply,
explain how the error message helped you diagnose their problem
and help them generalize your solution to other situations.

8. Introduce Graphics Early.

Students must learn to see before they can see to learn. 

Introduce graphics very early, so that students see that they can
get impressive output from simple commands. Try to break away
from their prior expectation that there is a "steep learning curve."
Accept the defaults – don’t worry about the niceties (good labels,
nice breaks on histograms, colors) too early. Let them become
comfortable with the basic graphics commands and then play
(make sure it feels like play!) with fancying things up. 
Keep in mind that just because the graphs are easy to make on
the computer doesn’t mean your students understand how to read
the graphs. Use examples that will help students develop good
habits for visualizing data.
