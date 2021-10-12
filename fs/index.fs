// marcus asked me to make this function point-free
let count (chr:char) =
   chr |> (=) |> List.map << Seq.toList >> List.filter id >> List.length

let count2 (chr: char) =
   (((((chr |> (=)) |> List.map) << Seq.toList) >> List.filter id) >> List.length)
let count3 (chr: char) =
   ((Seq.toList >> ((List.map ((=) chr))) >> List.filter id) >> List.length)
let count4 (chr: char) =
   let f0 = (=) chr
   let f1 = List.map f0
   let f2 = Seq.toList >> f1
   let f3 = f2 >> List.filter id >> List.length
   f3
let count5: char -> (seq<char> -> int) =
   (=)
   >> List.map
   >> fun a -> Seq.toList >> a >> List.filter id >> List.length
   // >> ((<<) (List.filter id >> List.length))
let count6: char -> (seq<char> -> int) =
   (=)
   >> List.map
   >> ((>>) Seq.toList)
   >> ((<<) (List.filter id))
   >> ((<<) List.length)
