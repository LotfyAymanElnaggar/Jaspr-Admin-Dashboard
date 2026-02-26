class TeamMember {
  final int id;
  final String name;
  final String email;
  final int age;
  final String phone;
  final String access;
  const TeamMember(this.id, this.name, this.email, this.age, this.phone, this.access);
}

class Contact {
  final int id;
  final int registrarId;
  final String name;
  final int age;
  final String phone;
  final String email;
  final String address;
  final String city;
  final String zipCode;
  const Contact(this.id, this.registrarId, this.name, this.age, this.phone, this.email, this.address, this.city, this.zipCode);
}

class Invoice {
  final int id;
  final String name;
  final String email;
  final String cost;
  final String phone;
  final String date;
  const Invoice(this.id, this.name, this.email, this.cost, this.phone, this.date);
}

class Txn {
  final String txId;
  final String user;
  final String date;
  final String cost;
  const Txn(this.txId, this.user, this.date, this.cost);
}

const mockTeamData = <TeamMember>[
  TeamMember(1, 'Jon Snow', 'jonsnow@gmail.com', 35, '(665)121-5454', 'admin'),
  TeamMember(2, 'Cersei Lannister', 'cerseilannister@gmail.com', 42, '(421)314-2288', 'manager'),
  TeamMember(3, 'Jaime Lannister', 'jaimelannister@gmail.com', 45, '(422)982-6739', 'user'),
  TeamMember(4, 'Anya Stark', 'anyastark@gmail.com', 16, '(921)425-6742', 'admin'),
  TeamMember(5, 'Daenerys Targaryen', 'daenerystargaryen@gmail.com', 31, '(421)445-1189', 'user'),
];

const mockContacts = <Contact>[
  Contact(1, 123512, 'Jon Snow', 35, '(665)121-5454', 'jonsnow@gmail.com', '0912 Won Street, Alabama, SY 10001', 'New York', '10001'),
  Contact(2, 123512, 'Cersei Lannister', 42, '(421)314-2288', 'cerseilannister@gmail.com', '1234 Main Street, New York, NY 10001', 'New York', '13151'),
  Contact(3, 4132513, 'Jaime Lannister', 45, '(422)982-6739', 'jaimelannister@gmail.com', '3333 Want Blvd, Estanza, NAY 42125', 'New York', '87281'),
  Contact(4, 123512, 'Anya Stark', 16, '(921)425-6742', 'anyastark@gmail.com', '1514 Main Street, New York, NY 22298', 'New York', '15551'),
  Contact(5, 123512, 'Daenerys Targaryen', 31, '(421)445-1189', 'daenerystargaryen@gmail.com', '11122 Welping Ave, Tenting, CD 21321', 'Tenting', '14215'),
];

const mockInvoices = <Invoice>[
  Invoice(1, 'Jon Snow', 'jonsnow@gmail.com', '21.24', '(665)121-5454', '03/12/2022'),
  Invoice(2, 'Cersei Lannister', 'cerseilannister@gmail.com', '1.24', '(421)314-2288', '06/15/2021'),
  Invoice(3, 'Jaime Lannister', 'jaimelannister@gmail.com', '11.24', '(422)982-6739', '05/02/2022'),
  Invoice(4, 'Anya Stark', 'anyastark@gmail.com', '80.55', '(921)425-6742', '03/21/2022'),
  Invoice(5, 'Daenerys Targaryen', 'daenerystargaryen@gmail.com', '1.24', '(421)445-1189', '01/12/2021'),
];

const mockTransactions = <Txn>[
  Txn('01e4dsa', 'johndoe', '2021-09-01', '43.95'),
  Txn('0315dsaa', 'sandra', '2022-04-01', '133.45'),
  Txn('01e4dsa', 'mike', '2021-09-01', '43.95'),
  Txn('51034szv', 'steve', '2022-11-05', '200.0'),
  Txn('0a123sb', 'emma', '2021-04-01', '13.45'),
];
