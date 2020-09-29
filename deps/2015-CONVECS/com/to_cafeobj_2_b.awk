
# Hubert Garavel -- quick-and-dirty REC translator

# this script imports the SCRIPT variable

/^REC-SPEC / {
	# line = "REC-SPEC" <name>
	print "-- CAFEOBJ-B"
	print "mod! " $2 " {"
	MODULE_NAME = $2
}

/^SORTS$/,/^CONS$/ {
	if ($1 == "SORTS") {
		ORS = ""
		FIRST_SORT = 0
	} else if ($1 == "CONS") {
		ORS = "\n"
		if (FIRST_SORT == 1) {
			print "]"
		}
	} else {
		if (FIRST_SORT == 0) {
			print "  [ "
			FIRST_SORT = 1
		}
		print $0 " "
	}
}

/^CONS$/,/^OPNS$/ {
	if ($1 == "CONS") {
	} else if ($1 == "OPNS") {
	} else {
		print "  op " $0 " { constr }"
	}
} 

/^OPNS$/,/^VARS$/ {
	if ($1 == "OPNS") {
	} else if ($1 == "VARS") {
	} else {
		print "  op " $0
	}
} 

/^VARS$/,/^RULES$/ {
	# nothing (but free variables have been already taken into account
	# when building the SCRIPT file)
} 

/^RULES$/,/^EVAL$/ {
	if ($1 == "RULES") {
	} else if ($1 == "EVAL") {
		print "}"
	} else {
		CMD = "sh " SCRIPT
		PREMISS = index ($0, " if ")
		if (PREMISS == 0) {
			# normal equation
			print "  trans " $0 " ." | CMD
			close (CMD)
		} else {
			# conditional equation
			print "  ctrans " $0 " ." | CMD
			close (CMD)
		}
	}
}

/^EVAL$/,/^END-SPEC$/ {
	if ($1 == "EVAL") {
		print "select " MODULE_NAME " ."
	} else if ($1 == "END-SPEC") {
	} else {
		print "exec " $0 " ."
	}
}
