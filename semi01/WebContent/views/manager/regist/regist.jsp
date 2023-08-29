<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
  <style>
    div{box-sizing: border-box;}
    body{
      font-family: 'Jua', sans-serif;
    }
    #goodsform input[type="text"], #goodsform input[type="number"]{
        border: none;
        border-radius: 5px;
        height: 30px;
        width: 89%;
    }
    #bts3{
        display: block;
        width: 20%;
        height: 50px;
        margin-top: 55px;
        background-color: rgb(171, 187, 199);
        border: none;
        border-radius: 5px;
        font-size: 15px;
        font-weight: bold;
        margin: auto;
        margin-top: 62px;
    }
    #bts3:hover{
        background-color: darkgray;
        cursor: pointer;
    }
    tr{
        height: 50px;
    }
    td{
        padding: 0px;
        font-size: 15px;
        font-weight: bold;
    }
    table{
        width: 50%;
    }
    #container{
        display: flex;
    }
    .custom-file-input {
    visibility: hidden; /* �⺻ ���� ���� ��ư ���� */
    display: none;
    width: 0;
    height: 0;
    }
    .custom-file-label {
    background-color:#ABBBC7;
    display: block;
    width: 10%;
    border:none;
    padding: 6px 12px;
    cursor: pointer;
    font-weight: bold;
    border-radius: 5px;
    margin-top: 11px;
    height: 21px;
    text-align: center;
    line-height: 1.5;
    }
    #filePath1, #filePath2, #filePath3, #filePath4, #filePath5, #filePath6{
        display: block;
        width: 56%;
        margin-top: 11px;
        margin-left: 14px;
    }
    #imageDisplay{
        margin-left: 76px;
        margin-top: 20px;
        width: 300px;
        height: 292px;
        background-color: white;
        position: relative;
        border-radius: 5px;
    }
    img{
        display: block;
        width: 300px;
        height: 292px;
        border-radius: 5px;
    }
    #text{
        text-align: center;
        top:109px;
        left:110px;
        position:absolute;
    }
    #date1, #span1, #date2{
        display: block;
    }
    input[type="date"]{
        width: 144px;
        border: none;
        border-radius: 5px;
        height: 30px;
        width: 42%;
        font-weight: bold;
    }
    .labels{
        font-size: 13px;
    }
    .sel101{
        border: none;
        display: block;
        width: 100px;
        height: 30px;
        border-radius: 5px;
        font-weight: bold;
    }
    #tb9 td{
    	text-align: left;
    }
  </style>
</head>
<body>
  <form action="" method="post" id="goodsform" style="margin-left: 38px;">
    <div id="container" style="margin-top: 13px;">
        <table id="tb9">
            <tr>
                <td>ī�װ�</td>
                <td style="display: flex; margin-top: 10px;">
                    <select id="selects1" class="sel101" style="margin-right: 13px; font-family: 'Jua', sans-serif;">
                        <option value="movie">��ȭ</option>
                        <option value="display">����</option>
                        <option value="show">����</option>
                    </select>
                    <select id="selects2" class="sel101" style="font-family: 'Jua', sans-serif;">
                        <option value="1">�θǽ�</option>
                        <option value="2">����/������</option>
                        <option value="3">�ڹ̵�</option>
                        <option value="4">�׼�</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td style="width: 23%;">����</td>
                <td>
                    <input type="text" name="title" id="title" placeholder="������ �Է��Ͻÿ�" style="font-family: 'Jua', sans-serif;">
                </td>
            </tr>
            <tr>
                <td>����</td>
                <td>
                    <select id="selects3" class="sel101" style="font-family: 'Jua', sans-serif;">
                        <option value="1">����</option>
                        <option value="2">���/��õ</option>
                        <option value="3">��û/����</option>
                        <option value="4">�뱸/���</option>
                        <option value="5">����/����</option>
                        <option value="6">����</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>���ּ�</td>
                <td>
                    <input type="text" name="place" id="place" placeholder="���ּҸ� �Է��Ͻÿ�" style="font-family: 'Jua', sans-serif;">
                </td>
            </tr>
            <tr>
                <td>�����ð�(��)</td>
                <td>
                    <input type="number" name="time" id="time" placeholder="�����ð��� �Է��Ͻÿ�" style="width: 150px; font-family: 'Jua', sans-serif;">
                </td>
            </tr>
            <tr>
                <td>�Ⱓ</td>
                <td style="display: flex; margin-top: 9px;">
                    <input type="date" name="date1" id="date1" style="font-family: 'Jua', sans-serif;">
                    <span id="span1" style="line-height: 2.5;">&nbsp;~&nbsp;</span>
                    <input type="date" name="date2" id="date2" style="font-family: 'Jua', sans-serif;">
                </td>
            </tr>
            <tr>
                <td>�ð�</td>
                <td>
                    <select id="select1" class="sel101" style="font-family: 'Jua', sans-serif;">
                        <option value="1">����</option>
                        <option value="2">����</option>
                        <option value="3">��ü</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>�������</td>
                <td>
                    <select id="select1" class="sel101" style="font-family: 'Jua', sans-serif;">
                        <option value="1">��ü</option>
                        <option value="2">7</option>
                        <option value="3">12</option>
                        <option value="4">15</option>
                        <option value="5">19</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>����</td>
                <td>
                    <input type="number" name="price" id="price" placeholder="������ �Է��Ͻÿ�" style="width: 150px; font-family: 'Jua', sans-serif;">
                </td>
            </tr>
            <tr>
                <td>�¼���</td>
                <td>
                    <input type="number" name="price" id="price" placeholder="�¼����� �Է��Ͻÿ�" style="width: 150px; font-family: 'Jua', sans-serif;">
                </td>
            </tr>
        </table>
        <div style="width: 50%; margin-top: 52px;">
            <div style="display: flex;">
                <label class="custom-file-label" for="customFile1" style="margin-left: 50px;">
                    ������
                </label>
                <input type="file" id="customFile1" class="custom-file-input">
                <input type="text" id="filePath1" placeholder="������ �����Ͻÿ�" style="width: 48%; font-family: 'Jua', sans-serif;">
            </div>
            <div style="display: flex; margin-top: 8px;">
                <label class="custom-file-label" for="customFile2" style="margin-left: 50px;">
                    ��1
                </label>
                <input type="file" id="customFile2" class="custom-file-input">
                <input type="text" id="filePath2" placeholder="������ �����Ͻÿ�" style="width: 48%; font-family: 'Jua', sans-serif;">
            </div>
            <div style="display: flex; margin-top: 8px;">
                <label class="custom-file-label" for="customFile3" style="margin-left: 50px;">
                    ��2
                </label>
                <input type="file" id="customFile3" class="custom-file-input">
                <input type="text" id="filePath3" placeholder="������ �����Ͻÿ�" style="width: 48%; font-family: 'Jua', sans-serif;">
            </div>
            <div style="display: flex; margin-top: 8px;">
                <label class="custom-file-label" for="customFile4" style="margin-left: 50px;">
                    ��3
                </label>
                <input type="file" id="customFile4" class="custom-file-input">
                <input type="text" id="filePath4" placeholder="������ �����Ͻÿ�" style="width: 48%; font-family: 'Jua', sans-serif;">
            </div>
            <div style="display: flex; margin-top: 8px;">
                <label class="custom-file-label" for="customFile5" style="margin-left: 50px;">
                    ��4
                </label>
                <input type="file" id="customFile5" class="custom-file-input">
                <input type="text" id="filePath5" placeholder="������ �����Ͻÿ�" style="width: 48%; font-family: 'Jua', sans-serif;">
            </div>
            <div style="display: flex; margin-top: 8px;">
                <label class="custom-file-label" for="customFile6" style="margin-left: 50px;">
                    ��5
                </label>
                <input type="file" id="customFile6" class="custom-file-input">
                <input type="text" id="filePath6" placeholder="������ �����Ͻÿ�" style="width: 48%; font-family: 'Jua', sans-serif;">
            </div>
        </div>
    </div>
    
    <button id="bts3" type="submit" style="font-family: 'Jua', sans-serif;">���</button>
