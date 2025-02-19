const CAN_PRICE = 31;
   const PET_PRICE = 74;
   const GLASS_PRICE = 17;

 
   function calculateCan() {

       let weight = document.querySelector(".cang").value || 0;
       document.querySelector(".totalcan").value = weight * CAN_PRICE;
       totalCaculator();
   }


   function calculatePet() {
       let weight = document.querySelector(".petg").value || 0;
       document.querySelector(".totalpet").value = weight * PET_PRICE;
       totalCaculator();
   }


   function calculateGlass() {
       let weight = document.querySelector(".glassg").value || 0;
       document.querySelector(".totalglass").value = weight * GLASS_PRICE;
       totalCaculator();
   }


   function totalCaculator() {
       let totalCan = Number(document.querySelector(".totalcan").value) || 0;
       let totalPet = Number(document.querySelector(".totalpet").value) || 0;
       let totalGlass = Number(document.querySelector(".totalglass").value) || 0;
       document.querySelector(".midinput").value = totalCan + totalPet + totalGlass;
   }