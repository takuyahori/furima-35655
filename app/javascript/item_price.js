window.addEventListener('load', function(){

   const priceInput = document.getElementById("item-price");
   priceInput.addEventListener("input", () => {
      const inputValue = priceInput.value;

      const salesCommission = document.getElementById("add-tax-price");
      salesCommission.innerHTML = (Math.floor(inputValue * 0.1));

      const salesProfit = document.getElementById("profit");
         const commissionAnswer = inputValue * 0.1
         console.log(commissionAnswer);
         salesProfit.innerHTML = (Math.floor(inputValue - commissionAnswer));
  })
})    

