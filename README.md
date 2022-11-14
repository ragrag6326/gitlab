# Gitlab CI/CD demo 示範包
  請先準備好 docker hub 帳號

##   .gitlab-ci.yml檔 修改注意事項
  
dockerac 修改成自己帳號
./dockerpass  (密碼打在這邊)

script:
- kubectl config use-context << devops/cicd:cicd >>

<< devops/cicd >>
注意這邊要放自己的 gitlab project 名稱

<< :cicd >>
這是 agent 的名稱

若是真的不知道可以在 pipeline script 加入來查詢
- kubectl config get-contexts
