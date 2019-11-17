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

print("Bienvenido a la calculadora Lua!\n")

--Declaramos el objeto y definimos las operaciones que queremos que haga

calc=Calculadora:new(nil,3,4)
print(calc:suma())