</form>

<script>
    $(function(){
   	    $('#selects1').on('change', function() {
   	        var selectedValue = $(this).val();
   	        $.ajax({
   	            url: "manager-regist-selectbox.do",
   	            type: 'GET',
   	            data: {selectedValue:selectedValue},
   	            dataType: 'json',
   	            success: function(response) {
   	            $("#selects2").empty();
   	             response.forEach(item => {
   	            	$('#selects2').append($('<option>', {
   	                  value: item.categoryType,
   	                  text: item.categoryName
   	              }));
   	          });
   	                
   	            },
   	            error: function() {
   	                console.log("����");
   	            }
   	        });
   	    });
    	const imageInput1 = document.getElementById('customFile1');
        const imagePathInput1 = document.getElementById('filePath1');

        imageInput1.addEventListener('change', function(event) {
        const selectedFile = event.target.files[0]; // ������ ������ ���� ��������
            if (selectedFile) {
                const fileName = selectedFile.name;
                imagePathInput1.value = fileName; // �Է¶��� ��� ����
            }
        });

        const imageInput2 = document.getElementById('customFile2');
        const imagePathInput2 = document.getElementById('filePath2');

        imageInput2.addEventListener('change', function(event) {
        const selectedFile = event.target.files[0]; // ������ ������ ���� ��������
            if (selectedFile) {
                const fileName = selectedFile.name;
                imagePathInput2.value = fileName; // �Է¶��� ��� ����
            }
        });

        const imageInput3 = document.getElementById('customFile3');
        const imagePathInput3 = document.getElementById('filePath3');

        imageInput3.addEventListener('change', function(event) {
        const selectedFile = event.target.files[0]; // ������ ������ ���� ��������
            if (selectedFile) {
                const fileName = selectedFile.name;
                imagePathInput3.value = fileName; // �Է¶��� ��� ����
            }
        });

        const imageInput4 = document.getElementById('customFile4');
        const imagePathInput4 = document.getElementById('filePath4');

        imageInput4.addEventListener('change', function(event) {
        const selectedFile = event.target.files[0]; // ������ ������ ���� ��������
            if (selectedFile) {
                const fileName = selectedFile.name;
                imagePathInput4.value = fileName; // �Է¶��� ��� ����
            }
        });

        const imageInput5 = document.getElementById('customFile5');
        const imagePathInput5 = document.getElementById('filePath5');

        imageInput5.addEventListener('change', function(event) {
        const selectedFile = event.target.files[0]; // ������ ������ ���� ��������
            if (selectedFile) {
                const fileName = selectedFile.name;
                imagePathInput5.value = fileName; // �Է¶��� ��� ����
            }
        });

        const imageInput6 = document.getElementById('customFile6');
        const imagePathInput6 = document.getElementById('filePath6');

        imageInput6.addEventListener('change', function(event) {
        const selectedFile = event.target.files[0]; // ������ ������ ���� ��������
            if (selectedFile) {
                const fileName = selectedFile.name;
                imagePathInput6.value = fileName; // �Է¶��� ��� ����
            }
        });
    });
</script>
</body>
</html>