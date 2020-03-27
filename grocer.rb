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



def apply_coupons(cart: [] , coupons: [])
    my_hash = {}
  if coupons == nil || coupons.empty?
    my_hash = cart
  end
  coupons.each do |coupon|
    cart.each do |itemname, data|
      if itemname == coupon[:item]
        count = data[:count] - coupon[:num]

        if count >= 0
          if my_hash["#{itemname} W/COUPON"] == nil
            my_hash["#{itemname} W/COUPON"] = {price: coupon[:cost], clearance: data[:clearance], count: 1}
          else
            couponcount = my_hash["#{itemname} W/COUPON"][:count] + 1
            my_hash["#{itemname} W/COUPON"] = {price: coupon[:cost], clearance: data[:clearance], count: couponcount}
          end
        else
          count = data[:count]
        end
        my_hash[itemname] = data
        my_hash[itemname][:count] = count
      else
        my_hash[itemname] = data
      end
    end
  end
  my_hash
end
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
