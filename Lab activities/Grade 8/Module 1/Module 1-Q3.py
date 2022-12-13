even_nums = []
for i in range(2,21,2):
  if i % 2 == 0:
    even_nums.append(str(i))
print(', '.join(even_nums))