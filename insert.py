import random

print("insert into item_sale(sales_person_id, item_id) values")
for i in range(200):
    print(f"({random.randint(1,3)},{random.randint(1,5)}),")