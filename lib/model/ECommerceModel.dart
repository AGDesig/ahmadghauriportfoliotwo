class ECommerceModel {
  Record? record;
  Metadata? metadata;

  ECommerceModel({this.record, this.metadata});

  ECommerceModel.fromJson(Map<String, dynamic> json) {
    record =
    json['record'] != null ? new Record.fromJson(json['record']) : null;
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.record != null) {
      data['record'] = this.record!.toJson();
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    return data;
  }
}

class Record {
  List<Products>? products;
  List<Customers>? customers;
  List<Orders>? orders;

  Record({this.products, this.customers, this.orders});

  Record.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
    if (json['customers'] != null) {
      customers = <Customers>[];
      json['customers'].forEach((v) {
        customers!.add(new Customers.fromJson(v));
      });
    }
    if (json['orders'] != null) {
      orders = <Orders>[];
      json['orders'].forEach((v) {
        orders!.add(new Orders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    if (this.customers != null) {
      data['customers'] = this.customers!.map((v) => v.toJson()).toList();
    }
    if (this.orders != null) {
      data['orders'] = this.orders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? id;
  String? name;
  String? brand;
  double? price;
  int? stockQuantity;

  Products({this.id, this.name, this.brand, this.price, this.stockQuantity});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    brand = json['brand'];
    price = json['price'];
    stockQuantity = json['stock_quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['brand'] = this.brand;
    data['price'] = this.price;
    data['stock_quantity'] = this.stockQuantity;
    return data;
  }
}

class Customers {
  int? id;
  String? name;
  String? email;
  String? address;

  Customers({this.id, this.name, this.email, this.address});

  Customers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['address'] = this.address;
    return data;
  }
}

class Orders {
  int? orderId;
  int? customerId;
  List<PurchasedProducts>? products;
  double? totalPrice;
  String? orderDate;

  Orders(
      {this.orderId,
        this.customerId,
        this.products,
        this.totalPrice,
        this.orderDate});

  Orders.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    customerId = json['customer_id'];
    if (json['products'] != null) {
      products = <PurchasedProducts>[];
      json['products'].forEach((v) {
        products!.add(new PurchasedProducts.fromJson(v));
      });
    }
    totalPrice = json['total_price'];
    orderDate = json['order_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_id'] = this.orderId;
    data['customer_id'] = this.customerId;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['total_price'] = this.totalPrice;
    data['order_date'] = this.orderDate;
    return data;
  }
}

class PurchasedProducts {
  int? productId;
  int? quantity;

  PurchasedProducts({this.productId, this.quantity});

  PurchasedProducts.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['quantity'] = this.quantity;
    return data;
  }
}

class Metadata {
  String? id;
  bool? private;
  String? createdAt;
  String? name;

  Metadata({this.id, this.private, this.createdAt, this.name});

  Metadata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    private = json['private'];
    createdAt = json['createdAt'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['private'] = this.private;
    data['createdAt'] = this.createdAt;
    data['name'] = this.name;
    return data;
  }
}
