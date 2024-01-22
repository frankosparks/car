import { car_backend } from "../../declarations/car_backend";



import { automobil_backend } from "../../declarations/automobil_backend";
async function submitCarAd() {
    // Collect form data
    var make = document.getElementById("make").value;
    var model = document.getElementById("model").value;
    var year = document.getElementById("year").value;

    // Call the Internet Computer backend using fetch
    const response = await fetch("https://your-canister-id.ic0.app/api/submitCarAd", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        make: make,
        model: model,
        year: year,
      }),
    });

    if (response.ok) {
      // Submission successful, handle the response as needed
      const data = await response.json();
      console.log("Car Advertisement Submitted:", data);
    } else {
      // Submission failed, handle the error
      console.error("Failed to submit car advertisement");
    }
  }

  

