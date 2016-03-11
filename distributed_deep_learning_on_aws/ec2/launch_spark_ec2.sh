. ./spark_ec2_config.sh
./spark-ec2 --key-pair=${EC2_KEY} --identity-file=${EC2_PEM_FILE} \
                --region=${EC2_REGION} --zone=${EC2_ZONE} \
                --ebs-vol-size=50 \
                --instance-type=${EC2_INSTANCE_TYPE} \
                --master-instance-type=m4.xlarge \
                --ami=${AMI_IMAGE}  -s ${SPARK_WORKER_INSTANCES} \
                --spot-price ${EC2_MAX_PRICE} \
                --copy-aws-credentials \
                --hadoop-major-version=yarn --spark-version 1.6.0 \
                --no-ganglia \
                --user-data cloud-config.txt \
                launch ${SPARK_CLUSTER_NAME}
