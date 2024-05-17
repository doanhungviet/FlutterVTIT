void main() {
  // Khai báo một set chứa các số nguyên
  Set<int> numberSet = {1, 2, 3, 4, 5};

  // Thêm một phần tử vào set
  numberSet.add(6);

  // Thử thêm một phần tử đã tồn tại
  numberSet.add(2); // Phần tử này sẽ không được thêm vào vì đã tồn tại trong set

  // In ra tất cả các phần tử trong set
  print("Các phần tử trong set là:");
  for (var number in numberSet) {
    print(number);
  }

  // Xóa một phần tử khỏi set
  numberSet.remove(3);

  // In ra tất cả các phần tử sau khi xóa
  print("Các phần tử sau khi xóa là:");
  for (var number in numberSet) {
    print(number);
  }
}