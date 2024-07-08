
INSERT INTO "web_page" ("date_inserted", "uuid", "oryginal_text", "summary", "url") VALUES ('2024-07-08 20:13:13.315192', '625a342f-ecd6-4fa9-8b3b-796301ced255', 'Python (programming language) - Wikipedia Python (programming language)
Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation.[33]
Python is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly procedural), object-oriented and functional programming. It is often described as a "batteries included" language due to its comprehensive standard library.[34][35]
Guido van Rossum began working on Python in the late 1980s as a successor to the ABC programming language and first released it in 1991 as Python 0.9.0.[36] Python 2.0 was released in 2000. Python 3.0, released in 2008, was a major revision not completely backward-compatible with earlier versions. Python 2.7.18, released in 2020, was the last release of Python 2.[37]
Python consistently ranks as one of the most popular programming languages, and has gained widespread use in the machine learning community.[38][39][40][41]
History[edit]
Python was invented in the late 1980s[42] by Guido van Rossum at Centrum Wiskunde & Informatica (CWI) in the Netherlands as a successor to the ABC programming language, which was inspired by SETL,[43] capable of exception handling and interfacing with the Amoeba operating system.[12] Its implementation began in December 1989.[44] Van Rossum shouldered sole responsibility for the project, as the lead developer, until 12 July 2018, when he announced his "permanent vacation" from his responsibilities as Python''s "benevolent dictator for life" (BDFL), a title the Python community bestowed upon him to reflect his long-term commitment as the project''s chief decision-maker[45] (he''s since come out of retirement and is self-titled "BDFL-emeritus"). In January 2019, active Python core developers elected a five-member Steering Council to lead the project.[46][47]
Python 2.0 was released on 16 October 2000, with many major new features such as list comprehensions, cycle-detecting garbage collection, reference counting, and Unicode support.[48] Python 3.0, released on 3 December 2008, with many of its major features backported to Python 2.6.x[49] and 2.7.x. Releases of Python 3 include the
2to3 utility, which automates the translation of Python 2 code to Python 3.[50]
Python 2.7''s end-of-life was initially set for 2015, then postponed to 2020 out of concern that a large body of existing code could not easily be forward-ported to Python 3.[51][52] No further security patches or other improvements will be released for it.[53][54] Currently only 3.8 and later are supported (2023 security issues were fixed in e.g. 3.7.17, the final 3.7.x release[55]). While Python 2.7 and older is officially unsupported, a different unofficial Python implementation, PyPy, continues to support Python 2, i.e. "2.7.18+" (plus 3.9 and 3.10), with the plus meaning (at least some) "backported security updates".[56]
In 2021 (and again twice in 2022), security updates were expedited, since all Python versions were insecure (including 2.7[57]) because of security issues leading to possible remote code execution[58] and web-cache poisoning.[59] In 2022, Python 3.10.4 and 3.9.12 were expedited[60] and 3.8.13, because of many security issues.[61] When Python 3.9.13 was released in May 2022, it was announced that the 3.9 series (joining the older series 3.8 and 3.7) would only receive security fixes in the future.[62] On 7 September 2022, four new releases were made due to a potential denial-of-service attack: 3.10.7, 3.9.14, 3.8.14, and 3.7.14.[63][64]
As of October 2023,[update] Python 3.12 is the stable release, and 3.12 and 3.11 are the only versions with active (as opposed to just security) support. Notable changes in 3.11 from 3.10 include increased program execution speed and improved error reporting.[65]
Every Python release since 3.5 has added some syntax to the language. 3.10 added the
| union type operator [66] and the
match and
case keywords (for structural pattern matching statements). 3.11 expanded exception handling functionality. Python 3.12 added the new keyword
type.
Python 3.11 claims to be between 10 and 60% faster than Python 3.10, and Python 3.12 adds another 5% on top of that. It also has improved error messages, and many other changes.
Since 27 June 2023[update], Python 3.8 is the oldest supported version of Python (albeit in the ''security support'' phase), due to Python 3.7 reaching end-of-life.[67]
Python 3.13 introduced an incremental garbage collector (producing shorter pauses for collection in programs with a lot of objects); an experimental JIT compiler;[68] and removals from the C API. Some standard library modules and many deprecated classes, functions and methods, will be removed in Python 3.15 and or 3.16.[69][70] Starting with 3.13, it and later versions have 2 years of full support (up from one and a half); followed by 3 years of security support (for same total support as before).
Design philosophy and features[edit]
Python is a multi-paradigm programming language. Object-oriented programming and structured programming are fully supported, and many of their features support functional programming and aspect-oriented programming (including metaprogramming[71] and metaobjects).[72] Many other paradigms are supported via extensions, including design by contract[73][74] and logic programming.[75]
Python uses dynamic typing and a combination of reference counting and a cycle-detecting garbage collector for memory management.[76] It uses dynamic name resolution (late binding), which binds method and variable names during program execution.
Its design offers some support for functional programming in the Lisp tradition. It has
filter,
mapand
reduce functions; list comprehensions, dictionaries, sets, and generator expressions.[77] The standard library has two modules (
itertools and
functools) that implement functional tools borrowed from Haskell and Standard ML.[78]
Its core philosophy is summarized in the Zen of Python (PEP 20), which includes aphorisms such as:[79]
- Beautiful is better than ugly.
- Explicit is better than implicit.
- Simple is better than complex.
- Complex is better than complicated.
- Readability counts.
However, Python features regularly violate these principles and received criticism for adding unnecessary language bloat.[80][81] Responses to these criticisms are that the Zen of Python is a guideline rather than a rule.[82] The addition of some new features had been so controversial that Guido van Rossum resigned as Benevolent Dictator for Life following vitriol over the addition of the assignment expression operator in Python 3.8.[83][84]
Nevertheless, rather than building all of its functionality into its core, Python was designed to be highly extensible via modules. This compact modularity has made it particularly popular as a means of adding programmable interfaces to existing applications. Van Rossum''s vision of a small core language with a large standard library and easily extensible interpreter stemmed from his frustrations with ABC, which espoused the opposite approach.[42]
Python claims to strive for a simpler, less-cluttered syntax and grammar while giving developers a choice in their coding methodology. In contrast to Perl''s "there is more than one way to do it" motto, Python embraces a "there should be one—and preferably only one—obvious way to do it." philosophy.[79] In practice, however, Python provides many ways to achieve the same task. There are, for example, at least three ways to format a string literal, with no certainty as to which one a programmer should use.[85] Alex Martelli, a Fellow at the Python Software Foundation and Python book author, wrote: "To describe something as ''clever'' is not considered a compliment in the Python culture."[86]
Python''s developers usually strive to avoid premature optimization and reject patches to non-critical parts of the CPython reference implementation that would offer marginal increases in speed at the cost of clarity.[87] Execution speed can be improved by moving speed-critical functions to extension modules written in languages such as C, or by using a just-in-time compiler like PyPy. It is also possible to cross-compile to other languages, but it either doesn''t provide the full speed-up that might be expected, since Python is a very dynamic language, or a restricted subset of Python is compiled, and possibly semantics are slightly changed.[88]
Python''s developers aim for it to be fun to use. This is reflected in its name—a tribute to the British comedy group Monty Python[89]—and in occasionally playful approaches to tutorials and reference materials, such as the use of the terms "spam" and "eggs" (a reference to a Monty Python sketch) in examples, instead of the often-used "foo" and "bar".[90][91] A common neologism in the Python community is pythonic, which has a wide range of meanings related to program style. "Pythonic" code may use Python idioms well, be natural or show fluency in the language, or conform with Python''s minimalist philosophy and emphasis on readability. Code that is difficult to understand or reads like a rough transcription from another programming language is called unpythonic.[92]
Syntax and semantics[edit]
Python is meant to be an easily readable language. Its formatting is visually uncluttered and often uses English keywords where other languages use punctuation. Unlike many other languages, it does not use curly brackets to delimit blocks, and semicolons after statements are allowed but rarely used. It has fewer syntactic exceptions and special cases than C or Pascal.[93]
Indentation[edit]
Python uses whitespace indentation, rather than curly brackets or keywords, to delimit blocks. An increase in indentation comes after certain statements; a decrease in indentation signifies the end of the current block.[94] Thus, the program''s visual structure accurately represents its semantic structure.[95] This feature is sometimes termed the off-side rule. Some other languages use indentation this way; but in most, indentation has no semantic meaning. The recommended indent size is four spaces.[96]
Statements and control flow[edit]
Python''s statements include:
- The assignment statement, using a single equals sign
=
- The
ifstatement, which conditionally executes a block of code, along with
elseand
elif(a contraction of else-if)
- The
forstatement, which iterates over an iterable object, capturing each element to a local variable for use by the attached block
- The
whilestatement, which executes a block of code as long as its condition is true
- The
trystatement, which allows exceptions raised in its attached code block to be caught and handled by
exceptclauses (or new syntax
except*in Python 3.11 for exception groups[97]); it also ensures that clean-up code in a
finallyblock is always run regardless of how the block exits
- The
raisestatement, used to raise a specified exception or re-raise a caught exception
- The
classstatement, which executes a block of code and attaches its local namespace to a class, for use in object-oriented programming
- The
defstatement, which defines a function or method
- The
withstatement, which encloses a code block within a context manager (for example, acquiring a lock before it is run, then releasing the lock; or opening and closing a file), allowing resource-acquisition-is-initialization (RAII)-like behavior and replacing a common try/finally idiom[98]
- The
breakstatement, which exits a loop
- The
continuestatement, which skips the rest of the current iteration and continues with the next
- The
delstatement, which removes a variable—deleting the reference from the name to the value, and producing an error if the variable is referred to before it is redefined
- The
passstatement, serving as a NOP, syntactically needed to create an empty code block
- The
assertstatement, used in debugging to check for conditions that should apply
- The
yieldstatement, which returns a value from a generator function (and also an operator); used to implement coroutines
- The
returnstatement, used to return a value from a function
- The
importand
fromstatements, used to import modules whose functions or variables can be used in the current program
The assignment statement (
=) binds a name as a reference to a separate, dynamically allocated object. Variables may subsequently be rebound at any time to any object. In Python, a variable name is a generic reference holder without a fixed data type; however, it always refers to some object with a type. This is called dynamic typing—in contrast to statically-typed languages, where each variable may contain only a value of a certain type.
Python does not support tail call optimization or first-class continuations, and, according to Van Rossum, it never will.[99][100] However, better support for coroutine-like functionality is provided by extending Python''s generators.[101] Before 2.5, generators were lazy iterators; data was passed unidirectionally out of the generator. From Python 2.5 on, it is possible to pass data back into a generator function; and from version 3.3, it can be passed through multiple stack levels.[102]
Expressions[edit]
Python''s expressions include:
- The
+,
-, and
*operators for mathematical addition, subtraction, and multiplication are similar to other languages, but the behavior of division differs. There are two types of divisions in Python: floor division (or integer division)
//and floating-point
/division.[103] Python uses the
**operator for exponentiation.
- Python uses the
+operator for string concatenation. Python uses the
*operator for duplicating a string a specified number of times.
- The
@infix operator. It is intended to be used by libraries such as NumPy for matrix multiplication.[104][105]
- The syntax
:=, called the "walrus operator", was introduced in Python 3.8. It assigns values to variables as part of a larger expression.[106]
- In Python,
==compares by value. Python''s
isoperator may be used to compare object identities (comparison by reference), and comparisons may be chained—for example,
a <= b <= c.
- Python uses
and,
or, and
notas Boolean operators.
- Python has a type of expression named a list comprehension, and a more general expression named a generator expression.[77]
- Anonymous functions are implemented using lambda expressions; however, there may be only one expression in each body.
- Conditional expressions are written as
x if c else y[107] (different in order of operands from the
c ? x : yoperator common to many other languages).
- Python makes a distinction between lists and tuples. Lists are written as
[1, 2, 3], are mutable, and cannot be used as the keys of dictionaries (dictionary keys must be immutable in Python). Tuples, written as
(1, 2, 3), are immutable and thus can be used as keys of dictionaries, provided all of the tuple''s elements are immutable. The
+operator can be used to concatenate two tuples, which does not directly modify their contents, but produces a new tuple containing the elements of both. Thus, given the variable
tinitially equal to
(1, 2, 3), executing
t = t + (4, 5)first evaluates
t + (4, 5), which yields
(1, 2, 3, 4, 5), which is then assigned back to
t—thereby effectively "modifying the contents" of
twhile conforming to the immutable nature of tuple objects. Parentheses are optional for tuples in unambiguous contexts.[108]
- Python features sequence unpacking where multiple expressions, each evaluating to anything that can be assigned (to a variable, writable property, etc.) are associated in an identical manner to that forming tuple literals—and, as a whole, are put on the left-hand side of the equal sign in an assignment statement. The statement expects an iterable object on the right-hand side of the equal sign that produces the same number of values as the provided writable expressions; when iterated through them, it assigns each of the produced values to the corresponding expression on the left.[109]
- Python has a "string format" operator
%that functions analogously to
printfformat strings in C—e.g.
"spam=%s eggs=%d" % ("blah", 2)evaluates to
"spam=blah eggs=2". In Python 2.6+ and 3+, this was supplemented by the
format()method of the
strclass, e.g.
"spam={0} eggs={1}".format("blah", 2). Python 3.6 added "f-strings":
spam = "blah"; eggs = 2; f''spam={spam} eggs={eggs}''.[110]
- Strings in Python can be concatenated by "adding" them (with the same operator as for adding integers and floats), e.g.
"spam" + "eggs"returns
"spameggs". If strings contain numbers, they are added as strings rather than integers, e.g.
"2" + "2"returns
"22".
- Python has various string literals:
- Delimited by single or double quotes; unlike in Unix shells, Perl, and Perl-influenced languages, single and double quotes work the same. Both use the backslash (
\) as an escape character. String interpolation became available in Python 3.6 as "formatted string literals".[110]
- Triple-quoted (beginning and ending with three single or double quotes), which may span multiple lines and function like here documents in shells, Perl, and Ruby.
- Raw string varieties, denoted by prefixing the string literal with
r. Escape sequences are not interpreted; hence raw strings are useful where literal backslashes are common, such as regular expressions and Windows-style paths. (Compare "
@-quoting" in C#.)
- Delimited by single or double quotes; unlike in Unix shells, Perl, and Perl-influenced languages, single and double quotes work the same. Both use the backslash (
- Python has array index and array slicing expressions in lists, denoted as
a[key],
a[start:stop]or
a[start:stop:step]. Indexes are zero-based, and negative indexes are relative to the end. Slices take elements from the start index up to, but not including, the stop index. The third slice parameter, called step or stride, allows elements to be skipped and reversed. Slice indexes may be omitted—for example,
a[:]returns a copy of the entire list. Each element of a slice is a shallow copy.
In Python, a distinction between expressions and statements is rigidly enforced, in contrast to languages such as Common Lisp, Scheme, or Ruby. This leads to duplicating some functionality. For example:
- List comprehensions vs.
for-loops
- Conditional expressions vs.
ifblocks
- The
eval()vs.
exec()built-in functions (in Python 2,
execis a statement); the former is for expressions, the latter is for statements
Statements cannot be a part of an expression—so list and other comprehensions or lambda expressions, all being expressions, cannot contain statements. A particular case is that an assignment statement such as
a = 1 cannot form part of the conditional expression of a conditional statement.
Methods[edit]
Methods on objects are functions attached to the object''s class; the syntax
instance.method(argument) is, for normal methods and functions, syntactic sugar for
Class.method(instance, argument). Python methods have an explicit
self parameter to access instance data, in contrast to the implicit self (or
this) in some other object-oriented programming languages (e.g., C++, Java, Objective-C, Ruby).[111] Python also provides methods, often called dunder methods (due to their names beginning and ending with double-underscores), to allow user-defined classes to modify how they are handled by native operations including length, comparison, in arithmetic operations and type conversion.[112]
Typing[edit]
Python uses duck typing and has typed objects but untyped variable names. Type constraints are not checked at compile time; rather, operations on an object may fail, signifying that it is not of a suitable type. Despite being dynamically typed, Python is strongly typed, forbidding operations that are not well-defined (for example, adding a number to a string) rather than silently attempting to make sense of them.
Python allows programmers to define their own types using classes, most often used for object-oriented programming. New instances of classes are constructed by calling the class (for example,
SpamClass() or
EggsClass()), and the classes are instances of the metaclass
type (itself an instance of itself), allowing metaprogramming and reflection.
Before version 3.0, Python had two kinds of classes (both using the same syntax): old-style and new-style;[113] current Python versions only support the semantics of the new style.
Python supports optional type annotations.[4][114] These annotations are not enforced by the language, but may be used by external tools such as mypy to catch errors.[115][116] Mypy also supports a Python compiler called mypyc, which leverages type annotations for optimization.[117]
|Type
|Mutability
|Description
|Syntax examples
|
bool
|immutable
|Boolean value
True
False
|
bytearray
|mutable
|Sequence of bytes
bytearray(b''Some ASCII'')
bytearray(b"Some ASCII")
bytearray([119, 105, 107, 105])
|
bytes
|immutable
|Sequence of bytes
b''Some ASCII''
b"Some ASCII"
bytes([119, 105, 107, 105])
|
complex
|immutable
|Complex number with real and imaginary parts
3+2.7j
3 + 2.7j
|
dict
|mutable
|Associative array (or dictionary) of key and value pairs; can contain mixed types (keys and values), keys must be a hashable type
{''key1'': 1.0, 3: False}
{}
|
types.EllipsisType
|immutable
|An ellipsis placeholder to be used as an index in NumPy arrays
...
Ellipsis
|
float
|immutable
|Double-precision floating-point number. The precision is machine-dependent but in practice is generally implemented as a 64-bit IEEE 754 number with 53 bits of precision.[118]
|
|
frozenset
|immutable
|Unordered set, contains no duplicates; can contain mixed types, if hashable
frozenset([4.0, ''string'', True])
|
int
|immutable
|Integer of unlimited magnitude[119]
42
|
list
|mutable
|List, can contain mixed types
[4.0, ''string'', True]
[]
|
types.NoneType
|immutable
|An object representing the absence of a value, often called null in other languages
None
|
types.NotImplementedType
|immutable
|A placeholder that can be returned from overloaded operators to indicate unsupported operand types.
NotImplemented
|
range
|immutable
|An immutable sequence of numbers commonly used for looping a specific number of times in
for loops[120]
range(-1, 10)
range(10, -5, -2)
|
set
|mutable
|Unordered set, contains no duplicates; can contain mixed types, if hashable
{4.0, ''string'', True}
set()
|
str
|immutable
|A character string: sequence of Unicode codepoints
''Wikipedia''
"Wikipedia"
"""Spanning
multiple
lines"""
Spanning
multiple
lines
|
tuple
|immutable
|Can contain mixed types
(4.0, ''string'', True)
(''single element'',)
()
Arithmetic operations[edit]
Python has the usual symbols for arithmetic operators (
+,
-,
*,
/), the floor division operator
// and the modulo operation
% (where the remainder can be negative, e.g.
4 % -3 == -2). It also has
** for exponentiation, e.g.
5**3 == 125 and
9**0.5 == 3.0, and a matrix‑multiplication operator
@ .[121] These operators work like in traditional math; with the same precedence rules, the operators infix (
+ and
- can also be unary to represent positive and negative numbers respectively).
The division between integers produces floating-point results. The behavior of division has changed significantly over time:[122]
- Current Python (i.e. since 3.0) changed
/to always be floating-point division, e.g.
5/2 == 2.5.
- The floor division
//operator was introduced. So
7//3 == 2,
-7//3 == -3,
7.5//3 == 2.0and
-7.5//3 == -3.0. Adding
from __future__ import divisioncauses a module used in Python 2.7 to use Python 3.0 rules for division (see above).
In Python terms,
/ is true division (or simply division), and
// is floor division.
/ before version 3.0 is classic division.[122]
Rounding towards negative infinity, though different from most languages, adds consistency. For instance, it means that the equation
(a + b)//b == a//b + 1 is always true. It also means that the equation
b*(a//b) + a%b == a is valid for both positive and negative values of
a. However, maintaining the validity of this equation means that while the result of
a%b is, as expected, in the half-open interval [0, b), where
b is a positive integer, it has to lie in the interval (b, 0] when
b is negative.[123]
Python provides a
round function for rounding a float to the nearest integer. For tie-breaking, Python 3 uses round to even:
round(1.5) and
round(2.5) both produce
2.[124] Versions before 3 used round-away-from-zero:
round(0.5) is
1.0,
round(-0.5) is
−1.0.[125]
Python allows Boolean expressions with multiple equality relations in a manner that is consistent with general use in mathematics. For example, the expression
a < b < c tests whether
a is less than
b and
b is less than
c.[126] C-derived languages interpret this expression differently: in C, the expression would first evaluate
a < b, resulting in 0 or 1, and that result would then be compared with
c.[127]
Python uses arbitrary-precision arithmetic for all integer operations. The
Decimal type/class in the
decimal module provides decimal floating-point numbers to a pre-defined arbitrary precision and several rounding modes.[128] The
Fraction class in the
fractions module provides arbitrary precision for rational numbers.[129]
Due to Python''s extensive mathematics library, and the third-party library NumPy that further extends the native capabilities, it is frequently used as a scientific scripting language to aid in problems such as numerical data processing and manipulation.[130][131]
Programming examples[edit]
print(''Hello, world!'')
Program to calculate the factorial of a positive integer:
n = int(input(''Type a number, and its factorial will be printed: ''))
if n < 0:
raise ValueError(''You must enter a non-negative integer'')
factorial = 1
for i in range(2, n + 1):
factorial *= i
print(factorial)
Libraries[edit]
Python''s large standard library[132] provides tools suited to many tasks and is commonly cited as one of its greatest strengths. For Internet-facing applications, many standard formats and protocols such as MIME and HTTP are supported. It includes modules for creating graphical user interfaces, connecting to relational databases, generating pseudorandom numbers, arithmetic with arbitrary-precision decimals,[128] manipulating regular expressions, and unit testing.
Some parts of the standard library are covered by specifications—for example, the Web Server Gateway Interface (WSGI) implementation
wsgiref follows PEP 333[133]—but most are specified by their code, internal documentation, and test suites. However, because most of the standard library is cross-platform Python code, only a few modules need altering or rewriting for variant implementations.
As of 17 March 2024,[update] the Python Package Index (PyPI), the official repository for third-party Python software, contains over 523,000[134] packages with a wide range of functionality, including:
Development environments[edit]
Most Python implementations (including CPython) include a read–eval–print loop (REPL), permitting them to function as a command line interpreter for which users enter statements sequentially and receive results immediately.
Python also comes with an Integrated development environment (IDE) called IDLE, which is more beginner-oriented.
Other shells, including IDLE and IPython, add further abilities such as improved auto-completion, session state retention, and syntax highlighting.
As well as standard desktop integrated development environments including PyCharm, IntelliJ Idea, Visual Studio Code etc, there are web browser-based IDEs, including SageMath, for developing science- and math-related programs; PythonAnywhere, a browser-based IDE and hosting environment; and Canopy IDE, a commercial IDE emphasizing scientific computing.[135]
Implementations[edit]
Reference implementation[edit]
CPython is the reference implementation of Python. It is written in C, meeting the C89 standard (Python 3.11 uses C11[136]) with several select C99 features. CPython includes its own C extensions, but third-party extensions are not limited to older C versions—e.g. they can be implemented with C11 or C++.[137][138] CPython compiles Python programs into an intermediate bytecode[139] which is then executed by its virtual machine.[140] CPython is distributed with a large standard library written in a mixture of C and native Python, and is available for many platforms, including Windows (starting with Python 3.9, the Python installer deliberately fails to install on Windows 7 and 8;[141][142] Windows XP was supported until Python 3.5) and most modern Unix-like systems, including macOS (and Apple M1 Macs, since Python 3.9.1, with experimental installer), with unofficial support for VMS.[143] Platform portability was one of its earliest priorities.[144] (During Python 1 and 2 development, even OS/2 and Solaris were supported,[145] but support has since been dropped for many platforms.)
Python, since 3.7, only supports operating systems with multi-threading support.
Other implementations[edit]
- PyPy is a fast, compliant interpreter of Python 2.7 and 3.8.[146][147] Its just-in-time compiler often brings a significant speed improvement over CPython, but some libraries written in C cannot be used with it.[148]
- Stackless Python is a significant fork of CPython that implements microthreads; it does not use the call stack in the same way, thus allowing massively concurrent programs. PyPy also has a stackless version.[149]
- MicroPython and CircuitPython are Python 3 variants optimized for microcontrollers, including Lego Mindstorms EV3.[150]
- Pyston is a variant of the Python runtime that uses just-in-time compilation to speed up the execution of Python programs.[151]
- Cinder is a performance-oriented fork of CPython 3.8 that contains a number of optimizations, including bytecode inline caching, eager evaluation of coroutines, a method-at-a-time JIT, and an experimental bytecode compiler.[152]
- Snek[153][154][155] Embedded Computing Language (compatible with e.g. 8-bit AVR microcontrollers such as ATmega 328P-based Arduino, as well as larger ones compatible with MicroPython) "is Python-inspired, but it is not Python. It is possible to write Snek programs that run under a full Python system, but most Python programs will not run under Snek."[156] It is an imperative language not including OOP / classes, unlike Python, and simplifying to one number type with 32-bit single-precision (similar to JavaScript, except smaller).
Unsupported implementations[edit]
Other just-in-time Python compilers have been developed, but are now unsupported:
- Google began a project named Unladen Swallow in 2009, with the aim of speeding up the Python interpreter five-fold by using the LLVM, and of improving its multithreading ability to scale to thousands of cores,[157] while ordinary implementations suffer from the global interpreter lock.
- Psyco is a discontinued just-in-time specializing compiler that integrates with CPython and transforms bytecode to machine code at runtime. The emitted code is specialized for certain data types and is faster than the standard Python code. Psyco does not support Python 2.7 or later.
- PyS60 was a Python 2 interpreter for Series 60 mobile phones released by Nokia in 2005. It implemented many of the modules from the standard library and some additional modules for integrating with the Symbian operating system. The Nokia N900 also supports Python with GTK widget libraries, enabling programs to be written and run on the target device.[158]
Cross-compilers to other languages[edit]
There are several compilers/transpilers to high-level object languages, with either unrestricted Python, a restricted subset of Python, or a language similar to Python as the source language:
- Brython,[159] Transcrypt[160][161] and Pyjs (latest release in 2012) compile Python to JavaScript.
- Codon compiles a subset of statically typed Python[162] to machine code (via LLVM) and supports native multithreading.[163]
- Cython compiles (a superset of) Python to C. The resulting code is also usable with Python via direct C-level API calls into the Python interpreter.
- PyJL compiles/transpiles a subset of Python to "human-readable, maintainable, and high-performance Julia source code".[88] Despite claiming high performance, no tool can claim to do that for arbitrary Python code; i.e. it''s known not possible to compile to a faster language or machine code. Unless semantics of Python are changed, but in many cases speedup is possible with few or no changes in the Python code. The faster Julia source code can then be used from Python, or compiled to machine code, and based that way.
- Nuitka compiles Python into C.[164]
- Numba uses LLVM to compile a subset of Python to machine code.
- Pythran compiles a subset of Python 3 to C++ (C++11).[165]
- RPython can be compiled to C, and is used to build the PyPy interpreter of Python.
- The Python → 11l → C++ transpiler[166] compiles a subset of Python 3 to C++ (C++17).
Specialized:
- MyHDL is a Python-based hardware description language (HDL), that converts MyHDL code to Verilog or VHDL code.
Older projects (or not to be used with Python 3.x and latest syntax):
- Google''s Grumpy (latest release in 2017) transpiles Python 2 to Go.[167][168][169]
- IronPython allows running Python 2.7 programs (and an alpha, released in 2021, is also available for "Python 3.4, although features and behaviors from later versions may be included"[170]) on the .NET Common Language Runtime.[171]
- Jython compiles Python 2.7 to Java bytecode, allowing the use of the Java libraries from a Python program.[172]
- Pyrex (latest release in 2010) and Shed Skin (latest release in 2013) compile to C and C++ respectively.
Performance[edit]
Performance comparison of various Python implementations on a non-numerical (combinatorial) workload was presented at EuroSciPy ''13.[173] Python''s performance compared to other programming languages is also benchmarked by The Computer Language Benchmarks Game.[174]
Development[edit]
Python''s development is conducted largely through the Python Enhancement Proposal (PEP) process, the primary mechanism for proposing major new features, collecting community input on issues, and documenting Python design decisions.[175] Python coding style is covered in PEP 8.[176] Outstanding PEPs are reviewed and commented on by the Python community and the steering council.[175]
Enhancement of the language corresponds with the development of the CPython reference implementation. The mailing list python-dev is the primary forum for the language''s development. Specific issues were originally discussed in the Roundup bug tracker hosted at by the foundation.[177] In 2022, all issues and discussions were migrated to GitHub.[178] Development originally took place on a self-hosted source-code repository running Mercurial, until Python moved to GitHub in January 2017.[179]
CPython''s public releases come in three types, distinguished by which part of the version number is incremented:
- Backward-incompatible versions, where code is expected to break and needs to be manually ported. The first part of the version number is incremented. These releases happen infrequently—version 3.0 was released 8 years after 2.0. According to Guido van Rossum, a version 4.0 is very unlikely to ever happen.[180]
- Major or "feature" releases are largely compatible with the previous version but introduce new features. The second part of the version number is incremented. Starting with Python 3.9, these releases are expected to happen annually.[181][182] Each major version is supported by bug fixes for several years after its release.[183]
- Bugfix releases,[184] which introduce no new features, occur about every 3 months and are made when a sufficient number of bugs have been fixed upstream since the last release. Security vulnerabilities are also patched in these releases. The third and final part of the version number is incremented.[184]
Many alpha, beta, and release-candidates are also released as previews and for testing before final releases. Although there is a rough schedule for each release, they are often delayed if the code is not ready. Python''s development team monitors the state of the code by running the large unit test suite during development.[185]
The major academic conference on Python is PyCon. There are also special Python mentoring programs, such as PyLadies.
Python 3.12 removed
wstr meaning Python extensions[186] need to be modified,[187] and 3.10 added pattern matching to the language.[188]
Python 3.12 dropped some outdated modules, and more will be dropped in the future, deprecated as of 3.13; already deprecated array ''u'' format code will emit
DeprecationWarning since 3.13 and will be removed in Python 3.16. The ''w'' format code should be used instead. Part of ctypes is also deprecated and
http.server.CGIHTTPRequestHandler will emit a DeprecationWarning, and will be removed in 3.15. Using that code already has a high potential for both security and functionality bugs. Parts of the typing module are deprecated, e.g. creating a
typing.NamedTuple class using keyword arguments to denote the fields and such (and more) will be disallowed in Python 3.15.
API documentation generators[edit]
Tools that can generate documentation for Python API include pydoc (available as part of the standard library), Sphinx, Pdoc and its forks, Doxygen and Graphviz, among others.[189]
Naming[edit]
Python''s name is derived from the British comedy group Monty Python, whom Python creator Guido van Rossum enjoyed while developing the language. Monty Python references appear frequently in Python code and culture;[190] for example, the metasyntactic variables often used in Python literature are spam and eggs instead of the traditional foo and bar.[190][191] The official Python documentation also contains various references to Monty Python routines.[192][193] Users of Python are sometimes referred to as "Pythonistas".[194]
The prefix Py- is used to show that something is related to Python. Examples of the use of this prefix in names of Python applications or libraries include Pygame, a binding of SDL to Python (commonly used to create games); PyQt and PyGTK, which bind Qt and GTK to Python respectively; and PyPy, a Python implementation originally written in Python.
Popularity[edit]
Since 2003, Python has consistently ranked in the top ten most popular programming languages in the TIOBE Programming Community Index where as of December 2022[update] it was the most popular language (ahead of C, C++, and Java).[40] It was selected as Programming Language of the Year (for "the highest rise in ratings in a year") in 2007, 2010, 2018, and 2020 (the only language to have done so four times as of 2020[update][195]).
Large organizations that use Python include Wikipedia, Google,[196] Yahoo!,[197] CERN,[198] NASA,[199] Facebook,[200] Amazon, Instagram,[201] Spotify,[202] and some smaller entities like ILM[203] and ITA.[204] The social news networking site Reddit was written mostly in Python.[205]
Uses[edit]
Python can serve as a scripting language for web applications, e.g. via mod_wsgi for the Apache webserver.[206] With Web Server Gateway Interface, a standard API has evolved to facilitate these applications. Web frameworks like Django, Pylons, Pyramid, TurboGears, web2py, Tornado, Flask, Bottle, and Zope support developers in the design and maintenance of complex applications. Pyjs and IronPython can be used to develop the client-side of Ajax-based applications. SQLAlchemy can be used as a data mapper to a relational database. Twisted is a framework to program communications between computers, and is used (for example) by Dropbox.
Libraries such as NumPy, SciPy and Matplotlib allow the effective use of Python in scientific computing,[207][208] with specialized libraries such as Biopython and Astropy providing domain-specific functionality. SageMath is a computer algebra system with a notebook interface programmable in Python: its library covers many aspects of mathematics, including algebra, combinatorics, numerical mathematics, number theory, and calculus.[209] OpenCV has Python bindings with a rich set of features for computer vision and image processing.[210]
Python is commonly used in artificial intelligence projects and machine learning projects with the help of libraries like TensorFlow, Keras, Pytorch, scikit-learn and the Logic language ProbLog.[211][212][213][214][215] As a scripting language with a modular architecture, simple syntax, and rich text processing tools, Python is often used for natural language processing.[216]
The combination of Python and Prolog has proved to be particularly useful for AI applications, with Prolog providing knowledge representation and reasoning capablities. The Janus system, in particular, exploits the similarites between these two languages, in part because of their use of dynamic typing, and the simple recursive nature of their data structures. Typical applications of this combination include natural language processing, visual query answering, geospatial reasoning, and handling of semantic web data.[217][218] The Natlog system, implemented in Python, uses Definite Clause Grammars (DCGs) as prompt generators for text-to-text generators like GPT3 and text-to-image generators like DALL-E or Stable Diffusion.[219]
Python can also be used for graphical user interface (GUI) by using libraries like Tkinter.[220][221]
Python has been successfully embedded in many software products as a scripting language, including in finite element method software such as Abaqus, 3D parametric modelers like FreeCAD, 3D animation packages such as 3ds Max, Blender, Cinema 4D, Lightwave, Houdini, Maya, modo, MotionBuilder, Softimage, the visual effects compositor Nuke, 2D imaging programs like GIMP,[222] Inkscape, Scribus and Paint Shop Pro,[223] and musical notation programs like scorewriter and capella. GNU Debugger uses Python as a pretty printer to show complex structures such as C++ containers. Esri promotes Python as the best choice for writing scripts in ArcGIS.[224] It has also been used in several video games,[225][226] and has been adopted as first of the three available programming languages in Google App Engine, the other two being Java and Go.[227]
Many operating systems include Python as a standard component. It ships with most Linux distributions,[228] AmigaOS 4 (using Python 2.7), FreeBSD (as a package), NetBSD, and OpenBSD (as a package) and can be used from the command line (terminal). Many Linux distributions use installers written in Python: Ubuntu uses the Ubiquity installer, while Red Hat Linux and Fedora Linux use the Anaconda installer. Gentoo Linux uses Python in its package management system, Portage.
Python is used extensively in the information security industry, including in exploit development.[229][230]
Most of the Sugar software for the One Laptop per Child XO, developed at Sugar Labs as of 2008[update], is written in Python.[231] The Raspberry Pi single-board computer project has adopted Python as its main user-programming language.
LibreOffice includes Python and intends to replace Java with Python. Its Python Scripting Provider is a core feature[232] since Version 4.0 from 7 February 2013.
Languages influenced by Python[edit]
Python''s design and philosophy have influenced many other programming languages:
- Boo uses indentation, a similar syntax, and a similar object model.[233]
- Cobra uses indentation and a similar syntax, and its Acknowledgements document lists Python first among languages that influenced it.[234]
- CoffeeScript, a programming language that cross-compiles to JavaScript, has Python-inspired syntax.
- ECMAScript–JavaScript borrowed iterators and generators from Python.[235]
- GDScript, a scripting language very similar to Python, built-in to the Godot game engine.[236]
- Go is designed for the "speed of working in a dynamic language like Python"[237] and shares the same syntax for slicing arrays.
- Groovy was motivated by the desire to bring the Python design philosophy to Java.[238]
- Julia was designed to be "as usable for general programming as Python".[28]
- Mojo is a non-strict[29][239] superset of Python (e.g. still missing classes, and adding e.g. struct).[240]
- Nim uses indentation and similar syntax.[241]
- Ruby''s creator, Yukihiro Matsumoto, has said: "I wanted a scripting language that was more powerful than Perl, and more object-oriented than Python. That''s why I decided to design my own language."[242]
- Swift, a programming language developed by Apple, has some Python-inspired syntax.[243]
- Kotlin blends Python and Java features, minimizing boilerplate code for enhanced developer efficiency.[244]
Python''s development practices have also been emulated by other languages. For example, the practice of requiring a document describing the rationale for, and issues surrounding, a change to the language (in Python, a PEP) is also used in Tcl,[245] Erlang,[246] and Swift.[247]
See also[edit]
- Python syntax and semantics
- pip (package manager)
- List of programming languages
- History of programming languages
- Comparison of programming languages
References[edit]
- ^ "General Python FAQ – Python 3 documentation". docs.python.org. Retrieved 7 July 2024.
- ^ "Python 0.9.1 part 01/21". alt.sources archives. Archived from the original on 11 August 2021. Retrieved 11 August 2021.
- ^ "Why is Python a dynamic language and also a strongly typed language". Python Wiki. Archived from the original on 14 March 2021. Retrieved 27 January 2021.
- ^ a b "PEP 483 – The Theory of Type Hints". Python.org. Archived from the original on 14 June 2020. Retrieved 14 June 2018.
- ^ "PEP 11 – CPython platform support | peps.python.org". Python Enhancement Proposals (PEPs). Retrieved 22 April 2024.
- ^ "PEP 738 – Adding Android as a supported platform | peps.python.org". Python Enhancement Proposals (PEPs). Retrieved 19 May 2024.
- ^ "Download Python for Other Platforms". Python.org. Archived from the original on 27 November 2020. Retrieved 18 August 2023.
- ^ "test – Regression tests package for Python – Python 3.7.13 documentation". docs.python.org. Archived from the original on 17 May 2022. Retrieved 17 May 2022.
- ^ "platform – Access to underlying platform''s identifying data – Python 3.10.4 documentation". docs.python.org. Archived from the original on 17 May 2022. Retrieved 17 May 2022.
- ^ Holth, Moore (30 March 2014). "PEP 0441 – Improving Python ZIP Application Support". Archived from the original on 26 December 2018. Retrieved 12 November 2015.
- ^ "Starlark Language". Archived from the original on 15 June 2020. Retrieved 25 May 2019.
- ^ a b "Why was Python created in the first place?". General Python FAQ. Python Software Foundation. Archived from the original on 24 October 2012. Retrieved 22 March 2007.
I had extensive experience with implementing an interpreted language in the ABC group at CWI, and from working with this group I had learned a lot about language design. This is the origin of many Python features, including the use of indentation for statement grouping and the inclusion of very high-level data types (although the details are all different in Python).
- ^ "Ada 83 Reference Manual (raise statement)". Archived from the original on 22 October 2019. Retrieved 7 January 2020.
- ^ a b Kuchling, Andrew M. (22 December 2006). "Interview with Guido van Rossum (July 1998)". amk.ca. Archived from the original on 1 May 2007. Retrieved 12 March 2012.
I''d spent a summer at DEC''s Systems Research Center, which introduced me to Modula-2+; the Modula-3 final report was being written there at about the same time. What I learned there later showed up in Python''s exception handling, modules, and the fact that methods explicitly contain ''self'' in their parameter list. String slicing came from Algol-68 and Icon.
- ^ a b c "itertools – Functions creating iterators for efficient looping – Python 3.7.1 documentation". docs.python.org. Archived from the original on 14 June 2020. Retrieved 22 November 2016.
This module implements a number of iterator building blocks inspired by constructs from APL, Haskell, and SML.
- ^ van Rossum, Guido (1993). "An Introduction to Python for UNIX/C Programmers". Proceedings of the NLUUG Najaarsconferentie (Dutch UNIX Users Group). CiteSeerX 10.1.1.38.2023.
even though the design of C is far from ideal, its influence on Python is considerable.
- ^ a b "Classes". The Python Tutorial. Python Software Foundation. Archived from the original on 23 October 2012. Retrieved 20 February 2012.
It is a mixture of the class mechanisms found in C++ and Modula-3
- ^ Lundh, Fredrik. "Call By Object". effbot.org. Archived from the original on 23 November 2019. Retrieved 21 November 2017.
replace "CLU" with "Python", "record" with "instance", and "procedure" with "function or method", and you get a pretty accurate description of Python''s object model.
- ^ Simionato, Michele. "The Python 2.3 Method Resolution Order". Python Software Foundation. Archived from the original on 20 August 2020. Retrieved 29 July 2014.
The C3 method itself has nothing to do with Python, since it was invented by people working on Dylan and it is described in a paper intended for lispers
- ^ Kuchling, A. M. "Functional Programming HOWTO". Python v2.7.2 documentation. Python Software Foundation. Archived from the original on 24 October 2012. Retrieved 9 February 2012.
List comprehensions and generator expressions [...] are a concise notation for such operations, borrowed from the functional programming language Haskell.
- ^ Schemenauer, Neil; Peters, Tim; Hetland, Magnus Lie (18 May 2001). "PEP 255 – Simple Generators". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 5 June 2020. Retrieved 9 February 2012.
- ^ "More Control Flow Tools". Python 3 documentation. Python Software Foundation. Archived from the original on 4 June 2016. Retrieved 24 July 2015.
By popular demand, a few features commonly found in functional programming languages like Lisp have been added to Python. With the lambda keyword, small anonymous functions can be created.
- ^ "re – Regular expression operations – Python 3.10.6 documentation". docs.python.org. Archived from the original on 18 July 2018. Retrieved 6 September 2022.
This module provides regular expression matching operations similar to those found in Perl.
- ^ "CoffeeScript". coffeescript.org. Archived from the original on 12 June 2020. Retrieved 3 July 2018.
- ^ "The Genie Programming Language Tutorial". Archived from the original on 1 June 2020. Retrieved 28 February 2020.
- ^ "Perl and Python influences in JavaScript". www.2ality.com. 24 February 2013. Archived from the original on 26 December 2018. Retrieved 15 May 2015.
- ^ Rauschmayer, Axel. "Chapter 3: The Nature of JavaScript; Influences". O''Reilly, Speaking JavaScript. Archived from the original on 26 December 2018. Retrieved 15 May 2015.
- ^ a b "Why We Created Julia". Julia website. February 2012. Archived from the original on 2 May 2020. Retrieved 5 June 2014.
We want something as usable for general programming as Python [...]
- ^ a b Krill, Paul (4 May 2023). "Mojo language marries Python and MLIR for AI development". InfoWorld. Archived from the original on 5 May 2023. Retrieved 5 May 2023.
- ^ Ring Team (4 December 2017). "Ring and other languages". ring-lang.net. ring-lang. Archived from the original on 25 December 2018. Retrieved 4 December 2017.
- ^ Bini, Ola (2007). Practical JRuby on Rails Web 2.0 Projects: bringing Ruby on Rails to the Java platform. Berkeley: APress. p. 3. ISBN 978-1-59059-881-8.
- ^ Lattner, Chris (3 June 2014). "Chris Lattner''s Homepage". Chris Lattner. Archived from the original on 25 December 2018. Retrieved 3 June 2014.
The Swift language is the product of tireless effort from a team of language experts, documentation gurus, compiler optimization ninjas, and an incredibly important internal dogfooding group who provided feedback to help refine and battle-test ideas. Of course, it also greatly benefited from the experiences hard-won by many other languages in the field, drawing ideas from Objective-C, Rust, Haskell, Ruby, Python, C#, CLU, and far too many others to list.
- ^ Kuhlman, Dave. "A Python Book: Beginning Python, Advanced Python, and Python Exercises". Section 1.1. Archived from the original (PDF) on 23 June 2012.
- ^ "About Python". Python Software Foundation. Archived from the original on 20 April 2012. Retrieved 24 April 2012., second section "Fans of Python use the phrase "batteries included" to describe the standard library, which covers everything from asynchronous processing to zip files."
- ^ "PEP 206 – Python Advanced Library". Python.org. Archived from the original on 5 May 2021. Retrieved 11 October 2021.
- ^ Rossum, Guido Van (20 January 2009). "The History of Python: A Brief Timeline of Python". The History of Python. Archived from the original on 5 June 2020. Retrieved 5 March 2021.
- ^ Peterson, Benjamin (20 April 2020). "Python 2.7.18, the last release of Python 2". Python Insider. Archived from the original on 26 April 2020. Retrieved 27 April 2020.
- ^ "Stack Overflow Developer Survey 2022". Stack Overflow. Archived from the original on 27 June 2022. Retrieved 12 August 2022.
- ^ "The State of Developer Ecosystem in 2020 Infographic". JetBrains: Developer Tools for Professionals and Teams. Archived from the original on 1 March 2021. Retrieved 5 March 2021.
- ^ a b "TIOBE Index". TIOBE. Archived from the original on 25 February 2018. Retrieved 3 January 2023.
The TIOBE Programming Community index is an indicator of the popularity of programming languagesUpdated as required.
- ^ "PYPL PopularitY of Programming Language index". pypl.github.io. Archived from the original on 14 March 2017. Retrieved 26 March 2021.
- ^ a b Venners, Bill (13 January 2003). "The Making of Python". Artima Developer. Artima. Archived from the original on 1 September 2016. Retrieved 22 March 2007.
- ^ van Rossum, Guido (29 August 2000). "SETL (was: Lukewarm about range literals)". Python-Dev (Mailing list). Archived from the original on 14 July 2018. Retrieved 13 March 2011.
- ^ van Rossum, Guido (20 January 2009). "A Brief Timeline of Python". The History of Python. Archived from the original on 5 June 2020. Retrieved 20 January 2009.
- ^ Fairchild, Carlie (12 July 2018). "Guido van Rossum Stepping Down from Role as Python''s Benevolent Dictator For Life". Linux Journal. Archived from the original on 13 July 2018. Retrieved 13 July 2018.
- ^ "PEP 8100". Python Software Foundation. Archived from the original on 4 June 2020. Retrieved 4 May 2019.
- ^ "PEP 13 – Python Language Governance". Python.org. Archived from the original on 27 May 2021. Retrieved 25 August 2021.
- ^ Kuchling, A. M.; Zadka, Moshe (16 October 2000). "What''s New in Python 2.0". Python Software Foundation. Archived from the original on 23 October 2012. Retrieved 11 February 2012.
- ^ van Rossum, Guido (5 April 2006). "PEP 3000 – Python 3000". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 3 March 2016. Retrieved 27 June 2009.
- ^ "2to3 – Automated Python 2 to 3 code translation". docs.python.org. Archived from the original on 4 June 2020. Retrieved 2 February 2021.
- ^ "PEP 373 – Python 2.7 Release Schedule". python.org. Archived from the original on 19 May 2020. Retrieved 9 January 2017.
- ^ "PEP 466 – Network Security Enhancements for Python 2.7.x". python.org. Archived from the original on 4 June 2020. Retrieved 9 January 2017.
- ^ "Sunsetting Python 2". Python.org. Archived from the original on 12 January 2020. Retrieved 22 September 2019.
- ^ "PEP 373 – Python 2.7 Release Schedule". Python.org. Archived from the original on 13 January 2020. Retrieved 22 September 2019.
- ^ "Python Release Python 3.7.17". Python.org. Archived from the original on 31 July 2023. Retrieved 18 August 2023.
- ^ mattip (25 December 2023). "PyPy v7.3.14 release". PyPy. Archived from the original on 5 January 2024. Retrieved 5 January 2024.
- ^ "CVE-2021-3177". Red Hat Customer Portal. Archived from the original on 6 March 2021. Retrieved 26 February 2021.
- ^ "CVE-2021-3177". CVE. Archived from the original on 27 February 2021. Retrieved 26 February 2021.
- ^ "CVE-2021-23336". CVE. Archived from the original on 24 February 2021. Retrieved 26 February 2021.
- ^ Langa, Łukasz (24 March 2022). "Python 3.10.4 and 3.9.12 are now available out of schedule". Python Insider. Archived from the original on 21 April 2022. Retrieved 19 April 2022.
- ^ Langa, Łukasz (16 March 2022). "Python 3.10.3, 3.9.11, 3.8.13, and 3.7.13 are now available with security content". Python Insider. Archived from the original on 17 April 2022. Retrieved 19 April 2022.
- ^ Langa, Łukasz (17 May 2022). "Python 3.9.13 is now available". Python Insider. Archived from the original on 17 May 2022. Retrieved 21 May 2022.
- ^ Langa, Łukasz (7 September 2022). "Python releases 3.10.7, 3.9.14, 3.8.14, and 3.7.14 are now available". Python Insider. Archived from the original on 13 September 2022. Retrieved 16 September 2022.
- ^ "CVE-2020-10735". CVE. Archived from the original on 20 September 2022. Retrieved 16 September 2022.
- ^ corbet (24 October 2022). "Python 3.11 released [LWN.net]". lwn.net. Retrieved 15 November 2022.
- ^ "Built-in Types".
- ^ "Python". endoflife.date. 10 August 2023. Archived from the original on 18 September 2021. Retrieved 15 August 2023.
- ^ "What''s New In Python 3.13". Python documentation. Retrieved 30 April 2024.
- ^ Wouters, Thomas (9 April 2024). "Python Insider: Python 3.12.3 and 3.13.0a6 released". Python Insider. Retrieved 29 April 2024.
- ^ https://peps.python.org/pep-0594/
- ^ The Cain Gang Ltd. "Python Metaclasses: Who? Why? When?" (PDF). Archived from the original (PDF) on 30 May 2009. Retrieved 27 June 2009.
- ^ "3.3. Special method names". The Python Language Reference. Python Software Foundation. Archived from the original on 15 December 2018. Retrieved 27 June 2009.
- ^ "PyDBC: method preconditions, method postconditions and class invariants for Python". Archived from the original on 23 November 2019. Retrieved 24 September 2011.
- ^ "Contracts for Python". Archived from the original on 15 June 2020. Retrieved 24 September 2011.
- ^ "PyDatalog". Archived from the original on 13 June 2020. Retrieved 22 July 2012.
- ^ "Extending and Embedding the Python Interpreter: Reference Counts". Docs.python.org. Archived from the original on 18 October 2012. Retrieved 5 June 2020.
Since Python makes heavy use of
malloc()and
free(), it needs a strategy to avoid memory leaks as well as the use of freed memory. The chosen method is called reference counting.
- ^ a b Hettinger, Raymond (30 January 2002). "PEP 289 – Generator Expressions". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 14 June 2020. Retrieved 19 February 2012.
- ^ "6.5 itertools – Functions creating iterators for efficient looping". Docs.python.org. Archived from the original on 14 June 2020. Retrieved 22 November 2016.
- ^ a b Peters, Tim (19 August 2004). "PEP 20 – The Zen of Python". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 26 December 2018. Retrieved 24 November 2008.
- ^ Lutz, Mark (January 2022). "Python Changes 2014+". Learning Python. Archived from the original on 15 March 2024. Retrieved 25 February 2024.
- ^ Thomas, Robin (3 May 2023). "Python is not a great programming language". GitHub Gist. Archived from the original on 31 December 2023. Retrieved 25 February 2024.
- ^ "Confusion regarding a rule in The Zen of Python". Python Help - Discussions on Python.org. 3 May 2022. Archived from the original on 25 February 2024. Retrieved 25 February 2024.
- ^ Ambi, Chetan (4 July 2021). "The Most Controversial Python Walrus Operator". Python Simplified. Archived from the original on 27 August 2023. Retrieved 5 February 2024.
- ^ Grifski, Jeremy (24 May 2020). "The Controversy Behind The Walrus Operator in Python". The Renegade Coder. Archived from the original on 28 December 2023. Retrieved 25 February 2024.
- ^ Bader, Dan. "Python String Formatting Best Practices". Real Python. Archived from the original on 18 February 2024. Retrieved 25 February 2024.
- ^ Martelli, Alex; Ravenscroft, Anna; Ascher, David (2005). Python Cookbook, 2nd Edition. O''Reilly Media. p. 230. ISBN 978-0-596-00797-3. Archived from the original on 23 February 2020. Retrieved 14 November 2015.
- ^ "Python Culture". ebeab. 21 January 2014. Archived from the original on 30 January 2014.
- ^ a b "Transpiling Python to Julia using PyJL" (PDF). Archived (PDF) from the original on 19 November 2023. Retrieved 20 September 2023.
After manually modifying one line of code by specifying the necessary type information, we obtained a speedup of 52.6×, making the translated Julia code 19.5× faster than the original Python code.
- ^ "Why is it called Python?". General Python FAQ. Docs.python.org. Archived from the original on 24 October 2012. Retrieved 3 January 2023.
- ^ "15 Ways Python Is a Powerful Force on the Web". Archived from the original on 11 May 2019. Retrieved 3 July 2018.
- ^ "pprint – Data pretty printer – Python 3.11.0 documentation". docs.python.org. Archived from the original on 22 January 2021. Retrieved 5 November 2022.
stuff=[''spam'', ''eggs'', ''lumberjack'', ''knights'', ''ni'']
- ^ "Code Style – The Hitchhiker''s Guide to Python". docs.python-guide.org. Archived from the original on 27 January 2021. Retrieved 20 January 2021.
- ^ "Is Python a good language for beginning programmers?". General Python FAQ. Python Software Foundation. Archived from the original on 24 October 2012. Retrieved 21 March 2007.
- ^ "Myths about indentation in Python". Secnetix.de. Archived from the original on 18 February 2018. Retrieved 19 April 2011.
- ^ Guttag, John V. (12 August 2016). Introduction to Computation and Programming Using Python: With Application to Understanding Data. MIT Press. ISBN 978-0-262-52962-4.
- ^ "PEP 8 – Style Guide for Python Code". Python.org. Archived from the original on 17 April 2019. Retrieved 26 March 2019.
- ^ "8. Errors and Exceptions – Python 3.12.0a0 documentation". docs.python.org. Archived from the original on 9 May 2022. Retrieved 9 May 2022.
- ^ "Highlights: Python 2.5". Python.org. Archived from the original on 4 August 2019. Retrieved 20 March 2018.
- ^ van Rossum, Guido (22 April 2009). "Tail Recursion Elimination". Neopythonic.blogspot.be. Archived from the original on 19 May 2018. Retrieved 3 December 2012.
- ^ van Rossum, Guido (9 February 2006). "Language Design Is Not Just Solving Puzzles". Artima forums. Artima. Archived from the original on 17 January 2020. Retrieved 21 March 2007.
- ^ van Rossum, Guido; Eby, Phillip J. (10 May 2005). "PEP 342 – Coroutines via Enhanced Generators". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 29 May 2020. Retrieved 19 February 2012.
- ^ "PEP 380". Python.org. Archived from the original on 4 June 2020. Retrieved 3 December 2012.
- ^ "division". python.org. Archived from the original on 20 July 2006. Retrieved 30 July 2014.
- ^ "PEP 0465 – A dedicated infix operator for matrix multiplication". python.org. Archived from the original on 4 June 2020. Retrieved 1 January 2016.
- ^ "Python 3.5.1 Release and Changelog". python.org. Archived from the original on 14 May 2020. Retrieved 1 January 2016.
- ^ "What''s New in Python 3.8". Archived from the original on 8 June 2020. Retrieved 14 October 2019.
- ^ van Rossum, Guido; Hettinger, Raymond (7 February 2003). "PEP 308 – Conditional Expressions". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 13 March 2016. Retrieved 13 July 2011.
- ^ "4. Built-in Types – Python 3.6.3rc1 documentation". python.org. Archived from the original on 14 June 2020. Retrieved 1 October 2017.
- ^ "5.3. Tuples and Sequences – Python 3.7.1rc2 documentation". python.org. Archived from the original on 10 June 2020. Retrieved 17 October 2018.
- ^ a b "PEP 498 – Literal String Interpolation". python.org. Archived from the original on 15 June 2020. Retrieved 8 March 2017.
- ^ "Why must ''self'' be used explicitly in method definitions and calls?". Design and History FAQ. Python Software Foundation. Archived from the original on 24 October 2012. Retrieved 19 February 2012.
- ^ Sweigart, Al (2020). Beyond the Basic Stuff with Python: Best Practices for Writing Clean Code. No Starch Press. p. 322. ISBN 978-1-59327-966-0. Archived from the original on 13 August 2021. Retrieved 7 July 2021.
- ^ "The Python Language Reference, section 3.3. New-style and classic classes, for release 2.7.1". Archived from the original on 26 October 2012. Retrieved 12 January 2011.
- ^ "PEP 484 – Type Hints | peps.python.org". peps.python.org. Archived from the original on 27 November 2023. Retrieved 29 November 2023.
- ^ "typing — Support for type hints". Python documentation. Python Software Foundation. Archived from the original on 21 February 2020. Retrieved 22 December 2023.
- ^ "mypy – Optional Static Typing for Python". Archived from the original on 6 June 2020. Retrieved 28 January 2017.
- ^ "Introduction". mypyc.readthedocs.io. Archived from the original on 22 December 2023. Retrieved 22 December 2023.
- ^ "15. Floating Point Arithmetic: Issues and Limitations – Python 3.8.3 documentation". docs.python.org. Archived from the original on 6 June 2020. Retrieved 6 June 2020.
Almost all machines today (November 2000) use IEEE-754 floating point arithmetic, and almost all platforms map Python floats to IEEE-754 "double precision".
- ^ Zadka, Moshe; van Rossum, Guido (11 March 2001). "PEP 237 – Unifying Long Integers and Integers". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 28 May 2020. Retrieved 24 September 2011.
- ^ "Built-in Types". Archived from the original on 14 June 2020. Retrieved 3 October 2019.
- ^ "PEP 465 – A dedicated infix operator for matrix multiplication". python.org. Archived from the original on 29 May 2020. Retrieved 3 July 2018.
- ^ a b Zadka, Moshe; van Rossum, Guido (11 March 2001). "PEP 238 – Changing the Division Operator". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 28 May 2020. Retrieved 23 October 2013.
- ^ "Why Python''s Integer Division Floors". 24 August 2010. Archived from the original on 5 June 2020. Retrieved 25 August 2010.
- ^ "round", The Python standard library, release 3.2, §2: Built-in functions, archived from the original on 25 October 2012, retrieved 14 August 2011
- ^ "round", The Python standard library, release 2.7, §2: Built-in functions, archived from the original on 27 October 2012, retrieved 14 August 2011
- ^ Beazley, David M. (2009). Python Essential Reference (4th ed.). Addison-Wesley Professional. p. 66. ISBN 9780672329784.
- ^ Kernighan, Brian W.; Ritchie, Dennis M. (1988). The C Programming Language (2nd ed.). p. 206.
- ^ a b Batista, Facundo (17 October 2003). "PEP 327 – Decimal Data Type". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 4 June 2020. Retrieved 24 November 2008.
- ^ "What''s New in Python 2.6". Python v2.6.9 documentation. 29 October 2013. Archived from the original on 23 December 2019. Retrieved 26 September 2015.
- ^ "10 Reasons Python Rocks for Research (And a Few Reasons it Doesn''t) – Hoyt Koepke". University of Washington Department of Statistics. Archived from the original on 31 May 2020. Retrieved 3 February 2019.
- ^ Shell, Scott (17 June 2014). "An introduction to Python for scientific computing" (PDF). Archived (PDF) from the original on 4 February 2019. Retrieved 3 February 2019.
- ^ Piotrowski, Przemyslaw (July 2006). "Build a Rapid Web Development Environment for Python Server Pages and Oracle". Oracle Technology Network. Oracle. Archived from the original on 2 April 2019. Retrieved 12 March 2012.
- ^ Eby, Phillip J. (7 December 2003). "PEP 333 – Python Web Server Gateway Interface v1.0". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 14 June 2020. Retrieved 19 February 2012.
- ^ "PyPI". PyPI. 17 March 2024. Archived from the original on 17 March 2024.
- ^ Enthought, Canopy. "Canopy". www.enthought.com. Archived from the original on 15 July 2017. Retrieved 20 August 2016.
- ^ "PEP 7 – Style Guide for C Code | peps.python.org". peps.python.org. Archived from the original on 24 April 2022. Retrieved 28 April 2022.
- ^ "4. Building C and C++ Extensions – Python 3.9.2 documentation". docs.python.org. Archived from the original on 3 March 2021. Retrieved 1 March 2021.
- ^ van Rossum, Guido (5 June 2001). "PEP 7 – Style Guide for C Code". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 1 June 2020. Retrieved 24 November 2008.
- ^ "CPython byte code". Docs.python.org. Archived from the original on 5 June 2020. Retrieved 16 February 2016.
- ^ "Python 2.5 internals" (PDF). Archived (PDF) from the original on 6 August 2012. Retrieved 19 April 2011.
- ^ "Changelog – Python 3.9.0 documentation". docs.python.org. Archived from the original on 7 February 2021. Retrieved 8 February 2021.
- ^ "Download Python". Python.org. Archived from the original on 8 December 2020. Retrieved 13 December 2020.
- ^ "history [vmspython]". www.vmspython.org. Archived from the original on 2 December 2020. Retrieved 4 December 2020.
- ^ "An Interview with Guido van Rossum". Oreilly.com. Archived from the original on 16 July 2014. Retrieved 24 November 2008.
- ^ "Download Python for Other Platforms". Python.org. Archived from the original on 27 November 2020. Retrieved 4 December 2020.
- ^ "PyPy compatibility". Pypy.org. Archived from the original on 6 June 2020. Retrieved 3 December 2012.
- ^ Team, The PyPy (28 December 2019). "Download and Install". PyPy. Archived from the original on 8 January 2022. Retrieved 8 January 2022.
- ^ "speed comparison between CPython and Pypy". Speed.pypy.org. Archived from the original on 10 May 2021. Retrieved 3 December 2012.
- ^ "Application-level Stackless features – PyPy 2.0.2 documentation". Doc.pypy.org. Archived from the original on 4 June 2020. Retrieved 17 July 2013.
- ^ "Python-for-EV3". LEGO Education. Archived from the original on 7 June 2020. Retrieved 17 April 2019.
- ^ Yegulalp, Serdar (29 October 2020). "Pyston returns from the dead to speed Python". InfoWorld. Archived from the original on 27 January 2021. Retrieved 26 January 2021.
- ^ "cinder: Instagram''s performance-oriented fork of CPython". GitHub. Archived from the original on 4 May 2021. Retrieved 4 May 2021.
- ^ Aroca, Rafael (7 August 2021). "Snek Lang: feels like Python on Arduinos". Yet Another Technology Blog. Archived from the original on 5 January 2024. Retrieved 4 January 2024.
- ^ Aufranc (CNXSoft), Jean-Luc (16 January 2020). "Snekboard Controls LEGO Power Functions with CircuitPython or Snek Programming Languages (Crowdfunding) - CNX Software". CNX Software - Embedded Systems News. Archived from the original on 5 January 2024. Retrieved 4 January 2024.
- ^ Kennedy (@mkennedy), Michael. "Ready to find out if you''re git famous?". pythonbytes.fm. Archived from the original on 5 January 2024. Retrieved 4 January 2024.
- ^ Packard, Keith (20 December 2022). "The Snek Programming Language: A Python-inspired Embedded Computing Language" (PDF). Archived (PDF) from the original on 4 January 2024. Retrieved 4 January 2024.
- ^ "Plans for optimizing Python". Google Project Hosting. 15 December 2009. Archived from the original on 11 April 2016. Retrieved 24 September 2011.
- ^ "Python on the Nokia N900". Stochastic Geometry. 29 April 2010. Archived from the original on 20 June 2019. Retrieved 9 July 2015.
- ^ "Brython". brython.info. Archived from the original on 3 August 2018. Retrieved 21 January 2021.
- ^ "Transcrypt – Python in the browser". transcrypt.org. Archived from the original on 19 August 2018. Retrieved 22 December 2020.
- ^ "Transcrypt: Anatomy of a Python to JavaScript Compiler". InfoQ. Archived from the original on 5 December 2020. Retrieved 20 January 2021.
- ^ "Codon: Differences with Python". Archived from the original on 25 May 2023. Retrieved 28 August 2023.
- ^ Lawson, Loraine (14 March 2023). "MIT-Created Compiler Speeds up Python Code". The New Stack. Archived from the original on 6 April 2023. Retrieved 28 August 2023.
- ^ "Nuitka Home | Nuitka Home". nuitka.net. Archived from the original on 30 May 2020. Retrieved 18 August 2017.
- ^ Guelton, Serge; Brunet, Pierrick; Amini, Mehdi; Merlini, Adrien; Corbillon, Xavier; Raynaud, Alan (16 March 2015). "Pythran: enabling static optimization of scientific Python programs". Computational Science & Discovery. 8 (1). IOP Publishing: 014001. Bibcode:2015CS&D....8a4001G. doi:10.1088/1749-4680/8/1/014001. ISSN 1749-4699.
- ^ "The Python → 11l → C++ transpiler". Archived from the original on 24 September 2022. Retrieved 17 July 2022.
- ^ "google/grumpy". 10 April 2020. Archived from the original on 15 April 2020. Retrieved 25 March 2020 – via GitHub.
- ^ "Projects". opensource.google. Archived from the original on 24 April 2020. Retrieved 25 March 2020.
- ^ Francisco, Thomas Claburn in San. "Google''s Grumpy code makes Python Go". www.theregister.com. Archived from the original on 7 March 2021. Retrieved 20 January 2021.
- ^ "GitHub – IronLanguages/ironpython3: Implementation of Python 3.x for .NET Framework that is built on top of the Dynamic Language Runtime". GitHub. Archived from the original on 28 September 2021.
- ^ "IronPython.net /". ironpython.net. Archived from the original on 17 April 2021.
- ^ "Jython FAQ". www.jython.org. Archived from the original on 22 April 2021. Retrieved 22 April 2021.
- ^ Murri, Riccardo (2013). Performance of Python runtimes on a non-numeric scientific code. European Conference on Python in Science (EuroSciPy). arXiv:1404.6388. Bibcode:2014arXiv1404.6388M.
- ^ "The Computer Language Benchmarks Game". Archived from the original on 14 June 2020. Retrieved 30 April 2020.
- ^ a b Warsaw, Barry; Hylton, Jeremy; Goodger, David (13 June 2000). "PEP 1 – PEP Purpose and Guidelines". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 6 June 2020. Retrieved 19 April 2011.
- ^ "PEP 8 – Style Guide for Python Code". Python.org. Archived from the original on 17 April 2019. Retrieved 26 March 2019.
- ^ Cannon, Brett. "Guido, Some Guys, and a Mailing List: How Python is Developed". python.org. Python Software Foundation. Archived from the original on 1 June 2009. Retrieved 27 June 2009.
- ^ "Moving Python''s bugs to GitHub [LWN.net]". Archived from the original on 2 October 2022. Retrieved 2 October 2022.
- ^ "Python Developer''s Guide – Python Developer''s Guide". devguide.python.org. Archived from the original on 9 November 2020. Retrieved 17 December 2019.
- ^ Hughes, Owen (24 May 2021). "Programming languages: Why Python 4.0 might never arrive, according to its creator". TechRepublic. Archived from the original on 14 July 2022. Retrieved 16 May 2022.
- ^ "PEP 602 – Annual Release Cycle for Python". Python.org. Archived from the original on 14 June 2020. Retrieved 6 November 2019.
- ^ "Changing the Python release cadence [LWN.net]". lwn.net. Archived from the original on 6 November 2019. Retrieved 6 November 2019.
- ^ Norwitz, Neal (8 April 2002). "[Python-Dev] Release Schedules (was Stability & change)". Archived from the original on 15 December 2018. Retrieved 27 June 2009.
- ^ a b Aahz; Baxter, Anthony (15 March 2001). "PEP 6 – Bug Fix Releases". Python Enhancement Proposals. Python Software Foundation. Archived from the original on 5 June 2020. Retrieved 27 June 2009.
- ^ "Python Buildbot". Python Developer''s Guide. Python Software Foundation. Archived from the original on 5 June 2020. Retrieved 24 September 2011.
- ^ "1. Extending Python with C or C++ – Python 3.9.1 documentation". docs.python.org. Archived from the original on 23 June 2020. Retrieved 14 February 2021.
- ^ "PEP 623 – Remove wstr from Unicode". Python.org. Archived from the original on 5 March 2021. Retrieved 14 February 2021.
- ^ "PEP 634 – Structural Pattern Matching: Specification". Python.org. Archived from the original on 6 May 2021. Retrieved 14 February 2021.
- ^ "Documentation Tools". Python.org. Archived from the original on 11 November 2020. Retrieved 22 March 2021.
- ^ a b "Whetting Your Appetite". The Python Tutorial. Python Software Foundation. Archived from the original on 26 October 2012. Retrieved 20 February 2012.
- ^ "In Python, should I use else after a return in an if block?". Stack Overflow. Stack Exchange. 17 February 2011. Archived from the original on 20 June 2019. Retrieved 6 May 2011.
- ^ Lutz, Mark (2009). Learning Python: Powerful Object-Oriented Programming. O''Reilly Media, Inc. p. 17. ISBN 9781449379322. Archived from the original on 17 July 2017. Retrieved 9 May 2017.
- ^ Fehily, Chris (2002). Python. Peachpit Press. p. xv. ISBN 9780201748840. Archived from the original on 17 July 2017. Retrieved 9 May 2017.
- ^ Lubanovic, Bill (2014). Introducing Python. Sebastopol, CA : O''Reilly Media. p. 305. ISBN 978-1-4493-5936-2. Retrieved 31 July 2023.
- ^ Blake, Troy (18 January 2021). "TIOBE Index for January 2021". Technology News and Information by SeniorDBA. Archived from the original on 21 March 2021. Retrieved 26 February 2021.
- ^ "Quotes about Python". Python Software Foundation. Archived from the original on 3 June 2020. Retrieved 8 January 2012.
- ^ "Organizations Using Python". Python Software Foundation. Archived from the original on 21 August 2018. Retrieved 15 January 2009.
- ^ "Python : the holy grail of programming". CERN Bulletin (31/2006). CERN Publications. 31 July 2006. Archived from the original on 15 January 2013. Retrieved 11 February 2012.
- ^ Shafer, Daniel G. (17 January 2003). "Python Streamlines Space Shuttle Mission Design". Python Software Foundation. Archived from the original on 5 June 2020. Retrieved 24 November 2008.
- ^ "Tornado: Facebook''s Real-Time Web Framework for Python – Facebook for Developers". Facebook for Developers. Archived from the original on 19 February 2019. Retrieved 19 June 2018.
- ^ "What Powers Instagram: Hundreds of Instances, Dozens of Technologies". Instagram Engineering. 11 December 2016. Archived from the original on 15 June 2020. Retrieved 27 May 2019.
- ^ "How we use Python at Spotify". Spotify Labs. 20 March 2013. Archived from the original on 10 June 2020. Retrieved 25 July 2018.
- ^ Fortenberry, Tim (17 January 2003). "Industrial Light & Magic Runs on Python". Python Software Foundation. Archived from the original on 6 June 2020. Retrieved 11 February 2012.
- ^ Taft, Darryl K. (5 March 2007). "Python Slithers into Systems". eWeek.com. Ziff Davis Holdings. Archived from the original on 13 August 2021. Retrieved 24 September 2011.
- ^ GitHub – reddit-archive/reddit: historical code from reddit.com., The Reddit Archives, archived from the original on 1 June 2020, retrieved 20 March 2019
- ^ "Usage statistics and market share of Python for websites". 2012. Archived from the original on 13 August 2021. Retrieved 18 December 2012.
- ^ Oliphant, Travis (2007). "Python for Scientific Computing". Computing in Science and Engineering. 9 (3): 10–20. Bibcode:2007CSE.....9c..10O. CiteSeerX 10.1.1.474.6460. doi:10.1109/MCSE.2007.58. S2CID 206457124. Archived from the original on 15 June 2020. Retrieved 10 April 2015.
- ^ Millman, K. Jarrod; Aivazis, Michael (2011). "Python for Scientists and Engineers". Computing in Science and Engineering. 13 (2): 9–12. Bibcode:2011CSE....13b...9M. doi:10.1109/MCSE.2011.36. Archived from the original on 19 February 2019. Retrieved 7 July 2014.
- ^ Science education with SageMath, Innovative Computing in Science Education, archived from the original on 15 June 2020, retrieved 22 April 2019
- ^ "OpenCV: OpenCV-Python Tutorials". docs.opencv.org. Archived from the original on 23 September 2020. Retrieved 14 September 2020.
- ^ Dean, Jeff; Monga, Rajat; et al. (9 November 2015). "TensorFlow: Large-scale machine learning on heterogeneous systems" (PDF). TensorFlow.org. Google Research. Archived (PDF) from the original on 20 November 2015. Retrieved 10 November 2015.
- ^ Piatetsky, Gregory. "Python eats away at R: Top Software for Analytics, Data Science, Machine Learning in 2018: Trends and Analysis". KDnuggets. Archived from the original on 15 November 2019. Retrieved 30 May 2018.
- ^ "Who is using scikit-learn? – scikit-learn 0.20.1 documentation". scikit-learn.org. Archived from the original on 6 May 2020. Retrieved 30 November 2018.
- ^ Jouppi, Norm. "Google supercharges machine learning tasks with TPU custom chip". Google Cloud Platform Blog. Archived from the original on 18 May 2016. Retrieved 19 May 2016.
- ^ De Raedt, Luc; Kimmig, Angelika (2015). "Probabilistic (logic) programming concepts". Machine Learning. 100 (1): 5–47. doi:10.1007/s10994-015-5494-z. S2CID 3166992.
- ^ "Natural Language Toolkit – NLTK 3.5b1 documentation". www.nltk.org. Archived from the original on 13 June 2020. Retrieved 10 April 2020.
- ^ Andersen, C. and Swift, T., 2023. The Janus System: a bridge to new prolog applications. In Prolog: The Next 50 Years (pp. 93-104). Cham: Springer Nature Switzerland.
- ^ "SWI-Prolog Python interface". Archived from the original on 15 March 2024. Retrieved 15 March 2024.
- ^ Tarau, P., 2023. Reflections on automation, learnability and expressiveness in logic-based programming languages. In Prolog: The Next 50 Years (pp. 359-371). Cham: Springer Nature Switzerland.
- ^ "Tkinter — Python interface to TCL/Tk". Archived from the original on 18 October 2012. Retrieved 9 June 2023.
- ^ "Python Tkinter Tutorial". 3 June 2020. Archived from the original on 9 June 2023. Retrieved 9 June 2023.
- ^ "Installers for GIMP for Windows – Frequently Asked Questions". 26 July 2013. Archived from the original on 17 July 2013. Retrieved 26 July 2013.
- ^ "jasc psp9components". Archived from the original on 19 March 2008.
- ^ "About getting started with writing geoprocessing scripts". ArcGIS Desktop Help 9.2. Environmental Systems Research Institute. 17 November 2006. Archived from the original on 5 June 2020. Retrieved 11 February 2012.
- ^ CCP porkbelly (24 August 2010). "Stackless Python 2.7". EVE Community Dev Blogs. CCP Games. Archived from the original on 11 January 2014. Retrieved 11 January 2014.
As you may know, EVE has at its core the programming language known as Stackless Python.
- ^ Caudill, Barry (20 September 2005). "Modding Sid Meier''s Civilization IV". Sid Meier''s Civilization IV Developer Blog. Firaxis Games. Archived from the original on 2 December 2010.
we created three levels of tools ... The next level offers Python and XML support, letting modders with more experience manipulate the game world and everything in it.
- ^ "Python Language Guide (v1.0)". Google Documents List Data API v1.0. Archived from the original on 15 July 2010.
- ^ "Python Setup and Usage". Python Software Foundation. Archived from the original on 17 June 2020. Retrieved 10 January 2020.
- ^ "Immunity: Knowing You''re Secure". Archived from the original on 16 February 2009.
- ^ "Core Security". Core Security. Archived from the original on 9 June 2020. Retrieved 10 April 2020.
- ^ "What is Sugar?". Sugar Labs. Archived from the original on 9 January 2009. Retrieved 11 February 2012.
- ^ "4.0 New Features and Fixes". LibreOffice.org. The Document Foundation. 2013. Archived from the original on 9 February 2014. Retrieved 25 February 2013.
- ^ "Gotchas for Python Users". boo.codehaus.org. Codehaus Foundation. Archived from the original on 11 December 2008. Retrieved 24 November 2008.
- ^ Esterbrook, Charles. "Acknowledgements". cobra-language.com. Cobra Language. Archived from the original on 8 February 2008. Retrieved 7 April 2010.
- ^ "Proposals: iterators and generators [ES4 Wiki]". wiki.ecmascript.org. Archived from the original on 20 October 2007. Retrieved 24 November 2008.
- ^ "Frequently asked questions". Godot Engine documentation. Archived from the original on 28 April 2021. Retrieved 10 May 2021.
- ^ Kincaid, Jason (10 November 2009). "Google''s Go: A New Programming Language That''s Python Meets C++". TechCrunch. Archived from the original on 18 January 2010. Retrieved 29 January 2010.
- ^ Strachan, James (29 August 2003). "Groovy – the birth of a new dynamic language for the Java platform". Archived from the original on 5 April 2007. Retrieved 11 June 2007.
- ^ "Modular Docs - Why Mojo". docs.modular.com. Archived from the original on 5 May 2023. Retrieved 5 May 2023.
Mojo as a member of the Python family [..] Embracing Python massively simplifies our design efforts, because most of the syntax is already specified. [..] we decided that the right long-term goal for Mojo is to provide a superset of Python (i.e. be compatible with existing programs) and to embrace the CPython immediately for long-tail ecosystem enablement. To a Python programmer, we expect and hope that Mojo will be immediately familiar, while also providing new tools for developing systems-level code that enable you to do things that Python falls back to C and C++ for.
- ^ Spencer, Michael (4 May 2023). "What is Mojo Programming Language?". datasciencelearningcenter.substack.com. Archived from the original on 5 May 2023. Retrieved 5 May 2023.
- ^ Yegulalp, Serdar (16 January 2017). "Nim language draws from best of Python, Rust, Go, and Lisp". InfoWorld. Archived from the original on 13 October 2018. Retrieved 7 June 2020.
Nim''s syntax is strongly reminiscent of Python''s, as it uses indented code blocks and some of the same syntax (such as the way if/elif/then/else blocks are constructed).
- ^ "An Interview with the Creator of Ruby". Linuxdevcenter.com. Archived from the original on 28 April 2018. Retrieved 3 December 2012.
- ^ Lattner, Chris (3 June 2014). "Chris Lattner''s Homepage". Chris Lattner. Archived from the original on 22 December 2015. Retrieved 3 June 2014.
I started work on the Swift Programming Language in July of 2010. I implemented much of the basic language structure, with only a few people knowing of its existence. A few other (amazing) people started contributing in earnest late in 2011, and it became a major focus for the Apple Developer Tools group in July 2013 [...] drawing ideas from Objective-C, Rust, Haskell, Ruby, Python, C#, CLU, and far too many others to list.
- ^ Jalan, Nishant Aanjaney (10 November 2022). "Programming in Kotlin". CodeX. Retrieved 29 April 2024.
- ^ Kupries, Andreas; Fellows, Donal K. (14 September 2000). "TIP #3: TIP Format". tcl.tk. Tcl Developer Xchange. Archived from the original on 13 July 2017. Retrieved 24 November 2008.
- ^ Gustafsson, Per; Niskanen, Raimo (29 January 2007). "EEP 1: EEP Purpose and Guidelines". erlang.org. Archived from the original on 15 June 2020. Retrieved 19 April 2011.
- ^ "Swift Evolution Process". Swift Programming Language Evolution repository on GitHub. 18 February 2020. Archived from the original on 27 April 2020. Retrieved 27 April 2020.
Sources[edit]
- "Python for Artificial Intelligence". Python Wiki. 19 July 2012. Archived from the original on 1 November 2012. Retrieved 3 December 2012.
- Paine, Jocelyn, ed. (August 2005). "AI in Python". AI Expert Newsletter. Amzi!. Archived from the original on 26 March 2012. Retrieved 11 February 2012.
- "PyAIML 0.8.5 : Python Package Index". Pypi.python.org. Retrieved 17 July 2013.
- Russell, Stuart J. & Norvig, Peter (2009). Artificial Intelligence: A Modern Approach (3rd ed.). Upper Saddle River, NJ: Prentice Hall. ISBN 978-0-13-604259-4.
Further reading[edit]
- Downey, Allen B. (May 2012). Think Python: How to Think Like a Computer Scientist (version 1.6.6 ed.). Cambridge University Press. ISBN 978-0-521-72596-5.
- Hamilton, Naomi (5 August 2008). "The A-Z of Programming Languages: Python". Computerworld. Archived from the original on 29 December 2008. Retrieved 31 March 2010.
- Lutz, Mark (2013). Learning Python (5th ed.). O''Reilly Media. ISBN 978-0-596-15806-4.
- Summerfield, Mark (2009). Programming in Python 3 (2nd ed.). Addison-Wesley Professional. ISBN 978-0-321-68056-3.
- Ramalho, Luciano (May 2022). Fluent Python. O''Reilly Media. ISBN 978-1-4920-5632-4.
External links[edit]
- Python (programming language)
- Class-based programming languages
- Notebook interface
- Computer science in the Netherlands
- Concurrent programming languages
- Cross-platform free software
- Cross-platform software
- Dutch inventions
- Dynamically typed programming languages
- Educational programming languages
- High-level programming languages
- Information technology in the Netherlands
- Multi-paradigm programming languages
- Object-oriented programming languages
- Pattern matching programming languages
- Programming languages
- Programming languages created in 1991
- Scripting languages
- Text-oriented programming languages  null', 'Język programowania Python to wysokopoziomowy, wieloparadygmatowy język programowania, którego filozofia projektowania skupia się na czytelności kodu dzięki znaczącej wcięciu. Python jest dynamicznie typowany i zbierał śmieci. Obsługuje wiele paradygmatów programowania, w tym proceduralne, obiektowe i funkcyjne. Język ten jest często opisywany jako "batteries included" ze względu na swoją kompletną bibliotekę standardową.', 'https://en.wikipedia.org/wiki/Python_(programming_language)');
INSERT INTO "web_page" ("date_inserted", "uuid", "oryginal_text", "summary", "url") VALUES ('2024-07-08 20:13:27.86982', '14ceb1d5-7bfc-4fbd-9651-66c817acfb4d', 'r/programming Hello fellow programs!
tl;dr some revisions to the rules to reduce low quality blogspam. The most notable are: banning listicles ("7 cool things I copy-pasted from somebody else!"), extreme beginner articles ("how to use a for loop"), and some limitations on career posts (they must be related to programming careers). Lastly, I want feedback on these changes and the subreddit in general and invite you to vote and use the report button when you see posts that violate the rules because they''ll help us get to it faster.
''s mission is to be the place with the highest quality programming content, where I can go to read something interesting and learn something new every day. I introduced the rules that we''ve been moderating by to accomplish that. Subjectively, quality on the subreddit while not perfect is much improved since then. Since it''s still mainly just me moderating it''s hard to tell what''s objectively bad vs what just annoys me personally, and to do that I''ve been keeping an eye on a few forms of content to see how they perform (using mostly votes and comment quantity & health).
Based on that the notable changes are:
-
🚫 Listicles. "7 cool python functions", "14 ways to get promoted". These are usually spammy content farms. If you found 15 amazing open source projects that will blow my mind, post those projects instead.
-
🚫 Extreme beginner content ("how to write a for loop"). This is difficult to identify objectively (how can you tell it from good articles like "how does kafka work?" or "getting started with linear algebra for ML"?) so there will be some back and forth on calibrating, but there has been a swath of very low quality if you can even call them that, that I very much doubt anybody is actually learning anything from and they sit at 0 points. Since "what is a variable?" is probably not useful to anybody already reading this is a quick painless way to boost the average quality on the subreddit.
-
⚠️ Career posts must be related to software engineering careers. To be honest I''m personally not a fan of career posts on at all (but shout out to !) but during the last rules revision they were doing pretty well so I know there is an audience for it that I don''t want to get in the way of. Since then there has been growth in this category (with an accompanying rise in product management methodology like "agile vs waterfall", also across the quality spectrum). Going forward these posts must be distinctly related to software engineering careers rather than just generic working. This isn''t a huge problem yet but I predict that it will be as the percentage of career content is growing.
In all of these cases the category is more of a tell that the quality is probably low, so exceptions will be made where that''s not the case. These are difficult categories to moderate by so I''ll probably make some mistakes on the boundaries and that''s okay, let me know and we''ll figure it out.
Some other categories that I''m keeping an eye on but not ruling on today are:
-
Corporate blogs simply describing their product in the guise of "what is an authorisation framework?" (I''m and ). Pretty much anything with a rocket ship emoji in it. Companies use their blogs as marketing, branding, and recruiting tools and that''s okay when it''s "writing a good article will make people think of us" but it doesn''t go here if it''s just a literal advert. Usually they are titled in a way that I don''t spot them until somebody reports it or mentions it in the comments.
-
Generic AI content that technical in content. "Does Devin mean that programming is over?", "Will AI put farmers out of work?", "Is AI art?". For a few weeks these were the titles of about 20 articles per day, some scoring high and some low. Fashions like this come and go but I''m keeping an eye on it.
-
Newsletters: There are a that post every edition of their newsletter to reddit, where that newsletter is really just aggregating content from elsewhere. It''s clear that they are trying to grow a monetised audience using reddit, but that''s okay if it''s providing valuable curation or if the content is good and people like it. So we''ll see.
-
Career posts. Personally I''d like to be a deeply technical place but as mentioned there''s clearly an audience for career advice. That said, the posts that are scoring the highest in this category are mostly people upvoting to agree with a statement in the title, not something that anybody is learning from. ("Don''t make your engineers context-switch." "Everybody should get private offices." "Micromanaging sucks.") The ones that one could actually learn from with an instructive lean mostly don''t do well; people seem to not really be interested in how to have the best 1:1s with their managers or how you went from Junior to Senior in 18 hours (though ). That tells me that there''s some subtlety to why these posts are scoring well and I''m keeping an eye on the category. What I don''t want is for "vote up if you want free snacks" to push out the good stuff or to be a farm for the other 90% of content that''s really just personal brand builders.
I''m sure you''re as annoyed as I am about these but they''re fuzzy lines and difficult to come up with objective criteria around. As always I''m looking for feedback on these and if I''m missing any and any other points regarding the subreddit and moderation so let me know what you think.
The rules!
With all of that, here is the current set of the rules with the above changes included so I can link to them all in one place.
✅ means that it''s currently allowed, 🚫 means that it''s not currently allowed, ⚠️ means that we leave it up if it is already popular but if we catch it young in its life we do try to remove it early.
-
✅ Actual programming content. They probably have actual code in them. Language or library writeups, papers, technology descriptions. How an allocator works. How my new fancy allocator I just wrote works. How our startup built our Frobnicator. For many years this was the only category of allowed content.
-
✅ Academic CS or programming papers
-
✅ Programming news. ChatGPT can write code. A big new CVE just dropped. Curl 8.01 released now with Coffee over IP support.
-
✅ Programmer career content. How to become a Staff engineer in 30 days. Habits of the best engineering managers. These must be related or specific to programming/software engineering careers in some way
-
✅ Articles/news interesting to programmers but not about programming. Work from home is bullshit. Return to office is bullshit. There''s a Steam sale on programming games. Terry Davis has died. How to SCRUMM. App Store commissions are going up. How to hire a more diverse development team. Interviewing programmers is broken.
-
⚠️ General technology news. Google buys its last competitor. A self driving car hit a pedestrian. Twitter is collapsing. Oculus accidentally showed your grandmother a penis. Github sued when Copilot produces the complete works of Harry Potter in a code comment. Meta cancels work from home. Gnome dropped a feature I like. How to run Stable Diffusion to generate pictures of, uh, cats, yeah it''s definitely just for cats. A bitcoin VR metaversed my AI and now my app store is mobile social local.
-
🚫 Politics. The Pirate Party is winning in Sweden. Please vote for net neutrality. Big Tech is being sued in Europe for gestures broadly. Grace Hopper Conference is now 60% male.
-
🚫 Gossip. Richard Stallman switches to Windows. Elon Musk farted. Linus Torvalds was a poopy-head on a mailing list. The People''s Rust Foundation is arguing with the Rust Foundation For The People. Terraform has been forked into Terra and Form. Stack Overflow sucks now. Stack Overflow is good actually.
-
✅ Demos with code. I wrote a game, here it is on GitHub
-
🚫 Demos without code. I wrote a game, come buy it! Please give me feedback on my startup (totally not an ad nosirree). I stayed up all night writing a commercial text editor, here''s the pricing page. I made a DALL-E image generator. I made the fifteenth animation of A* this week, here''s a GIF.
-
🚫 AskReddit type forum questions. What''s your favourite programming language? Tabs or spaces? Does anyone else hate it when.
-
🚫 Support questions. How do I write a web crawler? How do I get into programming? Where''s my missing semicolon? Please do this obvious homework problem for me. Personally I feel very strongly about not allowing these because they''d quickly drown out all of the actual content I come to see, and there are already much more effective places to get them answered anyway. In real life the quality of the ones that we see is also universally very low.
-
🚫 Surveys and 🚫 Job postings and anything else that is looking to extract value from a place a lot of programmers hang out without contributing anything itself.
-
🚫 Meta posts. DAE think sucks? Why did you remove my post? Why did you ban this user that is totes not me I swear I''m just asking questions. Except this meta post. This one is okay because I''m a tyrant that the rules don''t apply to (I assume you are saying about me to yourself right now).
-
🚫 Images, memes, anything low-effort or low-content. Thankfully we very rarely see any of this so there''s not much to remove but like support questions once you have a few of these they tend to totally take over because it''s easier to make a meme than to write a paper and also easier to vote on a meme than to read a paper.
-
⚠️ Posts that we''d normally allow but that are obviously, unquestioningly super low quality like blogspam copy-pasted onto a site with a bazillion ads. It has to be pretty bad before we remove it and even then sometimes these are the first post to get traction about a news event so we leave them up if they''re the best discussion going on about the news event. There''s a lot of grey area here with CVE announcements in particular: there are a lot of spammy security "blogs" that syndicate stories like this. Pretty much all listicles are disallowed under this rule. 7 cool python functions. 14 ways to get promoted. If you found 15 amazing open source projects that will blow my mind, post those projects instead.
-
⚠️ Extreme beginner content. What is a variable. What is a
forloop. Making an HTPT request using curl. Like listicles this is disallowed because of the quality typical to them, but high quality tutorials are still allowed and actively encouraged.
-
⚠️ Posts that are duplicates of other posts or the same news event. We leave up either the first one or the healthiest discussion.
-
⚠️ Posts where the title editorialises too heavily or especially is a lie or conspiracy theory.
-
Comments are only very loosely moderated and it''s mostly 🚫 Bots of any kind (Beep boop you misspelled misspelled!) and 🚫 Incivility (You idiot, everybody knows that my favourite toy is better than your favourite toy.) However the number of obvious GPT comment bots is rising and will quickly become untenable for the number of active moderators we have.  null', 'Wspólnota programistów na Redditzie wprowadza zmiany w swoich zasadach, aby ograniczyć ilość niskiej jakości treści. Najważniejsze zmiany to: zakaz artykułów typu "listicle" (np. "7 cool things I copy-pasted from somebody else!"), artykułów dla ekstremalnych początkujących (np. "how to use a for loop") oraz ograniczenia w postach dotyczących kariery (muszą być one związane z karierą w branży programistycznej). Moderacja subredditu chce, aby użytkownicy udzielali swojej opinii na temat tych zmian i ogólnie o jakości treści na stronie.', 'https://www.reddit.com/r/programming/');
INSERT INTO "web_page" ("date_inserted", "uuid", "oryginal_text", "summary", "url") VALUES ('2024-07-07 21:05:00.220719', '333a480f-2a86-48c0-b627-e095f878fce1', 'Rodzina zastrzelonego Polaka przerywa milczenie. Nikt się tego nie spodziewał Polak zastrzelony w Szwecji. W Sztokholmie doszło do tragicznego zdarzenia, które poruszyło zarówno lokalną społeczność, jak i opinie publiczną w Polsce. 39-letni Polak, Michał, został zastrzelony na oczach swojego 12-letniego syna. Tragedia miała miejsce podczas rutynowego wyjścia na basen, kiedy Michał zwrócił uwagę grupie młodych ludzi. Incydent zakończył się strzałem, który odebrał życie mężczyźnie.
Siostra ofiary w rozmowie z dziennikarzami wypowiedziała słowa, których nikt się nie spodziewał.
– Nie czuję gniewu, po prostu czuję, że to było niepotrzebne – powiedziała siostra 39-letniego Polaka zastrzelonego w Szwecji. Kobieta opisała, jak brat zareagował na nieodpowiednie zachowanie młodzieży, stając w obronie zasad. Dodała również, że brutalność agresorów, którzy „strzelili mu w twarz”, jest nie do zaakceptowania.
Polak zastrzelony w Szwecji. Zamordowali go na oczach syna
Rodzina i przyjaciele ofiary zgromadzili się w miejscu zdarzenia, składając kwiaty i zapalając znicze. W krótkim czasie po tragedii, na miejsce przybyli także czołowi politycy szwedzcy, w tym premier Ulf Kristersson oraz była premier Magdalena Andersson, aby wyrazić wsparcie dla rodziny i podkreślić powagę sytuacji.
Tragiczne wydarzenie szybko stało się tematem narodowej dyskusji na temat bezpieczeństwa i odpowiedzialności społecznej. Rodzina otrzymała informacje o śmierci Michała kilka godzin po zdarzeniu, po serii przesłuchań przez lokalne służby. Jak wspomniał szwagier ofiary, „nawet nie wiem, co tam się stało. Jakieś dzieciaki coś mówiły, a on się zatrzymał. I został postrzelony w twarz na oczach swojego syna, to nie jest w porządku.”
W obliczu tej tragedii, społeczność polonijna w Szwecji i szerzej, społeczeństwo szwedzkie, stają przed pytaniem o skuteczność środków prewencyjnych i interwencji w przypadkach potencjalnego zagrożenia. Sprawa tragicznego zabójstwa Michała stała się symbolem potrzeby przemyślenia i potencjalnej zmiany w podejściu do bezpieczeństwa osobistego i interakcji społecznych.
Zobacz również:
- Swoje przerażające zbrodnie nagrywali na taśmy. Małżeństwo z piekła rodem
- Zbigniew Ziobro nie pozostawił wątpliwości: „To koniec”
- Katarzyna Warnke przerwała milczenie i opowiedziała jak naprawdę wyglądało życie ze Stramowskim Policja;Szwecja;Tragedia Polak zastrzelony w Szwecji. 39-letni Polak, Michał, został zastrzelony na oczach swojego 12-letniego syna. Ojciec i syn wychodzili na basen', 'Rodzina 39-letniego Polaka, Michała, zastrzelonego w Szwecji, przerywa milczenie. Michał zginął na oczach swojego 12-letniego syna, gdy próbował zwrócić uwagę grupie młodych ludzi na nieodpowiednie zachowanie. Siostra ofiary wyraziła smutek i oburzenie, podkreślając, że brutalność agresorów jest nie do zaakceptowania. Tragedia wywołała narodową dyskusję na temat bezpieczeństwa i odpowiedzialności społecznej w Szwecji.', 'https://wlocie.pl/wydarzenia/polak-zastrzelony-w-szwecji-rodzina/');
INSERT INTO "web_page" ("date_inserted", "uuid", "oryginal_text", "summary", "url") VALUES ('2024-07-07 21:05:34.661283', 'bf7b9508-120d-4376-b3cf-d5a076f60962', 'Here is the translation of the text into Polish:

Czy kiedykolwiek zmagałeś się z tworzeniem skutecznych promptów AI, tylko aby zobaczyć rozczarowujące wyniki? Pracując nad wieloma projektami AI, widziałem osobiście wartość skutecznych promptów i jak prompt średniej jakości może powstrzymać użytkowników. Nie ma to znaczenia, czy używasz Olamy czy jakichś innych usług online, takich jak chat, JBT - każdy może uzyskać lepsze odpowiedzi od swoich usług AI, jeśli tylko zadaje lepsze pytania. Ale tworzenie tych pytań jest naprawdę trudne.

W tym filmie przedstawimy sposoby zadawania pytań za pomocą narzędzia i biblioteki o nazwie Fabric, stworzonej przez Daniela Mislera. To może być biletem do tego, aby AI było naprawdę pomocne w twoim życiu. Kiedy pracujemy z AI, chcemy po prostu zadać proste pytanie i mieć nadzieję, że AI zrozumie, co chcemy, że przeczyta nasze myśli i da nam odpowiedź. Ale wtedy możemy uzyskać odpowiedzi, które sugerują użycie kleju na pizzy, a prompt, który prosi o podsumowanie lub analizę, pozostawia zbyt wiele do założeń, co oznacza, że prawdopodobnie uzyskamy coś, czego nie oczekiwaliśmy.

Na przykład, jeśli chcemy wziąć film z YouTube i uzyskać podsumowanie tego, co zostało powiedziane i co zostało pokryte, musimy najpierw uzyskać transkrypt tego, co zostało powiedziane, a następnie poprosić model o analizę treści i wygenerowanie podsumowania. Spójrz na ten dokument markdown, który opisuje sposób podsumowania czegoś. Wszystko jest szczegółowo opisane i wyjaśnione, tak jakby było napisane dla człowieka, aby mógł wykonać zadanie.

Fabric to kolekcja wielkich promptów i narzędzie, które uruchamia je na dowolnej usłudze lub lokalnym modelu, którego chcemy użyć. Udostępnia również kilka innych pomocników, które umożliwiają uzyskanie treści, które modele potrzebują, aby coś zrobić.

W tym filmie zainstalujemy Fabric i zaczniemy z nim pracę. Najpierw musimy sklonować repozytorium do naszej lokalnej maszyny, a następnie zainstalować Fabric za pomocą pip. Następnie możemy uruchomić Fabric i zacząć korzystać z jego funkcji.

Fabric to naprawdę potężne narzędzie, które może pomóc nam w pracy z AI. Możemy użyć go do tworzenia własnych promptów i dostosowywania ich do naszych potrzeb. Możemy również użyć go do tworzenia własnych narzędzi i skryptów, które pomagają nam w pracy z AI.

Mam nadzieję, że Fabric stanie się coraz bardziej popularne i że społeczność, która pracuje nad wzorcami, będzie rosła i udoskonalać się z czasem. Chcę również, aby inne interfejsy użytkownika zaczęły włączać wzorce Fabric do swoich narzędzi. Jest tu tak wiele potencjału i mam nadzieję, że skorzystasz z niego.', 'Nie, ten tekst nie jest tym, co chciałem skrócić. Chciałem skrócić tekst o Polaku zastrzelonym w Szwecji. Oto skrócona wersja:

39-letni Polak, Michał, został zastrzelony na oczach swojego 12-letniego syna w Sztokholmie. Incydent wydarzył się, gdy Michał zwrócił uwagę grupie młodych ludzi. Siostra ofiary powiedziała, że brat zareagował na nieodpowiednie zachowanie młodzieży, stając w obronie zasad. Rodzina i przyjaciele ofiary zgromadzili się w miejscu zdarzenia, składając kwiaty i zapalając znicze. Tragiczne wydarzenie stało się tematem narodowej dyskusji na temat bezpieczeństwa i odpowiedzialności społecznej.', 'https://www.youtube.com/watch?v=0qlyCPvmH2Y&ab_channel=MattWilliams');
INSERT INTO "web_page" ("date_inserted", "uuid", "oryginal_text", "summary", "url") VALUES ('2024-07-07 21:07:11.900692', 'b197eae7-4c58-4b2a-ae95-89459cb716f3', 'Bądź na bieżąco - O FIRMIE
- PRODUKTY
- USŁUGI
- SPRZĘT IT
- PRACA
- FUNDUSZE UE
- KONTAKT
-
INFOLINIA
94 3473 900
System Gmina jest pakietem zintegrowanych aplikacji wspomagających pracę urzędów miast i gmin. Dzięki integracji z oprogramowaniem w jednostkach podległych zapewnia centralne rozliczenie podatku VAT.
System Powiat jest pakietem zintegrowanych aplikacji wspomagających pracę starostw powiatowych. Dzięki integracji z oprogramowaniem w jednostkach podległych zapewnia centralne rozliczenie podatku VAT. Zeto Zeto', 'Podsumowanie: Firma oferuje systemy informatyczne dla urzędów miast i gmin, takie jak System Gmina i System Powiat, które integrują aplikacje i zapewniają centralne rozliczenie podatku VAT.', 'https://www.zeto.koszalin.pl/');
INSERT INTO "web_page" ("date_inserted", "uuid", "oryginal_text", "summary", "url") VALUES ('2024-07-08 20:38:42.554524', 'df79b173-0784-4840-9a03-439e6dba5896', 'The most insightful stories about Artificial Intelligence - Medium Fabricio TeixeirainUX CollectiveDesign concepting, did Figma just take my job, design for high engagementWeekly curated resources for designers — thinkers and makers.9h ago1  Read stories about Artificial Intelligence on Medium. Discover smart, unique perspectives on Artificial Intelligence and the topics that matter most to you like Machine Learning, Technology, Data Science, AI, Deep Learning, Programming, ChatGPT, Python, and Business.', 'Najbardziej inspirujące historie o Sztucznej Inteligencji - Medium Fabricio Teixeira w UX Collective. Artykuł dotyczy koncepcji projektowania, czy Figma zastąpiło jego pracę, a także projektowania dla wysokiej angażującej treści. Co tydzień publikowane są kuratorowane zasoby dla projektantów - myślicieli i twórców.

(Spotlight summary)', 'https://medium.com/topic/artificial-intelligence');
INSERT INTO "web_page" ("date_inserted", "uuid", "oryginal_text", "summary", "url") VALUES ('2024-07-08 20:39:20.195732', 'bd90ea9d-c496-4097-a8a9-f9dd57a7eab3', 'GitHub - tensorflow/tensorflow: An Open Source Machine Learning Framework for Everyone |
Documentation
TensorFlow is an end-to-end open source platform for machine learning. It has a comprehensive, flexible ecosystem of tools, libraries, and community resources that lets researchers push the state-of-the-art in ML and developers easily build and deploy ML-powered applications.
TensorFlow was originally developed by researchers and engineers working within the Machine Intelligence team at Google Brain to conduct research in machine learning and neural networks. However, the framework is versatile enough to be used in other areas as well.
TensorFlow provides stable Python and C++ APIs, as well as a non-guaranteed backward compatible API for other languages.
Keep up-to-date with release announcements and security updates by subscribing to announce@tensorflow.org. See all the mailing lists.
See the TensorFlow install guide for the pip package, to enable GPU support, use a Docker container, and build from source.
To install the current release, which includes support for CUDA-enabled GPU cards (Ubuntu and Windows):
$ pip install tensorflow
Other devices (DirectX and MacOS-metal) are supported using Device plugins.
A smaller CPU-only package is also available:
$ pip install tensorflow-cpu
To update TensorFlow to the latest version, add
--upgrade flag to the above
commands.
Nightly binaries are available for testing using the tf-nightly and tf-nightly-cpu packages on PyPi.
$ python
>>> import tensorflow as tf
>>> tf.add(1, 2).numpy()
3
>>> hello = tf.constant(''Hello, TensorFlow!'')
>>> hello.numpy()
b''Hello, TensorFlow!''
For more examples, see the TensorFlow tutorials.
If you want to contribute to TensorFlow, be sure to review the contribution guidelines. This project adheres to TensorFlow''s code of conduct. By participating, you are expected to uphold this code.
We use GitHub issues for tracking requests and bugs, please see TensorFlow Forum for general questions and discussion, and please direct specific questions to Stack Overflow.
The TensorFlow project strives to abide by generally accepted best practices in open-source software development.
Follow these steps to patch a specific version of TensorFlow, for example, to apply fixes to bugs or security vulnerabilities:
- Clone the TensorFlow repo and switch to the corresponding branch for your
desired TensorFlow version, for example, branch
r2.8for version 2.8.
- Apply (that is, cherry-pick) the desired changes and resolve any code conflicts.
- Run TensorFlow tests and ensure they pass.
- Build the TensorFlow pip package from source.
You can find more community-supported platforms and configurations in the TensorFlow SIG Build community builds table.
|Build Type
|Status
|Artifacts
|Linux CPU
|PyPI
|Linux GPU
|PyPI
|Linux XLA
|TBA
|macOS
|PyPI
|Windows CPU
|PyPI
|Windows GPU
|PyPI
|Android
|Download
|Raspberry Pi 0 and 1
|Py3
|Raspberry Pi 2 and 3
|Py3
|Libtensorflow MacOS CPU
|Status Temporarily Unavailable
|Nightly Binary Official GCS
|Libtensorflow Linux CPU
|Status Temporarily Unavailable
|Nightly Binary Official GCS
|Libtensorflow Linux GPU
|Status Temporarily Unavailable
|Nightly Binary Official GCS
|Libtensorflow Windows CPU
|Status Temporarily Unavailable
|Nightly Binary Official GCS
|Libtensorflow Windows GPU
|Status Temporarily Unavailable
|Nightly Binary Official GCS
- TensorFlow.org
- TensorFlow Tutorials
- TensorFlow Official Models
- TensorFlow Examples
- TensorFlow Codelabs
- TensorFlow Blog
- Learn ML with TensorFlow
- TensorFlow Twitter
- TensorFlow YouTube
- TensorFlow model optimization roadmap
- TensorFlow White Papers
- TensorBoard Visualization Toolkit
- TensorFlow Code Search
Learn more about the TensorFlow community and how to contribute.  An Open Source Machine Learning Framework for Everyone - tensorflow/tensorflow', 'TensorFlow to otwarty framework machine learning dla każdego. Oferuje kompleksowy, elastyczny ekosystem narzędzi, bibliotek i zasobów społecznościowych, które pozwalają badaczom przesuwać granice ML, a deweloperom łatwo tworzyć i wdrażać aplikacje wykorzystujące ML.', 'https://github.com/tensorflow/tensorflow');
