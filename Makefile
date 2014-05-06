PROJECT = oauth

ERLC_OPTS = -Werror +debug_info +warn_export_all +warn_export_vars +warn_shadow_vars +warn_obsolete_guard

PLT_APPS = hipe sasl mnesia crypto compiler syntax_tools
DIALYZER_OPTS = -Werror_handling -Wrace_conditions -Wunmatched_returns | fgrep -v -f ./dialyzer.ignore-warning
# -Wunderspecs

DEPS_DIR = ../../deps
DEPS = ibrowse

dep_ibrowse = https://github.com/goldensurfer/ibrowse 1.2

include erlang.mk
