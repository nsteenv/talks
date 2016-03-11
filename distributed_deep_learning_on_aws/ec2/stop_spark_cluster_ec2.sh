. ./spark_ec2_config.sh
./spark-ec2 --key-pair=${EC2_KEY} --identity-file=${EC2_PEM_FILE} \
                --region=${EC2_REGION} --zone=${EC2_ZONE} \
                destroy ${SPARK_CLUSTER_NAME}
