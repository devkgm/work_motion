console.log("ddddd")
let checks = document.getElementsByClassName("check");
let createbtn = document.getElementById("createbtn");
let department_id = document.getElementById("department_id");
let member_id = document.getElementsByClassName("member_id");
let deletebtn = document.getElementById("deletebtn");
createbtn.addEventListener("click", function(){

   let num =[];
   for(let i = 0; i<checks.length;i++){
    if(checks[i].checked){
        num.push(member_id[i].value)
    }}
    console.log()
    let json={
        id : num,
        department_id : department_id.value
    }

    aa = JSON.stringify(json)
    console.log(aa)
        fetch("/department/updateMember",{

            method:"POST",
            headers:{
                "Content-type":"application/x-www-form-urlencoded;charset=UTF-8"
            },
            body:"department_id="+department_id.value+"&id="+num
        })
        .then(r =>r.text())
        .then(re =>{
        
            if(re>0){
                alert("사원 추가 성공했습니다")
            }else{
                alert("사원 추가 실패했습니다")
            }
            location.href="/department/detail?id="+department_id.value;
        })





})

deletebtn.addEventListener("click", function(){

    let num =[];
    for(let i = 0; i<checks.length;i++){
     if(checks[i].checked){
         num.push(member_id[i].value)
     }}
     console.log()
     let json={
         id : num,
         department_id : department_id.value
     }
 
     aa = JSON.stringify(json)
     console.log(aa)
         fetch("/department/deleteMember",{
 
             method:"POST",
             headers:{
                 "Content-type":"application/x-www-form-urlencoded;charset=UTF-8"
             },
             body:"department_id="+department_id.value+"&id="+num
         })
         .then(r =>r.text())
         .then(re =>{
         
             if(re>0){
                 alert("사원 삭제 성공했습니다")
             }else{
                 alert("사원 삭제 실패했습니다")
             }
             location.href="/department/detail?id="+department_id.value;
         })
 
 
 
 
 
 })