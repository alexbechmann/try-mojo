from python import Python


fn main() raises:
    var pd = Python.import_module("pandas")

    var item = Python.dict()
    item["item_name"] = "whizbang"
    item["price"] = 11.75
    item["inventory"] = 100

    var data = Python.list()
    data.append(item)

    var df = pd.DataFrame(data)

    print(df)
