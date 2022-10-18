
void main() {
  //map
  var details = {'EmployeeName': 'Manisha', 'Designation': 'TSD'};
  print("First type of initialisation of map Details: $details");

  //map declaration in different way
  var info = {};
  info['EmployeeName'] = 'Manisha';
  info['Designation'] = 'TSD';
  print("Second type of initialisation of map Info: $info");

  //adding key:pair to map
  details['EmployeeID'] = '2252';
  print(details);

  //keys in map
  print(details.keys);

  //values in map
  print(details.values);

  //length of map
  print(details.length);

  //isEmpty
  print(details.isEmpty);
  var hosts = {};
  print(hosts.isEmpty);

  //isNotEmpty
  print(details.isNotEmpty);
  var hosts1 = {};
  print(hosts1.isNotEmpty);

  //addAll
  details.addAll({'email': 'manisha27@gmail.com','Qualification':'Graduate'});
  print('Map after adding  entries :$details');

  //remove a value from map
  dynamic result = details.remove('email');
  print('Value removed from the Map :$result');

  //iterating the items in map
  details.forEach((key, value) => print('$key: $value'));

  //clear the map
  info.clear();
  print('Map after calling clear() displaying map Info: $info');
}
