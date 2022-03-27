# sort

## insertion sort

### loop invariant

the first j keys but sorted

## heap sort

1. make a max-heap
1. throw the head out to the end of the array
1. max-heapify the heap
1. stop when the max-heap has 1 element

### max-heap

- an array `A`
- heap size `size`
    - $≤$ array size
    - element in the array out of the heap are ignored
- heap head
    - first array element `A[0]`
    - no parent
- parent
    - `A[(n - 1)//2]`
    - $≥$ `A[n]`
- left
    - exist if `2n + 1 < size`
    - left child `A[2n + 1]`
- right
    - exist if `2n + 2 < size`
    - right child `A[2n + 2]`

#### build max-heap

convert a heap to a max-heap

1. from `A[parent(size - 1)]` to `A[0]`, max-heapify the heap

#### max-heapify

convert a heap to a max-heap from `A[i]` provided that
both left and right are max-heap

1. find the maximum `A[l]` among `A[i]`, left, right
1. if `A[i]` is not the maximum, swap them and max-heapify from `A[l]`

### priority queue

a max-heap that act as a queue

#### max

return largest (`A[0]`)

#### extract max

pop max

1. swap `A[0]` and `A[size]`
1. store `A[size]`
1. kill `A[size]` and decrement `size`
1. max-heapify from `0`

#### increase key

increase a key and keep the heap a max-heap

1. swap `A[i]` with `A[parent(i)]` while `i > 0` and `A[parent(i)] < A[i]`

#### insert

1. increment `size`
1. `A[size - 1]` $=-\infty$
1. increase key on `A[size - 1]`

# growth of function

## asymptotic notation

### $\Theta$ notation

bounded above and below

### $O$ notation

bounded above

### $\Omega$ notation

bounded below

### $o$ notation

bounded above,
not asymptotically tight

### $\omega$ notation

bounded below,
not asymptotically tight
