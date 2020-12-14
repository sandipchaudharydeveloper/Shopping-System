<%-- 
    Document   : ShppingSystem
    Created on : 30 Oct, 2020, 1:59:21 PM
    Author     : Chaudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>   
    </head>
    <body>
        <%
            String name="",gnd="",prd="",qty="",price="",dis="",total="",net="",msg="";
            
            
            if(request.getParameter("submit")!=null)
            {
                name=request.getParameter("txtName");
                gnd=request.getParameter("rdoGnd");
                
                prd=request.getParameter("product");
                qty=request.getParameter("txtQty");
                
                
                //Price
                
                if(prd.equals("Select Product"))
                {
                    price="You can not select any product";
                }
                else if(prd.equals("Pen"))
                {
                    price="5";
                }
                else if(prd.equals("Shampoo"))
                {
                    price="2";
                }
                else if(prd.equals("Shop"))
                {
                    price="8";
                }
                else if(prd.equals("Mouse"))
                {
                    price="170";
                }
                else if(prd.equals("Pad"))
                {
                    price="28";
                }
                else if(prd.equals("Keyboard"))
                {
                    price="240";
                }
                else if(prd.equals("Cover"))
                {
                    price="45";
                }
                else if(prd.equals("Notebook"))
                {
                    price="30";
                }
                else if(prd.equals("Pendrive"))
                {
                    price="340";
                }
                else if(prd.equals("File"))
                {
                    price="15";
                }
                else if(prd.equals("DVD"))
                {
                    price="20";
                }
                else
                {
                    price=("Please Select Product");
                }
                
                
                //Total
                if(prd.equals("Select Product"))
                {
                    total="You can not select any product";
                }
                else if(prd.equals("Pen"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*5));
                }
                else if(prd.equals("Shampoo"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*2));
                }
                else if(prd.equals("Shop"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*8));
                }
                else if(prd.equals("Mouse"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*170));
                }
                else if(prd.equals("Pad"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*28));
                }
                else if(prd.equals("Keyboard"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*240));
                }
                else if(prd.equals("Cover"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*45));
                }
                else if(prd.equals("Notebook"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*30));
                }
                else if(prd.equals("Pendrive"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*340));
                }
                else if(prd.equals("File"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*15));
                }
                else if(prd.equals("DVD"))
                {
                    total=String.valueOf((Integer.parseInt(qty)*20));
                }
                else
                {
                    total=("Please Select Product");
                }
                
                
                //Discount
                if(Integer.parseInt(total)>=2000)
                {
                    dis=("<span style='color:red;'>You Have a 25 % discount</span>");
                }                
                else if(Integer.parseInt(total)>=800)
                {
                    dis=("<span style='color:green;'>You Have a 20 % discount</span>");
                }
                else if(Integer.parseInt(total)>=600)
                {
                    dis=("<span style='color:blue;'>You Have a 15 % discount</span>");
                }
                else if(Integer.parseInt(total)>=400)
                {
                    dis=("<span style='color:darkred;'>You Have a 10 % discount</span>");
                }
                else if(Integer.parseInt(total)>=200)
                {
                    dis=("<span style='color:purple;'>You Have a 5 % discount</span>");
                }
                else if(Integer.parseInt(total)>=100)
                {
                    dis=("You Don't Have a discount");
                }
                else
                {
                    dis=("You Don't Have a discount");
                }
                //Net Price
                if(Integer.parseInt(total)>=2000)
                {
                    net=String.valueOf((Integer.parseInt(total)-(Integer.parseInt(total)*25)/100));
                }
                else if(Integer.parseInt(total)>=2000)
                {
                    net=String.valueOf((Integer.parseInt(total)-(Integer.parseInt(total)*25)/100));
                }
                else
                {
                    net=total;
                }
                
                //this is a shopping msg
                if(gnd.equals("male"))
                {
                    msg=("Thank You for Shopping Mr. " + name + " Goodluck");
                }
                else if(gnd.equals("female"))
                {
                    msg=("Thank You for Shopping Miss. " + name + " Goodluck");
                }
                else
                {
                    out.print("<script>alert('Please Select Gender');</script>");
                }
                
                
            }
        %>
        
    <center>    
        <h1>Shopping System</h1>
    
        <form method="post">
            <table>
                <tr>
                    <td>
                        Customer Name                        
                    </td>
                    <td>
                        <input type="text" name="txtName" value="<%=name%>">
                    </td>
                </tr>
                <tr>
                    <td>
                        Gender                        
                    </td>
                    <td>
                        <input type="radio" value="male" name="rdoGnd">Male
                        <input type="radio" value="female" name="rdoGnd">Female
                    </td>
                </tr>
                <tr>
                    <td>
                        Select Product                        
                    </td>
                    <td>
                        <select name="product">
                            <option name="Select Product" value="Select Product">Select Product</option>
                            <option name="pen" value="Pen">Pen</option>
                            <option name="shampoo" value="Shampoo">Shampoo</option>
                            <option name="shop" value="Shop">Shop</option>
                            <option value="Mouse">Mouse</option>
                            <option value="Pad">Pad</option>
                            <option value="Keyboard">Keyboard</option>
                            <option value="Cover">Cover</option>
                            <option value="Notebook">Notebook</option>
                            <option value="pendrive">Pendrive</option>
                            <option value="File">File</option>
                            <option value="DVD">DVD</option>
                        </select>
                    </td>
                </tr> 
                <tr>
                    <td>
                        Enter Quntity                        
                    </td>
                    <td>
                        <input type="text"  name="txtQty" value="<%=qty%>">
                    </td>
                </tr>               
                
                
                <tr>
                    <td>
                          
                    </td>
                    <td>
                        <input type="submit" value="submit" name="submit">
                    </td>
                </tr>
                               
            </table>
            
            <h3>Shopping Bill</h3>
              
            
            <table>
                <tr>
                    <td>
                        Product                        
                    </td>
                    <td>
                        <label><%=prd%></label>
                    </td>
                </tr>     
                <tr>
                    <td>
                        Price                        
                    </td>
                    <td>
                        <label><%=price%></label>
                    </td>
                </tr>             
                <tr>
                    <td width="25%">
                        Total                        
                    </td>
                    <td width="25%">
                        <label><%=total%></label>
                    </td>
                    <td width="50%"><b><%=dis%></b></td>
                </tr>               
                <tr>
                    <td>
                        Net Price                        
                    </td>
                    <td>
                        <label><%=net%></label>
                    </td>
                </tr>  
            </table>
            </br>
                    <h5>
                        <b>
                            <label><%=msg%></label>                     
                        </b>
                   <h5>
        </form>
        </center>
    </body>
</html>
