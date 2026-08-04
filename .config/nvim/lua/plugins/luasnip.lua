local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node

ls.add_snippets('c', {
    s("main", {
        t({ '#include <stdio.h>',
            '',
            'int main(int argc, char *argv[]) {',
            '    printf("Hello, world!\\n");',
            '',
            '    return 0;',
            '}',
        })
    })
})

ls.add_snippets('cpp', {
    s("main", {
        t({ '#include <iostream>',
            '',
            'int main(int argc, char *argv[]) {',
            '    std::cout << "Hello, world!" << std::endl;',
            '',
            '    return 0;',
            '}',
        })
    })
})

ls.add_snippets('go', {
    s("main", {
        t({ 'package main',
            '',
            'import (',
            '    "fmt"',
            ')',
            '',
            'func main() {',
            '    fmt.Println("Hello, world!")',
            '}',
        })
    }),

    s("error", {
        t({ 'if err != nil {',
            '    log.Fatal(err)',
            '}',
        })
    })
})

ls.add_snippets('zig', {
    s("main", {
        t({ 'const std = @import("std");',
            '',
            'const print = std.debug.print;',
            '',
            'pub fn main() !void {',
            '    print("Hello, world!\\n", .{});',
            '}',
        })
    }),
})
