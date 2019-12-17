let signupModal = document.getElementById('splash-text')
let solicit = document.getElementById('solicit-phone-number')
let sendMsg = document.getElementById('btn')
let dismiss = document.getElementById('dismiss-btn')

sendMsg.addEventListener('click', (e) => {
    e.preventDefault()
    const input = document.getElementById('phone-number')
        
        if (!input.value.includes('@')){
        (async () => {
            console.log(input.value)
            let form = new FormData()
            let req = await fetch('/text', { method: 'POST', body: form })
            console.log(req)
        })()
    }
    else {
        (async () => {
            e.preventDefault()
            console.log(input.value)
            let form = new FormData()
            form.append('user_email', input.value) 
            let req = await fetch('/email', { method: 'POST', body: form })
            console.log(req)
        })()
    }
})

dismiss.addEventListener('click', (e) => {
    e.preventDefault()
    signupModal.style.display='none'
})
