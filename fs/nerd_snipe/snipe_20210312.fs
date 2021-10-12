// given a list of numbers, set each item to the sum of all the ones before it
module snipe_20210312

let running_sum = Array.mapFold (fun s i -> (s + i, s + i)) 0 >> fst
