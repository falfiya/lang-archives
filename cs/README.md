# C#

On the surface, this language is pretty great.
As soon as you start using it it's kind of a slog.
Not as much of a slog as Rust, mind you, but still a slog.
I attribute a lot of this to my inexperience with the ecosystem.

### nice

- .NET Framework means you can have "native" portable executables (super dope)
- It's kinda fast
- NuGet is wonderful.
- .NET Core is kinda fast.
- GUI stuff is very widely supported and looks native.
- XAML is a good idea even though I hate XML.

### neutral

- dotnet core development works anywhere including vscode.
(this was originally going to be put into the "nice" category but it's actually expected)

### not nice

- Type conversions everywhere. So frustrating.
- Sucks at any functional programming.
   - F#'s very existence means that if you're annoyed at C#'s lack of easy to use FP,
   they can just point at F# and say "use that".
- First class functions should be done the way Java does it with functional
interfaces rather than delegates.
- Ecosystem is confusing
   - .NET Framework
   - .NET Core
   - Mono
   - UWP
   - ASP.NET
   - Roslyn (I know it's a compiler but was this always the compiler??)
- Visual Studio
   - curb your IDE lock-in.
   - visual stuido isn't bad but the fact that it's the primary encouraged development environment makes it bad.

