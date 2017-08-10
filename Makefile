# Used for Map Matching
checkstyle:
	cd osrm-text-instructions; ./gradlew checkstyle

test-java:
	cd osrm-text-instructions; ./gradlew :libjava-osrm-instructions:test

build-release-java:
	cd osrm-text-instructions; ./gradlew :libjava-osrm-instructions:assemble

javadoc:
	# Java modules
	# Output is in ./mapbox/*/build/docs/javadoc
	cd osrm-text-instructions; ./gradlew :libjava-osrm-instructions:javadocGeneration

publish-java:
	cd osrm-text-instructions; ./gradlew :libjava-osrm-instructions:uploadArchives

publish-local:
	# This publishes to ~/.m2/repository/com/mapbox/mapboxsdk
	cd osrm-text-instructions; ./gradlew :libjava-osrm-instructions:install

dex-count:
# TODO Setup

libosrm:
	rm -rf osrm-text-instructions/libjava-osrm-instructions/src/main/resources/translations osrm-text-instructions/libjava-osrm-instructions/src/test/fixtures/osrm/v5
	mkdir -p osrm-text-instructions/libjava-osrm-instructions/src/main/resources/translations osrm-text-instructions/libjava-osrm-instructions/src/test/fixtures/osrm/v5
	cp -R ../osrm-text-instructions/languages/translations/* osrm-text-instructions/libjava-osrm-instructions/src/main/resources/translations
	cp -R ../osrm-text-instructions/test/fixtures/v5/* osrm-text-instructions/libjava-osrm-instructions/src/test/fixtures/osrm/v5
