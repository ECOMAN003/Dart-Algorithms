void main(List<String> args) {
  //print(isValid("[{(}}]"));
  int i = 0;
  
  print(i);
}

bool isValid(String s) {
  for (var i = 0; i < s.length - 1;) {
    Map<String, String> paraMap = {
      '(': ')',
      '{': '}',
      '[': ']',
    };
    for (var j = 1; j < s.length - 2;) {
      if (paraMap[s[i]] == s[i + j]) {
        return true;
      }
      j += 2;
    }
    i += 2;
  }

  return false;
}
//[{()}]
// String current = s[i];
    // String complement = '';
    // switch (current) {
    //   case '(':
    //     complement = ')';
    //     break;
    //   case '{':
    //     complement = '}';
    //     break;
    //   case '[':
    //     complement = ']';
    //     break;
    //   default:
    //     print("Invalid String");
    // }

    // if (s[i + 1] != complement) {
    //   return false;
    // }
