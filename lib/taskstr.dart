void main() {
  //string concatenation
  String str1 = "Manisha";
  String str2 = "Patlolla";
  String result = str1 + str2;

  print("The concatenated string : $result");

  int n = 1 + 1;

  String s1 = "The sum of 1 and 1 is $n";
  print(s1);

  String s2 = "The sum of 2 and 2 is ${2 + 2}";
  print(s2);
  print("------------------------------------------------------------");
  String str_1 = "Manisha";
  String str_2 = "Patlolla";
  String str_3 = "The sum of s1 and s2 is ${str_1+str_2}";
  print(str_3);
  print("------------------------------------------------------------");

  //codeunits:An unmodifiable list of the UTF-16 code units of this string.
  String a = "Hello";
  print(a.codeUnits);
  print("-----------------------------------------------------------");

  //isEmpty
  String b = "Hello";
  print(b.isEmpty);
  print("-----------------------------------------------------------");

  //length of the string
  String str = "Hello All";
  print("The length of the string is: ${str.length}");
  print("-----------------------------------------------------------");

  //lower case of a string
  String uStr = "ABC";
  String lStr = "hello";
  print("uppercase to lowercase : ${uStr.toLowerCase()}");
  print("lowercase senario : ${lStr.toLowerCase()}");
  print("-----------------------------------------------------------");

  //uppercase of a string
  String u = "ABC";
  String l = "hello";

  print("uppercase senario : ${u.toUpperCase()}");
  print("lowercase to uppercase : ${l.toUpperCase()}");
  print("-----------------------------------------------------------");

  String s3 = "hello world";
  print("Trimmed string is ${s3.trim()}");
  print("-----------------------------------------------------------");

  //compareTo
  String s4 = "A";
  String s5 = "A";
  String s6 = "B";

  print("s4.compareTo(s5): ${s4.compareTo(s5)}");
  print("s4.compareTo(s6): ${s4.compareTo(s6)}");
  print("s5.compareTo(s6): ${s5.compareTo(s6)}");
  print("-----------------------------------------------------------");

  //replaceAll
  String s7 = "Hello World";
  print("New String: ${s7.replaceAll('World', 'ALL')}");
  print("-----------------------------------------------------------");

  //split
  String s8 = "Today, is, Thursday";
  print("New String: ${s8.split(',')}");
  print("-----------------------------------------------------------");

  //substring
  String s9 = "Hello World";
  // from index 6 to the last index
  print("New String: ${s9.substring(6)}");
  // from index 2 to the 6th index
  print("New String: ${s9.substring(2, 6)}");
  print("-----------------------------------------------------------");

  //toString
  int n1 = 12;
  var res = n1.toString();
  print("New String: $res");
  print("-----------------------------------------------------------");

  //codeUnitAt
  var s10 = "Good Day";
  print("Code Unit of index 0 (G): ${s10.codeUnitAt(0)}");
  print("Code Unit of index 0 (G): ${s10.codeUnitAt(1)}");

  print("-----------------------------------------------------------");
}
