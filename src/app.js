const $ethbutton = document.querySelector('.enableEthereumButton')

if (typeof window.ethereum !== 'undefined') {
    console.log('MetaMask is installed!');
  }


$ethbutton.addEventListener('click', () => {
    getAccount()
})

async function getAccount() {
    const accounts = await ethereum.request({ method: 'eth_requestAccounts' })
    const account = accounts[0]
    console.log(account)
}