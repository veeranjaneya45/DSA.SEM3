#include <stdio.h>
#include <stdlib.h>

int main() {
    int *arr, n, i;

    printf("Enter number of elements: ");
    scanf("%d", &n);

    // allocate memory dynamically
    arr = (int*)malloc(n * sizeof(int));

    if(arr == NULL) {
        printf("Memory not allocated!\n");
        return 0;
    }

    printf("Enter %d elements:\n", n);
    for(i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    printf("You entered: ");
    for(i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }

    // free memory
    free(arr);

    return 0;
}
