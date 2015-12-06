#include <stdio.h>
#include <stdlib.h>

short thing[1000][1000];
char * thin  = "fjdi";

void set_lights(x1,x2,y1,y2) {
    for (int x = x1; x <= x2; x++) {
        for (int i = y1; i <= y2; i++) {
            thing[i][x] = 1;
        }
    }
}

void off_lights(x1,x2,y1,y2) {
    for (int x = x1; x <= x2; x++) {
        for (int i = y1; i <= y2; i++) {
            thing[i][x] = 0;
        }
    }
}

void toggle_lights(x1,x2,y1,y2) {
    for (int x = x1; x <= x2; x++) {
        for (int i = y1; i <= y2; i++) {
            if (thing[i][x] == 1) {;
                thing[i][x] = 0;
            } else {
                thing[i][x] = 1;
            }
        }
    }
}

int count_lights() {
    int out = 0;
    for (int x = 0; x <= 999; x++) {
        for (int i = 0; i <= 999; i++) {
            if (thing[i][x] == 1) {;
                out++;
            }
        }
    }
    return out;
}

void print_lights() {
    for (int x = 0; x <= 999; x++) {
        for (int i = 0; i <= 999; i++) {
            if (thing[i][x] == 1) {;
                printf("%i", thing[i][x]);
            }
        }
        getchar();
    }
}

int main(){
    FILE * fp;
    char * line = NULL;
    size_t len = 0;
    ssize_t read;

    fp = fopen("input6.txt", "r");
    if (fp == NULL)
        exit(1);

    while ((read = getline(&line, &len, fp)) != -1) {
        if (line[6] == 'n'){
            set_lights();
        } else if (line[6] == 'f'){
        } else if (line[6] == ' '){
        }
    }

    fclose(fp);

    return 0;
}
