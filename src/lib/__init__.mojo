from .person import Person


fn add(a: Int32, b: Int32) -> Int32:
    return a + b


fn mark_person(inout person: Person) -> None:
    person.marked = True
