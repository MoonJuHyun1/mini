1byte = 255    1000 0000 = 128
2byte = 65535  1000 0000 0000 0000 32768

char a = -128 127
short b = -32768 32767
int c = -2147483648 2147483647

unsigned char = 0 ~ 255
unsigned word = 0 ~ 

char
1000 0000 -
0000 0000 + 로 사용자에게 알려준다.

컴퓨터는 + 만 할수있다.

보수 = 채워준다는 의미

10의 보수
1의 10의 보수는 9
1의 7의 보수는 6
합치면 15 

1의 보수를 구하는 법 = 0011 -> 1100 -> 1101 -> 0011 + 1101 = 10000 => 0

and & -교집합
1 - 1 = 1
0 - 0 = 1
1 - 0 = 0
0 - 1 = 0

or | -합집합
1 - 1 = 1
1 - 0 = 1
0 - 1 = 1
0 - 0 = 0

not !
1 - 0
0 - 1

비쥬얼베이직 <>  = !
sql (oracle)

배타연산자
xor ^
1 - 0 = 1
0 - 1 = 1
1 - 1 = 0
0 - 0 = 0

shift left << (x 2 효과를 가지고 있다)
0010 -> 00100 -> 0100

shift right >>( 나누기 2 효과를 가지고 있다)
0010 -> 001 -> 0001

i-1번재 비트가 on인가?
if(bit & (1 << i))
char a 0010 0011
       0000 0010(1칸 이동)
       0000 0010(bool true)

true 0이 아닌 모든수
false 0

if(!(bit & (1 << i)))

bit | = (1 << i)
bit = bit | (1 << i)

bit &= !(1 << i)

bit | (1 << i) 값만 보여줌

비트연산 하는 이유 : 처리속도가 빠르다 (용량이 적게듬)


saind +- 가 있는것 , unsaind -+ 가 없는거
단위가 달라진다. (byte 의 맨 앞의 값을 기준으로 사용)


1byte = char,byte
2byte = short , word
4byte = int,float,long
8byte = double, long long
float = (0.1 = 0.2) 다르게인식하여 웬만해선 안쓰는게 좋다
long = 32bit 정수형태

8 byte = 돈에 관련된경우 8바이트를 사용하게된다.

가상메모리 : os가 메모리를 관리/제어하는 방법
(현재는 안전모드)
응용 프로그램이 물리적 메모리를 직접 사용하는 것이 아닌 os의 제어

포인터란
변수의 메모리 주소값을 저장하는 "변수"
const

식별자랑 연산자가 모양이 같이서 많이 햇갈려한다.

포인트 식별자 예) int* p_a; int *p_a;
포인트 연산자 예) printf("%d", *p_a); *p_a = 10;

int a = aa;
a = 선언 엘벨류  aa = 값 알벨류
알벨류에 *이 들어가면 주소값을 가져오라고 명령이됨.

int a = 10;
int* pa = &a;
printf("%d\n",pa);

포인터 연산자 *
참조 연산자 &

int a = 10;
int p_a = &a;
printf("%d", *p_a); 10이 출력된다. p_a의 주소값에 들어있는 값 표출
int *p_a = 식별자
*p_a = 11; = 연산자

배열의 의미
배열 변수의 값은 배열 시작 위치의 주소
배열도 포인터이다.(주소값 보유) 첫번째 값의 주소값을 가지고 있다.
arrA[1] = (p=arrA + 1) 같은 의미다.


문자열은 char의 배열이다.
char p_stringA[16] = "string is Array";

char* p_stringB = "string is Array";

*(p_stringA + 10) = "a";

string 은 주소를 가지고 있는것이다.
string bulder 스프링빌더를 사용해라. 메모리 공간 낭비를 안한다.

