<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>See Flights</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8fafc;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .form-container {
            max-width: 600px;
            margin: 80px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 6px 18px rgba(0,0,0,0.1);
        }
        .form-title {
            text-align: center;
            margin-bottom: 25px;
            font-weight: 700;
            color: #0d6efd;
        }
        .btn-submit {
            width: 100%;
            font-weight: 600;
            border-radius: 8px;
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2 class="form-title">✈ Search Flights</h2>
            <form action="listOfFlights" method="post">
         <%-- DropDown ke liye code neeche likha hai --%>
                <div class="mb-3">
                    <label for="source" class="form-label">Source</label>
                    <select name="source" id="source" class="form-select" required>
                        <option value="" disabled selected>Select Source</option>
                        <option>Delhi</option>
                        <option>Kanpur</option>
                        <option>Bengaluru</option>
                        <option>Noida</option>
                        <option>Rajasthan</option>
                        <option>Bengal</option>
                    </select>
                </div>

                <!-- Destination Dropdown kaa Code -->
                <div class="mb-3">
                    <label for="destination" class="form-label">Destination</label>
                    <select name="destination" id="destination" class="form-select" required>
                        <option value="" disabled selected>Select Destination</option>
                        <option>Delhi</option>
                        <option>Kanpur</option>
                        <option>Bengaluru</option>
                        <option>Noida</option>
                        <option>Rajasthan</option>
                        <option>Bengal</option>
                        <option>Agra</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary btn-submit">Search Flights</button>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
