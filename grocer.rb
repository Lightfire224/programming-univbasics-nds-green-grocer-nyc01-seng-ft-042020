def find_item_by_name_in_collection(name, collection)
  counter = 0
  while counter < collection.length do
    if name == collection[counter][:item]
      return collection[counter]
    end
    counter +=1
  end
  nil
end

def consolidate_cart(cart)
  cart_list = []
  counter = 0
    while i<cart.length do
       = find_item_by_name_in_collection(cart[i][:item], cart_list)
      if itemTocartAr
        itemTocartAr[:count] += 1
      else
        itemTocartAr = {
          :item => cart[i][:item],
          :price => cart[i][:price],
          :clearance => cart[i][:clearance],
          :count => 1
        }
        cartAr << itemTocartAr
      end
      i += 1
    end
    cartAr
  end



def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
