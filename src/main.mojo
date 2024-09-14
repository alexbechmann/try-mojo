from python import Python
from lib import Person, mark_person, add


fn main():
    var x: Int32 = 5
    var doubled = x * 2
    var y = add(doubled, 10)

    print(doubled, y)

    var person = Person(name="Alice", age=30, marked=False)
    print(
        person.name,
        person.age,
        person.marked,
    )

    mark_person(person)

    print(
        person.name,
        person.age,
        person.marked,
    )
