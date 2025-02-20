
// 1. 전체 게시판 조회
const findAll = () => {
   let page = new URL( location.href ).searchParams.get('page');
   if( page == null){ page = 1; }
   let lno = new URL( location.href ).searchParams.get('lno');
      if( page == null){ page = 0; }
   
   fetch( `/recycle_project/board/view/lno?page=${ page }&lno=${ lno }` )
      .then( r => r.json() )
      .then( response => {
         let boardlist = document.querySelector('.boardlist > tbody');
         let html = '';
         
         response.data.forEach( board => {
            bdate = board.bdate.substr(0,10);
            
            if(lno == board.lno){
               html += `<tr>
                                    <td> ${ board.bno } </td>
                                    <td style="text-align: left;">
                                       <a href="view.jsp?bno=${ board.bno }">
                                          ${ board.btitle } 
                                       </a> 
                                    </td>
                                    <td> ${ board.mnickname } </td>
                                    <td> ${ bdate } </td>
                                    <td> ${ board.bpeople } </td>
                                    <td> ${ board.bview } </td>
                                    <td> ${ board.blike } </td>
                                 </tr>`;
            }else{
               html+= "텅"
            }
            
                  
         }) // for end
         boardlist.innerHTML = html;
         getPageBtn( response, "locationview" );
      }) // then end
      .catch( e => { console.log(e); } )
   
} // f end
findAll();



window.onload = function() {
        const params = new URLSearchParams(window.location.search);
        const lno = params.get('lno');  // URL에서 lno 값을 가져옴

        if (lno) {
            // lno 값에 해당하는 option을 선택
            const selectElement = document.getElementById('validationCustom04');
            for (let i = 0; i < selectElement.options.length; i++) {
                if (selectElement.options[i].value.includes(`lno=${lno}`)) {
                    selectElement.selectedIndex = i;  // 해당 option을 선택
                    break;
                }
            }
        }
    };