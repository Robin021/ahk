#q:: send T-systems@Be1J1ng
#a:: send Q-CShan9ha1@vgcams
#z:: send P@ssw0rd123
#n:: 
Clipboard = % RandomPass("Wwd",16)
send ^v



RandomPass(kind:="Wwd",length:=16){
;kind:类型 W大写 w小写 d数字 可以组合 length:长度
char := [1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",0,1,2,3,4,5,6,7,8,9,"!","@","#",""]
char[0] := 0 ;定义数组
option := kind
kind = 0 ;必须先赋值  不然后面的加法无效
kind := InStr(option,"W",1) ? kind+100 : kind ;InStr区分大小写
kind := InStr(option,"w",1) ? kind+10 : kind
kind := InStr(option,"d") ? kind+1 : kind
;判断类型并设置随机数最小最大值
if kind=111
    min:=0,max:=61
else if kind=110
    min:=10,max:=61
else if kind=11
    min:=0,max:=35
else if kind=101
    min:=36,max:=71
else if kind=1
    min:=0,max=9
else if kind=10
    min:=10,max=35
else if kind=100
    min:=36,max=61
loop % length
{
Random, l, %min%, %max%
str .= char[l]
}
return str
}
