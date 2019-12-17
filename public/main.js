let signupModal = document.getElementById('splash-text')
let solicit = document.getElementById('solicit-phone-number')
let sendMsg = document.getElementById('btn')
let dismiss = document.getElementById('dismiss-btn')

sendMsg.addEventListener('click', (e) => {
    e.preventDefault()
    const name = document.getElementById('name-input')
    const input = document.getElementById('phone-number')
    solicit.style.display = 'none'
    signupModal.innerHTML =
        `<h1>HI ${name.value.toUpperCase()}</h1>
        <h1>WELCOME TO WAKE 'N' BAKERY</h1>
        <h2>WE'RE YOUR QUALITY MEDICAL CANNABIS INFUSED PASTRY SHOP</h2>
        `
        
        if (!input.value.includes('@')){
        (async () => {
            console.log(input.value)
            let form = new FormData()
            form.append('user_name', name.value)
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
            form.append('user_name', name.value)
            let req = await fetch('/email', { method: 'POST', body: form })
            console.log(req)
        })()
    }
})

dismiss.addEventListener('click', (e) => {
    e.preventDefault()
    signupModal.style.display='none'
})
