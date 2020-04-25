BEGIN{
sum=0
}
{ i = 0
  while(i<NF){
  sum+=$i
  i+=1
 }
 }
 END{
 print sum
 }
