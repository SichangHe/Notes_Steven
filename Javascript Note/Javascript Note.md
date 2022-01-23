# data type
- no char
- undefined

# assignment
- fallback `||` execute if the former one fail

# array `[…]`
can contain multiple types of data
## access data `array1[index1]`
`.length` `.push()` `.pop()` `.shift()` `.unshift()`
- `.reduce(fun1)` take variable into function and put result back
- spread (deep copy) `[...arr1]`
## string
is just immutable array

formatted string
```
`blah ${var1}…`
```

# function
```
function fun1(var1,…) {
    …
}
```
## anonymous function
```
(var1,…) => {
    …
}
```
minimum `var1 => expression1`

# comparison
- strong comparison `===` `!==` does not convert type
- weak comparison `==` `!=` convert type

# object
```
{
    attr1:lit1,
    …
}
```
rather dictionary
- `delete` attribute
## access attribute
- `.attr1`
- `object1[attr1]`
## immutable object `Object.freeze(…)`
## method
defined inside of the object block
## class `class Class1{…}`
### constructor `constructor(…){…}`
use constructor `new`
### getter/setter `get var1() {…}`/`set var1(…) {…}`