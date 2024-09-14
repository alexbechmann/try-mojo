from python import Python

def main():
    pd = Python.import_module("pandas")

    var item = Python.dict()
    item["item_name"] = "whizbang"
    item["price"] = 11.75
    item["inventory"] = 100

    data = Python.list()
    data.append(item)

    df = pd.DataFrame(data)

    print(df)
    print('hello')

    x = 1
    print(x)
