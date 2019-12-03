def find_item_by_name_in_collection(name, collection)
  index = 0 
  while index < collection.length do 
    if collection[index][:item] == name
      return collection[index]
    end
    index += 1 
  end
  nil
end

def consolidate_cart(cart)
  new_cart = []
  index = 0 
  while index < cart.length do 
    item_name = cart[index][:item]
    found_item = find_item_by_name_in_collection(item_name, new_cart)
    if found_item
      found_item[:count] += 1 
    else
      cart[index][:count] = 1 
      new_cart << cart[index]
    end
    index += 1 
  end
  new_cart
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
