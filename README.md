```markdown
# Node.js + MySQL CRUD App with Kubernetes

This project demonstrates how to deploy a simple Node.js application connected to a MySQL database using **Kubernetes**.

---

## 🧱 Project Structure

```
.
├── app-node-js/
│   ├── index.js
│   ├── package.json
│   ├── Dockerfile
│   ├── db.sql
├── k8sDeploy/
│   ├── db-deployment.yaml
│   ├── db-service.yaml
│   ├── app-deployment.yaml
│   ├── app-service.yaml
│   ├── mysql-init-configmap.yaml
├── README.md
```

---

## 🚀 Technologies Used

- Node.js (Express)
- MySQL
- Docker
- Kubernetes (Minikube or GKE)
- ConfigMap for MySQL user initialization

---

## 🐳 Dockerize the Node.js App

1. Create a `Dockerfile`:

```dockerfile
FROM node:18
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```

2. Build the Docker image:

```bash
docker build -t user-app .
```

---

## ☸️ Kubernetes Setup

### Step 1: Deploy MySQL

**File:** `k8sDeploy/db-deployment.yaml`

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mysql
spec:
  replicas: 1
  selector:
    matchLabels:
      app: mysql
  template:
    metadata:
      labels:
        app: mysql
    spec:
      containers:
        - name: mysql
          image: mysql:8
          env:
            - name: MYSQL_ROOT_PASSWORD
              value: password
            - name: MYSQL_DATABASE
              value: usersdb
          ports:
            - containerPort: 3306
          volumeMounts:
            - name: initdb
              mountPath: /docker-entrypoint-initdb.d
      volumes:
        - name: initdb
          configMap:
            name: mysql-init
```

### Step 2: Create ConfigMap to Add a New MySQL User

**File:** `k8sDeploy/mysql-init-configmap.yaml`

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: mysql-init
data:
  init.sql: |
    CREATE USER 'newuser'@'%' IDENTIFIED BY 'newpassword';
    GRANT ALL PRIVILEGES ON usersdb.* TO 'newuser'@'%';
    FLUSH PRIVILEGES;
```

Apply ConfigMap:

```bash
kubectl apply -f k8sDeploy/mysql-init-configmap.yaml
```

---

### Step 3: Create MySQL Service

**File:** `k8sDeploy/db-service.yaml`

```yaml
apiVersion: v1
kind: Service
metadata:
  name: mysql-service
spec:
  selector:
    app: mysql
  ports:
    - port: 3306
      targetPort: 3306
```

---

### Step 4: Deploy Node.js App

**File:** `k8sDeploy/app-deployment.yaml`

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: node-app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: node-app
  template:
    metadata:
      labels:
        app: node-app
    spec:
      containers:
        - name: node-app
          image: <your-dockerhub-username>/user-app
          ports:
            - containerPort: 3000
          env:
            - name: DB_HOST
              value: mysql-service
            - name: DB_USER
              value: newuser
            - name: DB_PASSWORD
              value: newpassword
            - name: DB_NAME
              value: usersdb
```

Update the image name with your Docker Hub image.

---

### Step 5: Create Node.js Service

**File:** `k8sDeploy/app-service.yaml`

```yaml
apiVersion: v1
kind: Service
metadata:
  name: node-app-service
spec:
  type: LoadBalancer
  selector:
    app: node-app
  ports:
    - port: 3000
      targetPort: 3000
```

---

## 📦 Apply Kubernetes Configs

```bash
kubectl apply -f k8sDeploy/
```

---

## 🌐 Access the App

Get the Node.js service URL:

```bash
kubectl get svc node-app-service
```

Open in browser: `http://<external-ip>:3000`

---

## 🛠️ Notes

- Make sure the `users` table exists in `usersdb`. Use `db.sql` to create the table:

```sql
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255)
);
```

---

## 📤 Push to GitHub

```bash
git init
git remote add origin https://github.com/<your-username>/<repo-name>.git
git add .
git commit -m "Initial commit"
git push -u origin main
```

---

## ✅ Author

**Sanket Kumar Rout**  
GitHub: [@your-github](https://github.com/your-github)
```
