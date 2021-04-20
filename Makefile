define mysources
  list=$(addprefix $(1)/,$(notdir $(wildcard $(1)/*.txt)))
endef

define myfilter
  list1=$(filter-out $(1),$(2))
endef

define myobjf
  list2=$(patsubst $(1),$(2),$(3))
endef

param1=t2/a.txt
param2="a.txt.o"

default: t1 | t2

t1: t2
	$(eval $(call mysources,t2))
	$(eval $(call myfilter,%a.txt,$(list)))
	$(eval $(call myobjf,%.txt,%.txt.o,$(list)))
	@echo $(list)
	@echo $(list1)
	@echo $(list2)
t2:
	+@[ -d $@ ] || mkdir -p $@
	@echo "1234\n" > $@/a.txt
	@echo "4567\n" > $@/b.txt
	@echo "891011\n" > $@/c.txt

clean:
	$(RM) -r t2

