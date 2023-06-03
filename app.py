import mariadb
import dbcreds

def show_all_items():
    conn = mariadb.connect(**dbcreds.conn_params)
    cursor = conn.cursor()
    cursor.execute('call get_all_items()')
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    for item in results:
        print(f"Name: {str(item[1], 'utf-8')}, Price: {item[2]}")

def create_sale():
    item_id = input("Please enter the item_id: ")
    sales_person_id = input("Please enter the sales_person_id: ")
    conn = mariadb.connect(**dbcreds.conn_params)
    cursor = conn.cursor()
    cursor.execute('call sell_item(?,?)', [item_id, sales_person_id])
    cursor.close()
    conn.close()

def get_sales():
    sales_person_id = input("Please enter the sales_person_id: ")
    conn = mariadb.connect(**dbcreds.conn_params)
    cursor = conn.cursor()
    cursor.execute('call get_sales_by_person(?)', [sales_person_id])
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    for result in results:
        print(f"Name: {str(result[0], 'utf-8')}, Total Sales: {result[1]}")

def run_app():
    while(True):
        print("----------------------")
        print("Select 1 for all items")
        print("Select 2 for inserting sale")
        print("Select 3 for sales info")
        print("Select 4 for quitting")
        user_input = input("Which would you like to do: ")
        print("----------------------")
        if(user_input == "1"):
            show_all_items()
        elif(user_input == "2"):
            create_sale()
        elif(user_input == "3"):
            get_sales()
        elif(user_input == "4"):
            return
        
run_app()