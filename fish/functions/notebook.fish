function notebook
    echo "running jupyter notebook at http://localhost:8888/tree"
    echo "press ^C to terminate"

    jupyter notebook --no-browser --notebook-dir='~' -y &> /dev/null
end
