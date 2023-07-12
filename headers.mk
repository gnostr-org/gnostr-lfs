jsmin:submodules
	@type -P gcc && gcc JS-Min/jsmin.c -o jsmin
#.ONESHELL:
headers:jsmin
	test -d jsmin || $(MAKE) jsmin
	$(PWD)/jsmin<$(PWD)/bee.js >bee.js.h
	$(PWD)/jsmin<$(PWD)/db.js >db.js.h
	$(PWD)/jsmin<$(PWD)/db_explore.js >db_explore.js.h
	$(PWD)/jsmin<$(PWD)/goodbye.js >goodbye.js.h
	$(PWD)/jsmin<$(PWD)/nostr_events.js >nostr_events.js.h
	$(PWD)/jsmin<$(PWD)/package.json >package.json.h
	$(PWD)/jsmin<$(PWD)/server.js >server.js.h
	$(PWD)/jsmin<$(PWD)/swarm.js >swarm.js.h
