void main(List<String> args) {
  double totalPrice = 0; // Initializing the total price
  double totalPriceWithVAT = 0; // Initializing the total price after adding the tax value

  // VAT meaning = Value Added Tax

  const tax_rate = 10;

  // Initializing a list of map for the grocery items
  List<Map<String, dynamic>> items = [
    {'Name' : 'Potato' , 'Price' : 15},
    {'Name' : 'Onion' , 'Price' : 20},
    {'Name' : 'Lemon' , 'Price' : 30},
    {'Name' : 'Tomato' , 'Price' : 8},
    {'Name' : 'Carrot' , 'Price' : 8.5},
    {'Name' : 'Pepper' , 'Price' : 21.5},
    {'Name' : 'Orange' , 'Price' : 12.5},
    {'Name' : 'Apple' , 'Price' : 17.5},
  ];

  // Get the total price
  for (var item in items) {
    totalPrice += item['Price'];
  }

  // Get the total price with VAT
  for (var item in items) {
    totalPriceWithVAT += item['Price'] + ((item['Price'] * tax_rate) / 100);
  }

  // Printing the outputs
  print('The total price will be: ${totalPrice}');
  print('The total price with VAT will be: ${totalPriceWithVAT}');
}
