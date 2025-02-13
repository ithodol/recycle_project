const findByMno = ()=>{
	const mno = new URL(location.href).searchParams.get('mno');
	
	const option={method:'GET'}
	fetch(`/recycle_project/admin/view?mno=${mno}`,option)
	.then(r=>r.json())
	.then(data=>{
		document.querySelector()
	})
}
findByMno();