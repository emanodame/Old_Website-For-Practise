<!DOCTYPE html>
<html>
  <head>
    <title>Example 76</title>
  </head>
  <body>
    <h3>File Upload:</h3>
    Select a file to upload: <br />
    <form action="upload_file.jsp" method="post"
          enctype="multipart/form-data">
      <input type="file" name="file" size="50" />
      <br />
      <input type="submit" value="Upload File" />
    </form>
  </body>
</html>
