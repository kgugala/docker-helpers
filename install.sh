cat << EOF

# Added by docker_helpers
if [ -f $(realpath docker_helpers) ]; then
	source $(realpath docker_helpers)
fi

EOF
