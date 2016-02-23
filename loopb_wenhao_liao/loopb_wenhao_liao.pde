/**
 * @author: Wenhao Liao , SWID:10406242
 * HW1b - Processing - looping
**/
int product = 1;
void setup() {
  for (int i = 1; i <= 32768; i*=2) {
    print(i+" ");
  }
  exit();
}