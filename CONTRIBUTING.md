# How to Contribute

So, you've found something you'd like to change about the Student Government
Bylaws or Amendments. You've come to the right place!

Any questions? Unsure of how to proceed? Reach out to any members of Student
Government's Executive Board (the President, Vice President for Finance, and
Vice President of Communications). As of the 2019-2020 school year, those
members are [Anusha Datar](mailto:anusha.datar@students.olin.edu),
[Kyle Emmi](mailto:kyle.emmi@students.olin.edu),
and [Sarah Deng](mailto:sarah.deng@students.olin.edu).

## General Formatting

### Wrap Lines at 80 Characters

Lines should be wrapped at 80 characters - this is a fairly common standard for
code and plaintext files, dating back to the days of [punchcards](https://softwareengineering.stackexchange.com/questions/148677/why-is-80-characters-the-standard-limit-for-code-width#148678).

An exception to this rule is hyperlinks - they might extend further than 80
characters (the link above is an example).

Here's a good prime number that's eighty digits long (you can use this in a
pinch to check if your lines are too long):

18532395500947174450709383384936679868383424444311405679463280782405796233163977

A fair number of code/text editors can also help with checking line length:
- [`vim`](https://www.vim.org/) has the `colorcolumn` setting](https://superuser.com/questions/249779/how-to-setup-a-line-length-marker-in-vim-gvim)
  and shows the cursor's line and column in the lower right.
- [`atom`](https://atom.io/) displays a line at 80 characters by default, and
  shows the cursor's line and column in the lower left.
- [`vscode`](https://code.visualstudio.com/) has [vertical rulers](https://stackoverflow.com/questions/29968499/vertical-rulers-in-visual-studio-code)
  and shows the cursor's line and column in the lower right of the [status bar](https://code.visualstudio.com/docs/getstarted/userinterface#_basic-layout).

Check out the [Linting section](#linting-the-governing-documents) for another
way to check line length automatically.

### Pull Request Titles

Pull request titles should follow the format:  
**[BA/CA]**-**[school year]**-**[amendment number]**: **[Summary of changes]**

- Amendment numbers are iterated for each proposal regardless of success. Check
  the [history of previous PRs](https://github.com/olin/studentgovernment/pulls?q=is%3Apr)
  to determine what the next number is - note that we index at one (1).
- Amendment numbers are counted independently for the [Bylaws](bylaws.md) and
  [Constitution](constitution.md).

For example, the first bylaw amendment of the 17-18 school year was about
updating CCO procedures and was named
[`BA-1718-001: CCO by-laws update to reflect current practices`](https://github.com/olin/studentgovernment/pull/30).

### Logging Changes in the README

A summary of changes should be added to the [README](README.md) in the
appropriate location:
- Bylaw Amendments: [Student Government By-Laws>Passed Amendments](https://github.com/olin/studentgovernment#passed-amendments)
- Student Government Constitution: [Student Government Constitution Constitution>Passed Amendments](https://github.com/olin/studentgovernment#student-government-constitution).

### Referring to Positions

Student Government positions should be referred to as follows:

- the President
- the Vice President for Finance
- the Vice President of Communications

## Versioning the Governing Documents

After approving amendments in a session of student government and merging the
appropriate pull requests into the `master` branch, the repository should be
"tagged" with a new version, and a release made on GitHub that covers the
changes.

> `vX.Y.Z`, where X is major overhauls of the documents, Y is modifications that
> impact how SG operates, and Z is changes that don't impact how student
> government operates.

More information on the history of this can be found in [issue #40](https://github.com/olin/studentgovernment/issues/40).

You can read more about tagging commits and making releases at the [GitHub documentation](https://help.github.com/en/articles/creating-releases).

## Linting the Governing Documents

Using the [`remark-lint`](https://github.com/remarkjs/remark-lint) project, the
founding documents, README, and this file are checked for consistent:
- line length
- indentation
- linebreaks
- working links to headings
- more!

To use this yourself, you'll need to:
- install [`npm`](https://www.npmjs.com/get-npm) on your machine
- open up a terminal to this directory
- run `npm install` and `npm run lint`

The [`.travis.yml`](.travis.yml) file runs these tests for every commit in the
repository, and will give a warning if a pull request doesn't pass the tests.

## Generating PDFs and more

To get a copy of the documents in `.pdf`, `.doc`, or other formats, you can use
the [`pandoc`](https://pandoc.org/) program.

The command `pandoc -f gfm constitution.md -t latex -o constution.pdf` converts
the constitution into a pdf using a local Latex installation.

Together, the [`.travis.yml`](.travis.yml) and [`Makefile`](Makefile) files
are setup to do this for every [release](https://github.com/olin/studentgovernment/releases)
of the repository. See [Versioning the Governing Documents](#versioning-the-governing-documents).
