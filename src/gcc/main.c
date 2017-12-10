int one() { return 1; }

int main() {
  int i;
  for (i = 0; i < 2000000000; i++) {one();}
  return 0;
}
