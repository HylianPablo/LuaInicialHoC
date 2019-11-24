-- Calculadora no tan básica con pequeñas funciones
-- Se explican en ella los conceptos algo más avanzados del lenguaje Lua
-- Se comienzan a explicar las tablas
-- @HylianPablo
function suma(num1, num2) return num1 + num2 end

function resta(num1, num2) return num1 - num2 end

function mult(num1, num2) return num1 * num2 end

function div(num1, num2)
    if num2 ~= 0 then return num1 / num2 end
    return nil
end

function various(num1, num2)
    res1 = num1 * 2
    res2 = num2 * 3
    return res1, res2
end

print("Bienvenido a la calculadora Lua!\n")
print("Introduzca el primer número por favor: ")
num1 = io.read("n")
print("Introduzca el segundo número por favor: ")
num2 = io.read("n")

print("Seleccione una operación: \n" .. "1-Suma\n" .. "2-Resta\n" ..
          "3-Multiplicación\n" .. "4-División\n" .. "5-Various\n")

repeat
    print("Introduzca opción: ")
    choice = io.read("n")
until choice >= 1 and choice <= 5

local tableChoice = {
    [1] = suma,
    [2] = resta,
    [3] = mult,
    [4] = div,
    [5] = various
}

local varChoice = tableChoice[choice]
if choice ~= 5 then
    local result = varChoice(num1, num2)
    if not (result == nil) then
        print("Resultado: " .. result)
    else
        print("Operación errónea")
    end
else
    result1, result2 = varChoice(num1, num2)
    print("Resultados: " .. result1 .. ", " .. result2)
end

