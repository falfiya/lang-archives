# dart

Dart's syntax is fine. The types are fine. The entire language is just *fine*,
which is actually pretty good considering that I usually have one or two gripes
about the syntax. It's just that "fine" isn't good enough to warrant me learning
an entirely new ecosystem when it's basically TypeScript. If there was a
significant performance increase, it might be worth it but the performance is
somehow **worse** JavaScript in the benchmarks that I've seen.

I checked it out again because I heard of a tool called `dart2native` which
directly emits x86_64. Compiling to native code sounded super cool but after
running a couple of benchmarks, it's actually slower than using the VM. I
suppose this could be useful when you want to distribute your dart application
but at that point, just package the VM with the code. Currently, `dart2native`
is only really useful for "obfuscation" by compilation. Unless I want to write
some Android apps in Flutter or whatever, there's no reason for me to use this
language. Some of the people that work on this language
([@munificent](https://github.com/munificent)) are pretty cool, though.
