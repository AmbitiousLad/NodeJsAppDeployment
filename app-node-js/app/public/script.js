document.getElementById('userForm').addEventListener('submit', async function(e) {
  e.preventDefault();

  const name = document.getElementById('name').value.trim();
  const email = document.getElementById('email').value.trim();

  if (!name || !email) return alert('Both fields are required');

  const res = await fetch('/users', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ name, email })
  });

  const msg = await res.text();
  alert(msg.includes('successfully') ? 'User added!' : 'Error: ' + msg);

  document.getElementById('userForm').reset();
});

document.getElementById('loadUsers').addEventListener('click', async function () {
  const list = document.getElementById('userList');
  list.innerHTML = 'Loading...';

  const res = await fetch('/users');
  const users = await res.json();

  list.innerHTML = '';
  users.forEach(u => {
    const li = document.createElement('li');
    li.textContent = `${u.name} (${u.email})`;
    list.appendChild(li);
  });
});

