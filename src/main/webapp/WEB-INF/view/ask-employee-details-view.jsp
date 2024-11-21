<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
<body>

<h2>Dear Employee, Please enter your details</h2>

<br>
<br>

<%--@elvariable id="employee" type="ru.andrey.vasilev.spring.mvc.Employee"--%>
<form:form action="showDetails" modelAttribute="employee" method="get">
    Name <form:input path="name"/>
    <form:errors path="name" cssStyle="-webkit-text-fill-color: red"/>
    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname" cssStyle="-webkit-text-fill-color: red"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary" cssStyle="-webkit-text-fill-color: red"/>
    <br><br>
    Department <form:select path="department">
<%--        <form:option value="Information Technology" label="IT"/>--%>
<%--        <form:option value="Human resources" label="HR"/>--%>
<%--        <form:option value="Sales" label="Sales"/>--%>
        <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>
    Which car do you want?
<%--    BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--    Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--    Lexus <form:radiobutton path="carBrand" value="Lexus"/>--%>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
    Foreign language(s)
<%--    EN <form:checkbox path="languages" value="Englihs"/>--%>
<%--    DE <form:checkbox path="languages" value="Deutch"/>--%>
<%--    FR <form:checkbox path="languages" value="French"/>--%>
    <form:checkboxes path="languages" items="${employee.languageMap}"/>
    <br><br>
    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber" cssStyle="-webkit-text-fill-color: red"/>
    <br><br>
    Email <form:input path="email"/>
    <form:errors path="email" cssStyle="-webkit-text-fill-color: red"/>
    <br><br>
    <input type="submit" value="OK"/>
</form:form>

</body>
</html>
