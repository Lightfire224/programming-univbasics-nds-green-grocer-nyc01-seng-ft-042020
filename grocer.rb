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
  cartAr = []
  i = 0
    while i<cart.length do
      itemTocartAr = find_item_by_name_in_collection(cart[i][:item], cartAr)
      if itemTocartAr#if exist                    item name to find, item collection to search through
    # if itemTocartAr!=nil 如果不等于 nil，如果并没有不存在，如果存在
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
# def consolidate_cart(cart)
#   cart_list = []
#   counter = 0
#     while counter < cart.length do
#       cart_thing = find_item_by_name_in_collection(cart[counter])[:item], cart_list)
#       if cart_thing
#         cart_thing[:count] +=1
#       else
#         cart_thing = {
#           :item => cart[counter][:item],
#           :price => cart[counter][:price],
#           :clearance => cart[counter][:clearance],
#           :count => 1
#         }
#         cart_list.append(object)
#       end
#       counter += 1
#     end
#     cart_list
#   end


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