이중포인터는 배열의 배열이다.
char* p_charArr[] ={"double","is just","test"}
char** pp_charArr = p_charArr;
printCharArr(pp_charArr, 3);
많이 쓰는건 문자열의 배열이다.
보통은 2중 포인터를 사용 어느곳은 3중도 쓸수있다.
2중 3중으로 나오면 이중포인터라고 생각하면된다.

왜 문자열 배열이 아닌 문자열 포인터 배열
char 


Shallow Copy & Deep Copy
주소값만 복사    주소값에 있는 값을 복사

Shallow copy = 주소값을 그대로 가져와서 수정이됨
Deep Copy = 주소값이 새로 갱신됨

동적할당
java 기준으로 new 를 사용하는게 다 동적활동이다.
런타임시 발생하는 메모리 할당

동적할당을 사용하기위해선 포인터가 필요하다.

malloc(size)
{
    //메모리 할당
    int* allocA = malloc(sizeof(int)); //4바이트 만큼의 할당가능한 주소를 반환함
    *allocA = 10;
    //메모리 해제
    free(allocA);
    //free 로 메모리 해제를 해줘야한다.
}
C언어는 무조건 사용해줘야한다.

프로그램이 끝날때까지 남아있는다.

가비지 컬렉터도 메모리 유슈를 할수있다.

calloc (cnt, size)
{
    //메모리 할당
    int* allocb = calloc(10,sizeof(int));
                            2개의 값을 곱한 값의 컬럼을 줌. 10x4 = 40
    *allocb = 10;
    //메모리 헤제
    free(allocb);
}

realloc(ptr, size)
realloc = 다시 할당할때 사용 (40정도 쓰는데 400정도 필요할시 수정할때사용 단 조심해야한다)
{
    char* allocC = (char*)malloc(4);

    //allocC백업
    char* backupBuffer = allocC;

    //realloc 실패시
    if(NULL == (allocC = (char*)realloc(allocC,8)))
    {
        //백업으로 메모리 해제할 시
        free(backupBuffer);
        fprintf(sfderr, "err")
    }
}

new? 에 대해서 생각해보자


int* arrB = malloc(sizeof(int)*4);
java에서는 포인터는 없지만 포인터의 주소개념은 있다.

구조체 선언 struct
c에서는 클레스랑 struct랑 차이가 크게 없다.

클레스 객체를 만드는 틀
struct 

기초 : c에서 추상화 할수있게 도와주는게 struct다. 객체를 나타내는 구조체의 덩어리.

struct 변수명
{
    변수 변수 
}ss2;

typedef struct 변수명
{
    변수 변수 변수* 등
}별칭;

별칭* 로 바로 사용가능.
(실무에선 이렇게 쓸경우는 없다)
user -> items = (item*)malloc(sizeof(item*)*99);

java형식
(*user).items
구조체가 포인터인경우
(user)->itemCat = 0;

mage* user1 = (mage*)malloc(sizeof(mage));
java기준
mage ma = new mage();

객체지향 프로그래밍(OOP)
3가지
1. 캡슐화 - 상태와 행동을 분리한다
남들이 못보게 감싸는것 (직접 가져다쓰는것이 아니다.)
무조건 프라이빗을 하는게 캡슐화다. 메소드를 통해서만 접속하게 하는것.
장점 : 입력받는값이 단순하다.
        유지보수가 용이해진다.

객체(Object) : 관점에따라서 상태와 행동이 달라지는것
상태       행동
property  method
객체는 상태와 행동으로 나뉠수있는 무언가다.
사람(관점)
상태 : 키 나이 ...
행동 : 뛰다 걷다 ...


2. 다형성 - 행동의 다각화 (오버로딩)
같은 이름의 메소드임에도 불구하고 여러가지 파라미터가 될수있다.


3. 상속(가장중요) - 상속(확장이된다)
(당연하게 들어가는건 추상화)
자식 클레스가 부모의 성질을 상속받는것
방향성을 정해줄수있다.
대규모 개발에 이점이 있다.
부모클레스 설계를 잘해야한다.
재정의가 가능
