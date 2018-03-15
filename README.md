<a href="https://github.com/strgen/sharmanka"><img src="https://github.com/strgen/sharmanka/raw/master/docs/assets/sharmanka-logo.jpg" width="400" ></a>

Compile your Java sources in one command without setting up any build configuration. Pure bash with no dependencies!

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/1fdd45572c0343f5976764c5efc89da2)](https://www.codacy.com/app/vagiz.d/sharmanka?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=strgen/sharmanka&amp;utm_campaign=Badge_Grade)

## Table of contents
* [Philosophy](#philosophy)
* [Usage](#usage)
* [Installation](#installation)
* [Compatibility notes](#compatibility-notes)
* [License](#license)

## Philosophy
Ever downloaded some Java sources that you wanted to **just run** to check what it does, and instead spent your precious time on writing a custom build config for Ant or Gradle?

`sharmanka` is able to compile these sources and call the program's `static void main()` function for you using only `javac` compiler and a business logic written in bash.

`sharmanka` is tiny and safe! Whole logic fits in one bash file, which is conveniently available to you after installation.

## Usage
Sharmanka is a great tool for everyday usage. Yet, nobody knows how to use it, for its sheer power is still too inordinate to be possessed by simple folks. However, blessed he be, our glorious inalienable leader and prophet will soon spread the knowledge of `sharmanka` usage onto his congregation.

<img src="https://image.ibb.co/no94nx/no_pisek.jpg" width="400">

Until then with joy we carry on.

## Installation
1. Download `simple_run.sh` file;
2. Move it to `/usr/local/bin` under name `sharmanka`:

   ```console
   foo@bar:~$ mv simple_run.sh /usr/local/bin/sharmanka
   ```

3. Make `sharmanka` executable:

   ```console
   foo@bar:~$ chmod a+x /usr/local/bin/sharmanka
   ```

4. `sharmanka` is ready to be at your service

## Links
* [GitHub][github] and [Issue Tracker][issue-tracker]
* [License](#license)
* [Security contact][strgen]

## Compatibility notes
EXPECT THAT COMPATIBILITY MIGHT BE REPEATEDLY BROKEN WHEN MAJOR RELEASE NUMBER CHANGES (as if going from 0.x.y to 1.0.0 or from 1.x.y to 2.0.0).

NOT RELEASED DEVELOPMENT VERSIONS HAVE UNKNOWN COMPATIBILITY PROPERTIES.

THIS IS SOFTWARE IN DEVELOPMENT, DECIDE YOURSELF WHETHER IT FITS YOUR NEEDS.

Security issues should be reported to the [Security contact][strgen].

## License
*Sharmanka is distributed under MIT license.*

Copyright 2018 Gennadiy Strizhak

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[github]: (https://github.com/strgen/sharmanka)
[issue-tracker]: (https://github.com/strgen/sharmanka/issues)
[strgen]: (https://github.com/strgen)