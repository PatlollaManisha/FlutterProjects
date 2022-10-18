void main() {
  //list declaration
  var names = ["mansiha", "swathi", "sai"];
  print(names);

  //appending to list
  names.add("Srikanth");
  print(names);

  //first element in list
  print("The first element of the list is: ${names.first}");

  //isEmpty
  print("List is empty:${names.isEmpty}");

  //isNotEmpty
  print("List isNotEmpty checking ${names.isNotEmpty}");

  //length of the list
  print("Length of the list: ${names.length}");

  //last element in list
  print("The last element of the list is: ${names.last}");

  //reverse the list
  print("The list values in reverse order: ${names.reversed}");

  //addAll
  names.addAll(["vaibhavi", "Murali"]);
  print("Appended list : $names");

  //insert
  names.insert(4, "rajesh");
  print("list after insertion of name rajesh: $names");

  //insertAll
  names.insertAll(1, ["kirthana", "anusha"]);
  print("insertAll list : $names");

  //update
  names[0] = "Jagadeeshwar";
  print(names);

  //update range
  names.replaceRange(4, 6, ["Lucky","Chanti","Kutty"]);
  print(
      "The value of list after replacing the items between the range [4-6] is ${names}");

  //remove
  print("Original List ${names}");
  names.remove(1);
  print("The value of list after removing the list element ${names}");

  //removeAt
  dynamic removeKey = names.removeAt(1);
  print(removeKey);

  //remove last element
  dynamic rLe = names.removeLast();
  print(rLe);

  //remove range of elements
  names.removeRange(4, 6);
  print(
      "The value of list after removing the list element between the range 4-6 ${names}");
}
