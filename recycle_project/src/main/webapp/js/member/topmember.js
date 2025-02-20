const getMember = () => {


   const option = { method: 'GET' }
   fetch(`/recycle_project/admin/rank`, option)
      .then(r => r.json())
      .then(response => {
         if (response != null) {
            const tbody = document.querySelector('tbody');
            console.log(response)
            let html = ``;
            response.forEach((member, index) => {
               if(index==0){               
                  html += `<tr style="text-align: center; vertical-align: middle; height : 60px; padding : 0px -10px;">
                  <td> ${index + 1} </td>
                  <td> 🥇${member.mname.split('')[0]+" * "+member.mname.split('')[2]} </td>
                  <td> ${member.mnickname} </td>
                  <td> ${member.mpoint} </td>
                                    </tr>`
                  
               }else if(index==1){
                  html += `<tr style="text-align: center; vertical-align: middle; height : 60px; padding : 0px -10px; background-color : #f1f5f1;">
                                                         <td> ${index + 1} </td>
                                                         <td> 🥈${member.mname.split('')[0]+" * "+member.mname.split('')[2]} </td>
                                                         <td> ${member.mnickname} </td>
                                                         <td> ${member.mpoint} </td>
                                                      </tr>`
                  
               }else if(index==2){
                  html += `<tr style="text-align: center; vertical-align: middle; height : 60px; padding : 0px -10px;">
                                                         <td> ${index + 1} </td>
                                                         <td> 🥉${member.mname.split('')[0]+" * "+member.mname.split('')[2]} </td>
                                                         <td> ${member.mnickname} </td>
                                                         <td> ${member.mpoint} </td>
                                                      </tr>`
                  
               }else{   html += `<tr style="text-align: center; vertical-align: middle; height : 60px; padding : 0px -10px;">
                     <td> ${index + 1} </td>
                        <td> &nbsp;&nbsp;&nbsp;${member.mname.split('')[0]+" * "+member.mname.split('')[2]} </td>
                           <td>${member.mnickname} </td>
                           <td> ${member.mpoint} </td>
                           </tr>`}
               
            })
            tbody.innerHTML = html;
         }
      })
      .catch(e => { console.log(e) })
}
getMember();

