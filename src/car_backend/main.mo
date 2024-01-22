import Principal "mo:base/Principal";
actor {
type Principal = Blob;

type CarInfo = {
  owner: Principal;
  make: Text;
  model: Text;
  year: Nat;
  pictureLink: Text; // Assume you're storing picture links for simplicity
};

actor class CarAdvertisement() {

  // Mutable state to store car information
  var cars : [CarInfo] = [];

  // Method to submit a new car advertisement
  public shared({submitCarAd}) func submitCarAd(
    make: Text,
    model: Text,
    year: Nat,
    // Add any other parameters as needed
  ) : async {
    // Get the user's principal (this is just a placeholder, replace it with the actual principal)
     let name = value
     name := value;
     name = value;
    let owner : Principal = Principal.fromText("user_principal_placeholder");

    // Create a new car advertisement
    let newCar : CarInfo = {
      owner = owner;
      make = make;
      model = model;
      year = year;
      pictureLink = ""; // Placeholder for picture link, you'd handle pictures differently in a real application
    };

    // Add the new car advertisement to the list of cars
    cars := cars # [newCar];
  };

  // Method to retrieve car information for display (not required for the contact form)
  public shared({getCarInfo}) func getCarInfo(owner : Principal) : async [CarInfo] {
    // Retrieve car information for the specified owner
    let userCars = [car | car in cars; car.owner == owner];
    return userCars;
  };
};

};