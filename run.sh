#! /bin/bash
echo start | terminal-notifier

while :
do
terraform apply -auto-approve -var-file=vars.tfvars
if [ $? != 1 ]; then
  break
fi
echo repeat | terminal-notifier
sleep 300
done

echo end | terminal-notifier