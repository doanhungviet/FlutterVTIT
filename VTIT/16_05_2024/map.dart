void main() {
  // Khai báo một map chứa thông tin về sinh viên
  Map<String, dynamic> student = {
    'id': 1,
    'name': 'Viet',
    'age': 22,
    'grade': 'A'
  };

  // In ra thông tin của sinh viên
  print('Thông tin sinh viên:');
  print('ID: ${student['id']}');
  print('Tên: ${student['name']}');
  print('Tuổi: ${student['age']}');
  print('Điểm số: ${student['grade']}');

  // Thay đổi tuổi của sinh viên
  student['age'] = 21;

  // In ra thông tin mới của sinh viên
  print('\nThông tin sinh viên sau khi thay đổi tuổi:');
  print('ID: ${student['id']}');
  print('Tên: ${student['name']}');
  print('Tuổi: ${student['age']}');
  print('Điểm số: ${student['grade']}');
}