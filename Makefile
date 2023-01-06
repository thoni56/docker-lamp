all: focal-7.4 focal-8.0 focal-8.1

focal-7.4:
	$(call LAMP,focal,7.4)

focal-8.0:
	$(call LAMP,focal,8.0)

focal-8.1:
	$(call LAMP,focal,8.1)

jammy-7.4:
	$(call LAMP,jammy,7.4)

jammy-8.0:
	$(call LAMP,jammy,8.0)

jammy-8.1:
	$(call LAMP,jammy,8.1)


define LAMP
	UBUNTU=$(1) PHP=$(2) envsubst '$$UBUNTU $$PHP' < Dockerfile.template > Dockerfile
	docker build -t thoni56/lamp:$@ .
endef
