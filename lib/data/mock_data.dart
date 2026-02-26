class TeamMember {
  final String id;
  final String name;
  final String email;
  final String age;
  final String phone;
  final String access;
  const TeamMember(this.id, this.name, this.email, this.age, this.phone, this.access);
}

const mockTeamData = <TeamMember>[
  TeamMember('1', 'Jon Snow', 'jonsnow@gmail.com', '35', '(665)121-5454', 'admin'),
  TeamMember('2', 'Cersei Lannister', 'cersei@gmail.com', '42', '(421)314-2288', 'manager'),
  TeamMember('3', 'Jaime Lannister', 'jaime@gmail.com', '45', '(422)982-6739', 'user'),
  TeamMember('4', 'Anya Stark', 'anya@gmail.com', '16', '(921)425-6742', 'user'),
];
