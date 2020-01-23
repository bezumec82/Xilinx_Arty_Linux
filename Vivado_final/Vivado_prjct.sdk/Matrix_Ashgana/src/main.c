#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "main.h"

#define VERBOSE_MODE    0

#define MIN(X,Y)        (X<Y)?X:Y
#define MATRIX_SIZE     5

int main() {
    init_platform();

    int array[MATRIX_SIZE][MATRIX_SIZE] = {
            { 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0 },
    };

    int indx1 = 0;
    int indx2 = 0;
    int val1 = 0;
    int val2 = 0;

    xil_printf(RED"{\r\n");
    for (indx1 = 0;
            indx1 < MATRIX_SIZE;
            indx1++
            ) {
        xil_printf(NORM"{");
        for (indx2 = 0;
                indx2 < MATRIX_SIZE;
                indx2++
                ) {
            if ((indx1 + indx2) % 2 != 0) {
                array[indx1][indx2] = --val1;
                xil_printf(GRN"%i ,", array[indx1][indx2]);
            } else {
                array[indx1][indx2] = ++val2;
                xil_printf(YEL"%i ,", array[indx1][indx2]);
            } //end if ((indx1 + indx2) % 2 != 0)
        } //end for (indx2 = 0;
        xil_printf(NORM"}\r\n");
    } //end for (indx1 = 0;
    xil_printf(RED"}");
    cleanup_platform();
    return 0;
}