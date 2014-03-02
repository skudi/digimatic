#include <stdio.h>
#include <stdlib.h>

int main (int argc, char **argv) {

	char *orig = argv[1];
	unsigned int patchoffset;
	char *patch = argv[3];
	char *dest = argv[4];

	unsigned char *buffer;
	int origsize;
	int readed;

	sscanf(argv[2], "%x", &patchoffset);

	printf ("patching %s at %0x(%s) with %s to %s\n", orig, patchoffset, argv[2], patch, dest);
	FILE* f = fopen(orig, "r");

	fseek(f, 0, SEEK_END);
	origsize=ftell(f);
	fseek(f, 0, SEEK_SET);
	buffer = malloc(origsize);
	readed = fread(buffer, 1, origsize, f);
	printf ("orig %s (%d bytes)\n", orig, readed);
	fclose(f);

	f = fopen(patch, "r");
	readed = fread(buffer + patchoffset, 1, origsize - patchoffset, f);
	printf ("patch %s (%d bytes)\n", patch, readed);
	fclose(f);

	f = fopen(dest, "w");
	readed = fwrite(buffer, 1, origsize, f);
	printf ("desc %s (%d bytes)\n", dest, readed);
	fclose(f);

	free(buffer);

}
