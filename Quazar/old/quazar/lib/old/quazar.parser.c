#define t-name          0
#define t-message       1
#define t-label         2
#define t-named-call    3
#define t-core-fnc      4
#define t-code-open     5
#define t-code-close    6
#define t-code-call     7
#define t-anon-call     8
#define t-assignment    9
#define t-compound      10
#define t-mix           11
#define t-up-mix        12
#define t-mix-open      13
#define t-mix-close     14 
#define t-match         15
#define t-comment-open  16
#define t-comment-close 17
#define t-scope-object  18
#define t-space         19
#define t-stop-decomposition  20
#define t-scope-property      21 


typedef struct {
   int token;
   char *value;

   ParseNode *next;
} ParseNode;
