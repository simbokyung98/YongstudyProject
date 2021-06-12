<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url("https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&subset=devanagari,latin-ext");

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

body {
  background-color: #1b1c24;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}


.row {
  margin: 20px;
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
}
.row label {
  padding: 20px;
  cursor: pointer;
  display: flex;
}

.row label input[type="checkbox"] {
  display: none;
}

.row label .icon-box {
  position: relative;
  display: flex;
  width: 120px;
  padding: 20px;
  flex-direction: column;
  align-items: center;
  background-color: #353746;
  color: #fff;
  border-radius: 3px;
  font-size: 21px;
  transition: 0.5s;
  user-select: none;
}

.row label input[type="checkbox"]:checked ~ .icon-box {
  background: linear-gradient(138deg, #da2c4d, #f8ab37);
  color: #fff;
}

.row label .icon-box span {
  margin: 5px;
  font-size: 18px;
}

.container .btn {
  width: 130px;
  height: 40px;
  position: absolute;
  left: 550px;
  font-size: 16px;
  border: 0;
  outline: none;
  transition: 0.5s cubic-bezier(0.755, 0.05, 0.855, 0.06);
}
	
</style>
</head>
<body>
	  <div class="container">
      <div class="row">
        <label>
          <input type="checkbox" name="" />
          <div class="icon-box">
            <span>Health</span>
          </div>
        </label>
        <label>
          <input type="checkbox" name="" />
          <div class="icon-box">
            <span>Music</span>
          </div>
        </label>
        <label>
          <input type="checkbox" name="" />
          <div class="icon-box">
            <span> Movies </span>
          </div>
        </label>
        <label>
          <input type="checkbox" name="" />
          <div class="icon-box">
            <span>Books</span>
          </div>
        </label>

        <label>
          <input type="checkbox" name="" />
          <div class="icon-box">
            <span>Sports</span>
          </div>
        </label>

        <label>
          <input type="checkbox" name="" />
          <div class="icon-box">
            <span>Technology</span>
          </div>
        </label>
        <label>
          <input type="checkbox" name="" />
          <div class="icon-box">
            <span>Games</span>
          </div>
        </label>
      </div>
    </div>

</body>
</html>