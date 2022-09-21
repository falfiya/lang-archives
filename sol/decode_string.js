// I wrote it = my fault
// I did not write it = marcus' fault
const val = process.argv[2];

const words = val.match(/.{64}/g);
if (words === null) {
   throw new Error("No uints found");
}

if (parseInt(words[0], 16) === 0x20) {
   const len = parseInt(words[1], 16);
   const encoded_string = words.slice(2).join("");
   const fixed_groups = encoded_string.match(/.{2}/g);
   if (fixed_groups === null) {
      throw new Error("No groups found");
   }
   const groups = fixed_groups.slice(0, len);
   console.log(groups.map(group => String.fromCharCode(parseInt(group, 16))).join(""));
} else {
   throw new Error("Input is not a string");
}
