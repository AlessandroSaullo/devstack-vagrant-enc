#!/bin/sh
# DevStack extras script to install SEL-Daemon

if is_service_enabled sel-daemon; then
    if [[ "$1" == "source" ]]; then
        # Initial source
        source $TOP_DIR/lib/sel-daemon
	#elif [[ "$1" == "stack" && "$2" == "install" ]]; then
    #    echo_summary "Installing SEL-Daemon"
    #    install_sel-daemon
	#elif [[ "$1" == "stack" && "$2" == "post-config" ]]; then
    #    echo_summary "Configuring SEL-Daemon"
    #    configure_sel-daemon
    elif [[ "$1" == "stack" && "$2" == "extra" ]]; then
        echo_summary "Initializing SEL-Daemon"
        start_sel-daemon
    fi

    if [[ "$1" == "unstack" ]]; then
        stop_sel-daemon
    fi
fi
