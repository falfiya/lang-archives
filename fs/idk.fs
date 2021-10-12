let dec (f: float) = f % 1.0
let rcpl = (/) 1.0
let mul = ( * )
let mtp = Array.fold (fun a v -> a * (v |> dec |> rcpl)) 1.0
let make_int ary =
   let m = mtp ary
   (Array.map (mul m) ary, m)
