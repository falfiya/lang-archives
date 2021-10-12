# rust

Alright, after getting a faster computer, the compile times hurt less but they
still kinda suck. [rust-analyzer](https://github.com/rust-analyzer/rust-analyzer)
is a godsend. Whatever cursed tool that they had like a year ago is nothing
compared to this goodness. I think it might even be getting as good as whatever
tool JetBrains is making for Rust.

Error handling sucks in this language. It just sucks way less than any other
language I've tried so yay. `std::Option` and `std::Result` are the-right-way
(tm) to do this. It's just that a lot of the time, my code ends up feeling like
60% error handling and 40% actual code I enjoy. There are so many io related
things that I didn't know could fail. Rust has shown me that they all can and it
makes me sad.

This language doesn't feel like a good language to prototype in but I'm told
that it's one of the best languages to implement production quality code because
of it's safety guarantees.

In here are some probably wrong solutions to the problems in the Euler Project.
I did these a while ago so ~~don't~~ judge me.

`cargo run --bin e{n}` where `n` is the problem number.
