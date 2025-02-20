const sendEmail = () => {
    emailjs.init('YJAC0lnVbgiuaC94v');
    let templateParams  = {
        name : document.getElementById('name').value,
        email : document.getElementById('email').value
        
    }
    console.log(templateParams);
    emailjs.send('recycle_project', 'template_sdbh5wd', templateParams)
		.then(function(response){
        console.log('Success!', response.status, response.text);
        setStatus('success');
    }, function(error){
        console.log('Failed...', error);
        setStatus('fail');
    })
}



