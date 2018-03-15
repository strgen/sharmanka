<img src="https://github.com/strgen/sharmanka/raw/master/docs/assets/sharmanka-logo.jpg" style="max-width: 50%">

Compile Java sources in one command without any settings. Pure bash with no dependencies!

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/1fdd45572c0343f5976764c5efc89da2)](https://www.codacy.com/app/vagiz.d/sharmanka?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=strgen/sharmanka&amp;utm_campaign=Badge_Grade)

## Table of contents
* [Philosophy](#philosophy)
* [Usage](#usage)
* [Installation](#installation)

## Philosophy
Ever downloaded some Java sources that you wanted to **just run** to se what it does, and instead spent your precious time on writing a custom build config for Ant or Gradle?

`sharmanka` is able to compile these sources and call the program's `static void main()` function for you using only a `javac` compiler and a business logic written in bash.

`sharmanka` is tiny and safe! Whole logic fits in a one bash file, which is conveniently available to you after installation.

## Usage
Sharmanka is a great tool for everyday usage. Yet, nobody knows how to use it, for its sheer power is still too inordinate to be possessed by simple folks. However, blessed he be, our glorious inalienable leader and prophet will soon spread the knowledge of `sharmanka` usage onto his congregation.

## Installation
1. Download `simple_run.sh` file;
2. Move it to `/usr/local/bin` under name `sharmanka`:

   ```console
   foo@bar:~$ mv simple_run.sh /usr/local/bin/sharmanka
   ```

3. Make `sharmanka` executable:

   ```
   foo@bar:~$ chmod a+x /usr/local/bin/sharmanka
   ```

4. `sharmanka` is ready to be at your service
