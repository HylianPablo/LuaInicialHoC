--Calculadora no tan básica con objetos
--Se explican en ella los conceptos más avanzados del lenguaje Lua
--Se comienzan a explicar las meta-tablas
--@HylianPablo

Calculadora={num1=0,num2=0}

function Calculadora:new(o,n1,n2)
    o = o or {}
    setmetatable(o,self)
    self.__index=self
    self.num1=n1
    self.num2=n2
    return o
end

function Calculadora:setNum1(n)
    self.num1=n
end

function Calculadora:setNum2(n)
    self.num2=n
end

function Calculadora:suma()
    return (self.num1 + self.num2)
end

function Calculadora:resta()
    return self.num1-self.num2
end

function Calculadora:mult()
    return self.num1*self.num2
end

function Calculadora:div()
    if num2==0 then 
        return nil
    else
        return self.num1/self.num2
    end
end

function Calculadora:operacionIterativa()
    local t={self.num1,self.num2}
    local res=0
    for i,j in ipairs(t) do
        res = res + i*j
    end
    return res
end

print("Bienvenido a la calculadora Lua!")
print("Introduzca un número para la calculadora:")

--Declaramos el objeto y definimos las operaciones que queremos que haga

n1=io.read("n")
io.write("Introduzca un segundo número: \n")
n2=io.read("n")

calc=Calculadora:new(nil,n1,n2)
print(calc:suma())
print(calc:operacionIterativa())