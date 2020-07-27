# where inputs are strings that only contain "0" or "1"
def is_in_same_set(a: str, b: str) -> bool:
   return len(a) == len(b) and list(a).count("1") == list(b).count("1")
