from python import Python

def main():
    pd = Python.import_module("pandas")
    df = pd.DataFrame()

    print(df)
    print('hello')

    x = 1
    print(x)



fn greet(name: String) -> NoneType:
    print(f"Hello, {name}!")