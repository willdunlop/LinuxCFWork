def calculate_years(principal, interest, tax, desired)
throw NotImplementedError.new "TODO: calculate_years"
y = 0
def cal
if desired > principal
cal = principal - (principal * tax)
year = principal + (cal * interest)
principal = year
y + 1
cal
else
y
end
end
end
