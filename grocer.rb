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
    while counter < cart.length do
      cart_object = find_item_by_name_in_collection(cart[counter][:item], cart_list)
      if cart_object
        cart_object[:count] += 1
      else
        cart_object = {
          :item => cart[counter][:item],
          :price => cart[counter][:price],
          :clearance => cart[counter][:clearance],
          :count => 1
        }
        cart_list << cart_object
      end
      counter += 1
    end
    cart_list
  end



def apply_coupons(cart, coupons)
  i = 0
  while i < coupons.length
    cart_item = find_item_by_name_in_collection(coupons[i][:item], cart)
    couponed_item_name = "#{coupons[i][:item]} W/COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
      if cart_item && cart_item[:count] >= coupons[i][:num]
      if cart_item_with_coupon
        cart_item_with_coupon[:count] += coupons[i][:num]
        cart_item[:count] -= coupons[i][:num]
      else
        cart_item_with_coupon = {
            :item => couponed_item_name,
            :price => coupons[i][:cost]/coupons[i][:num],  #coupon显示的价格/coupon显示的数量要求
            :clearance => cart_item[:clearance],
            :count => coupons[i][:num]
             }
             cart << cart_item_with_coupon
             cart_item[:count] -= coupons[i][:num]
      end
    end
    i += 1
  end
  cart
end
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

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
