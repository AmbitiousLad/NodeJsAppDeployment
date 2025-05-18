rm -rf tls-demo/
ls
vi backend.yaml
kubectl apply -f backend.yaml
kubectl get pods
docker ps
clear
kubectl get pods
vi backend-service.yaml 
kubectl apply -f backend-service.yaml
kubectl get svc backend-service
kubectl run test-pod --rm -it --image=busybox -- /bin/sh
kubectl delete pod --all
kubectl delete svc --all
ls
clear
rm *.yaml
ls
vi deployment.yaml
kubectl apply -f deployment.yaml
vi clusterIpsvc.yaml
kubectl apply -f clusterIpsvc.yaml \
kubectl apply -f clusterIpsvc.yaml 
kubectl get svc myapp-service
kubectl get pods -o wide
kubectl delete pod backend-75db7d7c57-q4z9g   
kubectl get pods -o wide
kubectl get pods 
kubectl run test-pod --rm -it --image=busybox -- /bin/sh
kubectl delete pod -l app=myapp
kubectl get pods -o wide
kubectl run test-pod --rm -it --image=busybox -- /bin/sh
kubectl get endpoints
kubectl get endpoints myapp-service
ls
vi deployment.yaml 
vi deploy.yaml
ls
cat deployment.yaml 
vi deploy.yaml
kubectl create -f deploy.yaml 
kubectl apply -f clusterIpsvc.yaml 
kubectl get endpoints
cat clusterIpsvc.yaml 
cat deploy
cat deploy.yaml 
kubectl get deploy
kubectl delete deploy myapp12
rm deploy.yaml 
vi deploy.yaml
kubectl create -f deploy.yaml 
kubectl apply -f clusterIpsvc.yaml 
kubectl get deploy
kubectl get endpoints
kubectl delete deploy nginx-deployment
vi deploy.yaml 
kubectl create -f deploy.yaml 
kubectl apply -f clusterIpsvc.yaml 
kubectl get endpoints
kubectl run mytestpod1 --dry-run=client --image=httpd -o yaml
kubectl run mytestpod1 --dry-run=client --image=httpd -o yaml > mytestpod.yaml
ls
cat mytestpod.yaml 
kubectl explain pod
kubectl expose pod testpod --port=8080 --target-port=80 --name=service1
kubectl get pods
kubectl expose pod myapp-f5c8c7d75-zhtzw --port=8080 --target-port=80 --name=service1
kubectl get nodes -o wide
cat deploy.yaml 
cat clusterIpsvc.yaml 
vi clusterIpsvc.yaml 
kubectl apply -f clusterIpsvc.yaml 
kubectl get endpoints
kubectl get svc
kubectl get pods
kubectl delete svc --all
kubectl get svc
ls
cat deploy
cat deploy.yaml 
vi nginx-service.yaml
ls
kubectl get nginx-service.yaml 
kubectl create -f  nginx-service.yaml 
cat nginx-service.yaml 
vi nginx-service.yaml 
kubectl create -f  nginx-service.yaml 
vi nginx-service.yaml 
kubectl create -f  nginx-service.yaml 
vi nginx-service.yaml 
kubectl create -f  nginx-service.yaml 
kubectl get svc 
kubectl get nodes -o wide
kubectl get endpoints
kubectl get pods
kubectl get pods -o wide
curl https://104.197.181.128:31943/
curl http://104.197.181.128:31943/
gcloud container clusters get-credentials my-first-cluster-1 --zone us-central1-c --project inspired-terra-458104-d5
ls
rm *.yaml
ls
clear
vi rc_nginx.yaml
vi rs_nginx.yaml
kubectl apply -f rc_nginx.yaml
kubectl get rc
kubectl get pods -o wide
kubectl delete pod nginx-rc-2gb2s
kubectl get pods -o wide
kubectl delete -f rc_nginx.yaml
kubectl get pods -o wide
kubectl get rc
clear
vi deployment.yaml
kubectl create -f deployment.yaml 
kubectl get deploy
kubectl get pods
watch kubectl get rs,deploys,pods,endpoints,nodes
vi deployment.yaml 
kubectl create -f deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl describe deployment my-nginx
kubectl describe deployment nginx-deployment
kubectl rollout status deployment/nginx-deployment
kubectl rollout history deployment/nginx-deployment
kubectl rollout undo deployment/nginx-deployment
kubectl rollout status deployment/nginx-deploy
kubectl rollout status deployment/nginx-deployment
kubectl rollout history deployment/nginx-deploy
kubectl rollout history deployment/nginx-deployment
kubectl rollout undo deployment/nginx-deployment --to-revision=1
kubectl rollout undo deployment/nginx-deployment --to-revision=2
kubectl delete pod,deploy,svc,rs --all
kubectl get svc
clear
rm *.yaml
clear
ls
clear
kubectl create namespace dev
vi app.yaml
kubectl create -f app.yaml 
cat app.yaml 
vi app.yaml
kubectl create -f app.yaml 
clear
kubectl delete pod --all
kubectl delete pod --allclear
clear
kubectl create -f app.yaml --namespace=dev
kubectl get namespaces
kubectl get pods -n dev
vi demoemp1.yaml
kubectl create -f demoemp1.yaml 
vi demoemp1.yaml 
kubectl create -f demoemp1.yaml 
vi demoemp1.yaml 
kubectl create -f demoemp1.yaml 
kubectl exec -it pod1empty -- sh
docker ps
cat demoemp1.yaml 
rm demoemp1.yaml 
kubectl delete pod --all
vi demoemp.yaml
ls
vi demoEmp.yaml
kubectl create -f demoemp.yaml 
kubectl create -f demoEmp.yaml 
rm demoEmp.yaml 
vi emp.yaml
la
ls
vi emp.yaml
kubectl create -f emp.yaml 
docker ps
kubectl get pods
kubectl exec -it shared-volume-pod -c writer -- sh
kubectl exec -it shared-volume-pod -c reader -- sh
vi emp1.yaml
kubectl create -f emp1.yaml 
kubectl exec -it pod2-emptydir -c alpha -- sh
kubectl delete pod --all
rm *.yaml
kubectl delete pod --all
ls
cd /
ls
cd usr
ls
cdc ..
cd ..
ls
cd media
ls
vi hostpath1.yaml
ls
vi hostpath1.yaml
sudo vi hostpath1.yaml
kubectl create -f hostpath1.yaml 
sudo vi hostpath1.yaml
kubectl create -f hostpath1.yaml 
kubectl exec -it pod1-hostpath -c pod1-container -- sh
cat hostpath1.yaml 
kubectl get pods
kubectl describe pod pod1-hostpath
vi hostpath1.yaml 
sudo vi hostpath1.yaml
kubectl apply -f hostpath1.yaml 
cd /
ls
cd var
ls
cd tmp
ls
kubectl delete pod pod1-hostpath
kubectl apply -f hostpath1.yaml
ls
cd ..
ls
cd home
ls
cd g22051969/
ls
clear
ls
vi hostpath1.yaml
kubectl apply -f hostpath1.yaml 
kubectl exec -it pod1-hostpath -c pod1-container -- sh
vi hostpath2.yaml 
kubectl apply -f hostpath2.yaml 
kubectl exec -it pod2-hostpath -c pod2-container -- sh
kubectl get pods
kubectl describe pod pod2-hostpath
kubectl delete pod pod2-hostpath
vi hostpath
vi hostpath2.yaml 
kubectl apply -f hostpath2.yaml 
kubectl exec -it pod2-hostpath -c pod2-container -- sh
kubectl get pods
vi hostpath2.yaml 
kubectl delete pod pod2-hostpath
kubectl apply -f hostpath2.yaml 
kubectl get pods
vi hostpath2.yaml 
kubectl delete pod pod2-hostpath
kubectl apply -f hostpath2.yaml 
kubectl get pods
kubectl exec -it pod2-hostpath -c pod2-container -- sh
kubectl describe pod2-hostpath
kubectl describe pod pod2-hostpath
kubectl get pods
gcloud container clusters get-credentials my-first-cluster-1 --zone us-central1-c --project inspired-terra-458104-d5
rm *.yaml
ls
clear
vi app.js
cat app.js
vi mysqlPod.yaml
vi app.js 
vi mysqlsvc.yaml
vi appPod.yaml
vi appsvc.yaml
vi Dockerfile
docker build -t sanket245/dbapp:latest .
vi Dockerfile 
docker build -t sanket245/dbapp:latest .
docker push sanket245/dbapp:latest
docker login
docker logout
docker login -u sanket254 -p Sankalpa@123
docker login
docker push sanket245/dbapp:latest
kubectl apply -f manifests/mysql-pod.yamlkubectl apply -f manifests/mysql-pod.y
clear
ls
kubectl create -f mysqlPod.yaml 
kubectl create -f mysqlsvc.yaml 
kubectl create -f appPod.yaml 
kubectl create -f appsvc.yaml 
cat appsvc.yaml 
vi appsvc.yaml 
kubectl create -f appsvc.yaml 
kubectl get svc app-service
kubectl get nodes -o wide
kubectl describe app-service
kubectl describe svc app-service
kubectl describe pod node-pod
kubectl get po
kubectl describe pod node-app
docker run -dit --name app-container -p 3000:3000 sanket254/dbapp:latest
docker images
docker run -dit --name app-container -p 3000:3000 sanket254/dbapp
docker run -dit --name app-container -p 3000:3000 sanket245/dbapp
docker run -dit --name app-container -p 3001:3000 sanket245/dbapp
docker ps
docker ps -a
docker rm -f c7c7ad9ccb0a
ls
docker run -dit --name app-container -p 3001:3000 sanket245/dbapp
docker ps
docker ps -a
docker logs 1d87e877b2ef 
vi Dockerfile 
docker images
docker rmi sanket245/dbapp
docker rm -f 1d87e877b2ef
docker rmi sanket245/dbapp
docker images
history
docker build -t sanket245/dbapp:latest .
docker images
docker run -dit --name app-container -p 3001:3000 sanket245/dbapp
docker ps
docker logs bff0c2ffe0c3   
kubectl delete pods , svc --all
kubectl delete pod  svc --all
kubectl delete pods --all
kubectl delete svc --all
gcloud container clusters get-credentials my-first-cluster-1 --zone us-central1-c --project inspired-terra-458104-d5
clear
ls
rm *.yaml
ls
rm *.js Dockerfile 
ls
mkdir app-node-js
cd app-node-js/
mkdir app
cd app
ls
vi index.js
vi package.json
vi Dockerfile
docker build -t sanket245/dbapp:latest .
docker images
docker push sanket245/dbapp:tagname
docker push sanket245/dbapp:latest
cd ..
cd k8sDeployment
mkdir k8sDeploy
cd k8sDeploy/
vi app-deployment.yaml
mv app-deployment.yaml db-deployment.yaml
ls
vi db-service.yaml
vi app-deployment.yaml
vi app-service.yaml
ls
cleaf
clear
kubectl create -f db-deployment.yaml 
kubectl create -f db-service.yaml 
kubectl run mysql-client --image=mysql:8 -it --rm --restart=Never -- bash
clear
kubectl apply -f app-deployment.yaml 
kubectl apply -f app-service.yaml.yaml 
kubectl apply -f app-service.yaml 
kubectl get pods
kubectl describe pod node-app-69495b57c9-jht58
kubectl get pods
kubectl get svc node-service
curl http://34.121.208.105
curl http://34.121.208.105/users
curl -X POST http://34.121.208.105/users   -H "Content-Type: application/json"   -d '{"name": "Sanket", "email": "sanket@example.com"}'
cd ..
ls
cd app/
ls
vi index.html
tree
hostname
sudo apt install tree
tree
cd ..
tree
cd app-node-js/
cd app
mkdir public
ls
cd puq
cd pu
cd public/
ld
vi index.html
vi style.css
vi script.js
cd ..
ls
rm Dockerfile 
vi Dockerfile
docker build -t sanket245/dbapp:v1 .
docker push sanket245/dbapp:v1
ls
cd ..
ls
cd k8sDeploy/
l
vi app-deployment.yaml 
kubectl watch get po svc deploy node rs
watch kubectl get po svc deploy node rs
watch kubectl get po ,svc , depoy ,rs
watch kubectl get pods
watch kubectl get po,svc,deploy,rs -n mynamespace
kubectl apply -f app-deployment.yaml 
kubectl restart svc app-service
kubectl rollout restart deployment app-deployment
kubectl get deploy
kubectl delete deploy node-app
kubectl delete svc node-service
cat app-deployment.yaml 
kubectl apply -f app-deployment.yaml 
kubectl apply -f app-service.yaml 
kubect; delete deploy node-app
kubectl delete deploy node-app
ls
kubectl delete svc node-service
l
ls
cd ..
cd app/
ls
rm index.js
vi index.js
rm package.json 
vi package.json
cat package.json 
docker build -t sanket245/dbapp:v2 .
docker push  sanket245/dbapp:v2 
cd ..
cd k8sDeploy/
ls
vi app-
vi app-deployment.yaml 
kubectl create -f app-deployment.yaml 
kubectl create -f app-service.yaml 
kubectl describe pod node-app-69fc59c48d-dwpkr
kubectl logs node-app-69fc59c48d-dwpkr
kubectl exec -it mysql-b45cf6d9c-crpj9 -- mysql -u root -p
kubectl delete pod mysql-b45cf6d9c-crpj9
kubectl exec -it mysql-b45cf6d9c-p2624 -- mysql -u root -p password
kubectl delete deploy node-app-69fc59c48d
kubectl delete deploy node-app
kubectl delete svc  node-service
cd app-node-js/
cd k8sDeploy/
kubectl apply -f app-deployment.yaml 
kubectl apply -f app-service.yaml 
kubectl logs node-app-69fc59c48d-pmlcs
kubectl exec -it mysql-b45cf6d9c-p2624 -- mysql -u root -p 
cd .
cd..
ls
cd app
cat index.js 
vi index.js 
ls
docker build -t sanket245/dbapp:v3 .
kubectl delete deploy node-app
kubectl delete svc node-service
cd ..
cd k8sDeploy/
l
ls
vi app-deployment.yaml 
kubectl create -f app-deployment.yaml 
kubectl create -f app-service.yaml 
docker push  sanket245/dbapp:v3 
kubectl delete deploy node-app
kubectl delete svc node-service
kubectl create -f app-deployment.yaml 
kubectl logs node-app-78b79b6d5-589wc
cd ..
cd app
ls
cat package.json
rm package.json 
vi package.json
rm Dockerfile
vi Dockerfile
ls
docker build -t sanket245/dbapp:v4 .
docker push sanket245/dbapp:v4 
cd ..
cd k8sDeploy/
vi app-deployment.yaml 
kubectl delete deploy node-app
kubectl create -f app-deployment.yaml 
kubectl create -f app-service.yaml 
curl http://34.121.208.105
kubectl logs node-app-59f6976f94-vkwfl
ls'
ls
ls
clear
cat app-deployment.yaml 
cd ..
cd k8sDeploy/
cat db-deployment.yaml 
cat db-service.yaml 
gcloud container clusters get-credentials my-first-cluster-1 --zone us-central1-c --project inspired-terra-458104-d5
kubectl get svc
kubectl get deploy
kubectl get endpoints
watch kubectl get pods ,svc, deploy,rs
ls
git init
git status
git remote add origin https://github.com/AmbitiousLad/NodeJsAppDeployment.git
