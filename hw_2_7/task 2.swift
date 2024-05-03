//
//  2 task.swift
//  hw_2_7
//
//  Created by Erma on 3/5/24.


//2. Рефакторинг:
// 
//class UserManager {
//   func saveUser(user: User) { /* ... */ }
//   func deleteUser(user: User) { /* ... */ }
//   func printUser(user: User) { /* ... */ }
//}
// 
//Реорганизуйте этот класс, разделив его функциональность на несколько классов, соблюдая Single Responsibility Principle.
// 
class User{}


class UserManager {
    let user: User
    
    init(user: User) {
        self.user = user
    }
}

class SaveUser {
    func saveUser(user: UserManager){
        print("Сохранить пользователя")
    }
}

class DeleteUser{
    func deleteUser(user: UserManager){
        print("удалить пользователя")
    }
}

class PrintUser{
    func printUser(user: UserManager){
        print("Дать информацию о пользователе")
    }
}

