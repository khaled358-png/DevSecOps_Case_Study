let cart = [];
let total = 0;

function addToCart(name, price) {
    cart.push({ name, price });
    total += price;

    updateCart();
}

function updateCart() {
    let list = document.getElementById("cart-list");
    list.innerHTML = "";

    cart.forEach(item => {
        let li = document.createElement("li");
        li.textContent = item.name + " - " + item.price + " جنيه";
        list.appendChild(li);
    });

    document.getElementById("total").textContent =
        "الإجمالي: " + total + " جنيه";
}