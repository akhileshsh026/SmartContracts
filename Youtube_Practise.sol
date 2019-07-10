pragma solidity ^0.5.0;

contract Calculator  
{
         uint a = 12;
         uint b = 13;
         
                    uint add_result = add(a,b);
                    uint minus_result = minus(a,b);
                    uint mul_result = mul(a,b);
                    uint divide_result = divide(a,b);
     
   
                    
                    
                    function add(uint c,uint d) public pure returns(uint) {
                        return c+d;
                    }
                    
                                        function minus(uint c,uint d) public pure returns(uint) {
                                               if(c>d)
                                               {
                                                   return c-d;
                                               } else
                                               {
                                                   return d-c;
                                               }
                    }
                    
                                        function mul(uint c,uint d) public pure returns(uint) {
                        return c*d;
                    }
                    
                                        function divide(uint c,uint d) public pure returns(uint) {
                                                 if(c>d)
                                               {
                                                   return c/d;
                                               } else
                                               {
                                                   return d/c;
                                               }
                    }

   

}