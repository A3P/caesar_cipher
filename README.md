### Caesar Cipher

Try it out [here!](https://secret-beyond-72756.herokuapp.com)

Convert your text using the Caesar Cipher. The Caesar Cipher shifts each letter in a string by the number that is provided in the key. If the key is equal to 2 then the letter 'a' is shifted to a 'c'. If 'z' is shifted it loops back to 'a'.
All text is outputted in lowercase format and all whitespace is reduced to a single space.

Their are a total of 26 unique keys which can be expressed as {0,1,2,...,n-2,n-1}  where n=26(letters in the alphabet), which is the least residue system modulo of n. This means that any key larger or equal to n can be expressed as a least residue. 
