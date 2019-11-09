# How to Contribute

So, you've found something you'd like to change about the Student Government Bylaws or Amendments. You've come to the right place!

Any questions? Unsure of how to proceed? Reach out to any members of Student Government's Executive Board (the President, Vice President for Finance, and Vice President of Communications).
As of the 2019-2020 school year, those members are [Anusha Datar](mailto:anusha.datar@students.olin.edu), [Kyle Emmi](mailto:kyle.emmi@students.olin.edu), and [Sarah Deng](mailto:sarah.deng@students.olin.edu).

## General Formatting

### Wrap Lines at 80 Characters

Lines should be wrapped at 80 characters - this is a fairly common standard for code and plaintext files, dating back to the days of [punchcards](https://softwareengineering.stackexchange.com/questions/148677/why-is-80-characters-the-standard-limit-for-code-width#148678).

Here's a good prime number that's eighty digits long:  
`18532395500947174450709383384936679868383424444311405679463280782405796233163977`

### Pull Request Titles

Pull request titles should follow the format:  
**[BA/CA]**-**[school year]**-**[amendment number]**: **[Summary of changes]**

- amendment numbers are iterated for each proposal regardless of success
- amendment numbers are counted independently for the Bylaws and Constitution

For example:

- The first bylaw amendment of the 17-18 school year was about updating CCO procedures and was named:  
  `BA-1718-001: CCO by-laws update to reflect current practices`

### Logging Changes in the README

A summary of changes should be added to the [README](README.md) in the appropriate location:
- Bylaw Amendments: [Student Government By-Laws>Passed Amendments](https://github.com/olin/studentgovernment#passed-amendments)
- Student Government Constitution: [Student Government Constitution Constitution>Passed Amendments](https://github.com/olin/studentgovernment#student-government-constitution).

### Referring to Positions

Student Government positions should be referred to as follows:

- the President
- the Vice President for Finance
- the Vice President of Communications

## Versioning the governing documents

After approving amendments in a session of student government and merging the appropriate pull requests into the `master` branch, the repository should be "tagged" with a new version, and a release made on GitHub that covers the changes.

> `vX.Y.Z`, where X is major overhauls of the documents, Y is modifications that
> impact how SG operates, and Z is changes that don't impact how student
> government operates.

More information on the history of this can be found in [issue #40](https://github.com/olin/studentgovernment/issues/40).

You can read more about tagging commits and making releases at the [GitHub documentation](https://help.github.com/en/articles/creating-releases).

## Testing format

## Generating PDFs and more
