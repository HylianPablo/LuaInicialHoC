--Calculadora básica con main como única función
--Se explican en ella los conceptos básicos del lenguaje Lua
--@HylianPablo

print("Bienvenido a la calculadora Lua!\n")
print("Introduzca el primer número por favor: ")
num1=io.read("n")
print("Introduzca el segundo número por favor: ")
num2=io.read("n")

print("Seleccione una operación: \n"..
        "1-Suma\n"..
        "2-Resta\n"..
        "3-Multiplicación\n"..
        "4-División\n")

repeat
    print("Introduzca opción: ")
    choice=io.read("n")
until choice >=1 and choice <=4


if choice == 1 then
    print(num1+num2)
elseif choice == 2 then 
    print(num1-num2)
elseif choice == 3 then
    print(num1*num2)
else
    if not (num2 <= 0) then
        print(num1/num2)
    else
        print("El segundo número debe ser mayor que cero")
    end
end

