import Debug "mo:base/Debug";

actor Inventory {
  var valStock = 0;


  public func addInven(stock: Nat) {
    valStock += stock;
    Debug.print(debug_show(valStock));
  };

  public func removeInven(stock: Nat) {
    let tempStock: Int = valStock - stock;
    if (tempStock >= 0) {
          valStock += stock;
          Debug.print(debug_show(valStock));
    }
    else {
      Debug.print("No stock left");
    }

  };

}

