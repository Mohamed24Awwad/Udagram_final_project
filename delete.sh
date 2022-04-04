read -p "Are you sure you want to delete this stack? [yes|no] " answer
case $answer in 
    yes )
        echo "This stack will be removed shortly."
        aws cloudformation delete-stack \
        --stack-name $1 \
        --region=us-west-2 
        ;;

    * )
        echo "Keep this stack up and running."
        ;;
esac