#include <stdio.h>
#include <stdlib.h>

#define MEM_CHECK(pointer) {if (pointer == NULL) {puts("Error: unable to allocate memory"); exit(EXIT_SUCCESS);}}

typedef int bool;


typedef struct {
    int * array;
    size_t size;
} IntArray;


int ** divide(
        int * array,
        size_t size,
        int (* check)(int))
{
    size_t s_pos = 0;
    size_t ns_pos = 0;

    int ** new_arr = (int **) malloc(4 * sizeof(int *));
    MEM_CHECK(new_arr)

    new_arr[0] = (int *) malloc(size * sizeof(int));
    new_arr[1] = (int *) malloc(sizeof(int));

    new_arr[2] = (int *) malloc(size * sizeof(int));
    new_arr[3] = (int *) malloc(sizeof(int));

    MEM_CHECK(new_arr[0])
    MEM_CHECK(new_arr[1])
    MEM_CHECK(new_arr[2])
    MEM_CHECK(new_arr[3])

    for (size_t k = 0; k < size; k++) {
        if (check(array[k]))
            new_arr[0][s_pos++] = array[k];
        else
            new_arr[2][ns_pos++] = array[k];
    }

    new_arr[0] = realloc(new_arr[0], s_pos * sizeof(int));
    new_arr[2] = realloc(new_arr[2], ns_pos * sizeof(int));

    MEM_CHECK(new_arr[0])
    MEM_CHECK(new_arr[2])

    *new_arr[1] = (int)s_pos;
    *new_arr[3] = (int)ns_pos;

    return new_arr;
}

int check(
        int c)
{
    return c % 2 ? 0 : 1;
}

int check3(
        int c)
{
    return c % 3 ? 0 : 1;
}

int check4(
        int c)
{
    return c % 4 ? 0 : 1;
}


IntArray * divide_n(
        int * array,
        size_t array_size,
        int (** check)(int),
        size_t func_array_size)
{
    IntArray * output = (IntArray *) malloc((func_array_size + 1) * sizeof(IntArray));
    MEM_CHECK(output)

    bool match;


    for (size_t p = 0; p < func_array_size + 1; p++) {
        output[p].array = (int *) malloc(array_size);
        MEM_CHECK(output[p].array)
        output[p].size = 0;
    }


    for (size_t k = 0; k < array_size; k++) {
        match = 0;

        for (size_t p = 0; p < func_array_size; p++)
            if (check[p](array[k])) {
                output[p].array[output[p].size++] = array[k];
                match++;
            }
        if (!match)
            output[func_array_size].array[output[func_array_size].size++] = array[k];
    }

    return output;
}


int main() {
    int n = 0;
    int * array = NULL;

    scanf("%d", &n);

    if (n <= 0)
        return 0;

    array = (int *) malloc((size_t)n * sizeof(int));
    MEM_CHECK(array)

    for (int p = 0; p < n; p++)
        scanf("%d", &array[p]);

    //int ** sequences = divide(array, (size_t)n, check);

    size_t func_array_size = 3;

    int (*p[func_array_size])(int);

    p[0] = check;

    p[1] = check3;

    p[2] = check4;

    IntArray * sequences = divide_n(array, (size_t)n, p, func_array_size);

    for (size_t k = 0; k < func_array_size + 1; k++) {
        for (size_t m = 0; m < sequences[k].size; m++)
            printf("%d ", sequences[k].array[m]);
        puts("\n---");
    }

    return 0;
}