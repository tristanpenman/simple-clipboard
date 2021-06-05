# Simple Clipboard

This is a very simple Ruby Gem that demonstrates how native extensions can be used to access the clipboard.

Powered by [libclipboard](https://github.com/jtanx/libclipboard).

## Dependencies

### Build tools

You will need git, cmake, and an appropriate C compiler tool-chain (e.g. GCC) to install this gem.

### libclipboard

Assuming you have git, cmake, and a compatible C compiler tool-chain installed, you should be able to install [libclipboard](https://github.com/jtanx/libclipboard) by following these steps:

    git clone https://github.com/jtanx/libclipboard
    cd libclipboard
    mkdir build
    cd build
    cmake -DCMAKE_INSTALL_PREFIX:PATH=. ..
    make -j4
    make install

This will 'install' libclipboard into `libclipboard/build/usr`. When you install the gem later, the library is statically linked, so there is no need to install it a system level.

If you instead want to install libclipboard at the system level, use `cmake ..` instead of `cmake -DCMAKE_INSTALL_PREFIX:PATH=. ..`.

## Build

Building the gem should be as simple as:

    gem build simple_clipboard.gemspec

## Installation

Assuming that libclipboard has been installed at the system level, you would normally be able to install the gem like so:

    gem install simple_clipboard-0.0.1.gem

However if you followed the instructions above, you will need to include cflags and ldflags to tell the compiler where to find it:

    gem install simple_clipboard-0.0.1.gem -- \
        --with-cflags="-I<path-to-install>/include" \
        --with-ldflags="-L<path-to-install>/lib"

Just replace `<path-to-install>` with the absolute path to `libclipboard/build/usr`. For example, on my machine the command looks like:

    gem install simple_clipboard-0.0.1.gem -- \
        --with-cflags="-I/Users/Tristan/Code/libclipboard/build/usr/include" \
        --with-ldflags="-L/Users/Tristan/Code/libclipboard/build/usr/lib"

## Usage

This gem defines a module called `SimpleClipboard`, with two methods for interacting with a user's clipboard:

* `get_text` - returns the current clipboard contents as a string
* `set_text(new_text)` - replaces the contents of the clipboard with the value of `new_text`, and returns the previous contents of the clipboard

## License ##

This project is licensed under the MIT License.

See the LICENSE file for more information.
