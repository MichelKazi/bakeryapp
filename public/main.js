let signupModal = document.getElementById('splash-text')
let solicit = document.getElementById('solicit-phone-number')
let sendMsg = document.getElementById('btn')
let logo = document.getElementById('logo')
let navInfo = document.getElementById('nav-info')
let intersect = document.getElementById('intersection-point')
let nav = document.getElementById('navbar')
let navMenu = document.getElementById('nav')

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

let resizer = new IntersectionObserver((entries) => {
    const [el] = entries
    if (el.isIntersecting) {
       
           logo.style.transform = 'scale(.75)'
           navInfo.style.borderBottom = ''
            navInfo.style.height = '15.25vh'
           nav.style.height = '18.75vh'
           nav.style.transform = 'scale(1.25)'
           
           console.log("intersection point is in the viewport!");
        } else {
            
            logo.style.transform = 'scale(.65)'
            navInfo.style.height = '12.25vh'
            nav.style.height = '15.75vh'
            nav.style.transform = ''
            
        console.log("intersection point is not in the viewport!");
    }
})
resizer.observe(intersect)
