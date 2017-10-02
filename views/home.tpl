<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <title>Keyword Catalog</title>
</head>
<body class="bg-faded">
  <div class="container mt-3">
    <form method="POST">
      <input type="text" id="string" name="string" class="form-control" placeholder="ENTER STRING">
    </form>
  </div>
  %if kwdict and words:
    <div class="container mt-3">
      <table class="table table-inverse">
        <thead>
          <tr>
            <th>Keyword</th>
            <th>Count</th>
          </tr>
        </thead>
        <tbody>
          %for word in words:
            <tr>
              <td>{{word}}</td>
              <td>{{kwdict[word]}}</td>
            </tr>
          %end
        </tbody>
      </table>
    </div>
  %end
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
