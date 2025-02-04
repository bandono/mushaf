epub: mushaf.epub

kepub: mushaf.kepub.epub

type = hafs
data_type = UthmanicHafs
data_ver = 18

data_file = $(data_type)_v$(data_ver).zip
data_name = $(data_type)1 Ver$(data_ver)

mushaf.kepub.epub: mushaf.epub
	kepubify mushaf.epub

mushaf.epub: make-epub data/$(type).csv font/$(type).ttf
	./make-epub data/$(type).csv font/$(type).ttf

$(data_file):
	curl -O https://download.qurancomplex.gov.sa/resources_dev/$@

data/$(type).csv: $(data_file)
	mkdir -p data && unzip -p $(data_file) \
		"$(data_name) data/$(type)Data_v$(data_ver).csv" > $@

font/$(type).ttf: $(data_file)
	mkdir -p font && unzip -p $(data_file) \
		"$(data_name) font/$(data_name).ttf" > $@
