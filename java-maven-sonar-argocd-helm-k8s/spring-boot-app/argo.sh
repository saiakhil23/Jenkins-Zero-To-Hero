git config user.email "saiakhil.xyz@gmail.com"
git config user.name "sai akhil"
BUILD_NUMBER=${BUILD_NUMBER}
sed -i "s/replaceImageTag/${BUILD_NUMBER}/g" java-maven-sonar-argocd-helm-k8s/spring-boot-app-manifests/deployment.yml
git add java-maven-sonar-argocd-helm-k8s/spring-boot-app-manifests/deployment.yml
git commit -m "Update deployment image to version ${BUILD_NUMBER}"
git push https://${GITHUB_TOKEN}@github.com/${GIT_USER_NAME}/${GIT_REPO_NAME} HEAD:main                   
