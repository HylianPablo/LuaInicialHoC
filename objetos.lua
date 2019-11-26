--Calculadora no tan básica con objetos
--Se explican en ella los conceptos más avanzados del lenguaje Lua
--Se comienzan a explicar las meta-tablas
--@HylianPablo

Calculadora={num1=0,num2=0}

function Calculadora:new(o)
    o = o or {}
    self.__index=self
    setmetatable(o,self)
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

function Calculadora:conjunto(...)
    for _, j in ipairs{...} do
        print(self.num1+j)
    end
end

function Calculadora:addNum(n3)
    tab={self.num1,self.num2}
    table.insert(tab,n3)
    return tab
end

function Calculadora:sumaTotal(t)
    res=0
    for i=1,#t do
        res=res+t[i]
    end
    return res
end



print("Bienvenido a la calculadora Lua!")
print("Introduzca un número para la calculadora:")

--Declaramos el objeto y definimos las operaciones que queremos que haga

n1=io.read("n")
io.write("Introduzca un segundo número: \n")
n2=io.read("n")
print ""

calc=Calculadora:new()
calc2=Calculadora:new()
calc:setNum1(n1)
calc:setNum2(n2)
calc2:setNum1(1)
calc2:setNum2(2)
print("Suma: "..calc:suma())
print("Suma2: "..calc2:suma())
print("Operación iterativa: "..calc:operacionIterativa())
print("Operación conjunto: ")
calc:conjunto(2,3,4,5,10)
print("%%%%%%%%%%%%%%%%%%%%%%%")
t=calc:addNum(100)
print(calc:sumaTotal(t))