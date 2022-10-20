class Carta {
  final int id;
  final String nombre;
  final double precio;
  final String imagen;
  final String descripcion;

  const Carta({ this.id,  this.nombre,  this.precio,  this.imagen,  this.descripcion});
}

final pantalones = [
  const Carta(id: 1, nombre: "Apple iPhone 13 128gb", precio: 5799000, imagen: "assets/img/cel1.jpeg"),
  const Carta(id: 2, nombre: "Apple iPhone 13 64gb", precio: 4799000, imagen: "assets/img/cel2.jpeg"),
  const Carta(id: 3, nombre: "Apple iPhone 13 pro 256gb", precio: 5999900, imagen: "assets/img/cel3.jpeg"),
  const Carta(id: 4, nombre: "Apple iPhone 11 64gb", precio: 2369900, imagen: "assets/img/cel4.jpeg"),
];

final chaquetas = [
  const Carta(id: 7, nombre: "Xiaomi redmi note 11 pro+plus", precio: 1999900, imagen: "assets/img/redmi.jpeg"),
  const Carta(id: 8, nombre: "Xiaomi redmi note 11 pro 4g", precio: 1189900, imagen: "assets/img/redmi1.jpeg"),
  const Carta(id: 9, nombre: "Xiaomi redmi note 11 pro 5g", precio: 1799900, imagen: "assets/img/redmi2.jpeg"),
  const Carta(id: 10, nombre: "Xiaomi redmi note 11", precio: 799900, imagen: "assets/img/redmi3.jpeg"),
  const Carta(id: 11, nombre: "Xiaomi redmi 10c dual", precio: 599900, imagen: "assets/img/redmi4.jpeg"),
  const Carta(id: 12, nombre: "Xiaomi MI 11 lite 5g NE", precio: 1799900, imagen: "assets/img/redmi5.jpeg"),
  const Carta(id: 12, nombre: "Xiaomi POCO X4 pro", precio: 1559900, imagen: "assets/img/redmi6.jpeg"),
  const Carta(id: 12, nombre: "Xiaomi 12", precio: 3399900, imagen: "assets/img/redmi7.jpeg"),
];

final tenis = [
  const Carta(id: 13, nombre: "Motorola G31", precio: 689900, imagen: "assets/img/moto.jpeg"),
  const Carta(id: 14, nombre: "Motorola G50", precio: 999900, imagen: "assets/img/moto1.jpeg"),
  const Carta(id: 15, nombre: "Motorola Moto G60", precio: 835900, imagen: "assets/img/moto2.jpeg"),
  const Carta(id: 17, nombre: "Motorola Moto G31", precio: 559900, imagen: "assets/img/moto3.jpeg"),
  const Carta(id: 18, nombre: "Motorola Moto G50", precio: 1199900, imagen: "assets/img/moto4.jpeg"),
  const Carta(id: 19, nombre: "Motorola G5 Plus", precio: 419990, imagen: "assets/img/moto5.jpeg"),
  const Carta(id: 20, nombre: "Motorola Moto G20", precio: 749900, imagen: "assets/img/moto6.jpeg"),
  const Carta(id: 21, nombre: "Motorola Moto G22", precio: 1257900, imagen: "assets/img/moto7.jpeg"),
];