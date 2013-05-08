<html>

    <body>
    This is classes::index.gsp<br/>


   <table>
   <thread>
   <tr>
   <td> Course Name</td>
   <td> Class ID</td>
   <td> Instructor Name</td>
   </tr>
   </thread>
   <tbody>
   <g:each in ="${classes}" var="C">
   <tr>
    <td>${c.courseName}</td>
    <td>${c.courseID}</td>
    <td>${c.instructorName}</td>
    </tr>
    </g:each>
    </tbody>
    </table>

    </body>


</html>

