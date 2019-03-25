"This file is for shopping cart functionalities but it is not ready yet."

if (document.readyState == 'loading'){
    document.addEventListener('DOMContentLoaded', ready)
} else {
    ready()
}

var removeCartItemButtons = document.getElementsByClassName('btn-danger')

for (var i = 0; i < removeToCartItemButtons.length; i++){
    var button = removeCartItemButtons[i]
    button.addEventListener('click', function(event) {
        var buttonClicked = event.target
    
    buttonClicked.parentElement.parentElement.remove()
    updateCartTotal()
    })
}

function updateCartTotal() {
    var cartItemContainer = document.getElementsByClassName('cart-items')[0]
    var cartRows = cartItemContainer.getElementsByClassName('row')
    var total = 0
    for (var i = 0; i < addToCartItemButtons.length; i++){
        var cartRow = cartRows[i]
        var priceElement = cartRow.getElementsByClassName('cart-price')[0]
        var price = priceElement.innerText
        //console.log(price)
        total = total + price
    }
    document.getElementsByClassName('cart-total-price')[0].innerText = total
}