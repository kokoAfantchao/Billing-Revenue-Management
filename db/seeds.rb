# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#
# Character.create(name: 'Luke', movie: movies.first)
#
#
## get some cpt data

 more_cpt = [ {:cpt_code => '0003T', :cpt_description => 'Cervicography', :price => 100},
              {:cpt_code => '0008T', :cpt_description => 'Upper gi endoscopy w/suture', :price => 100},
              {:cpt_code => '0010T', :cpt_description => 'Tb test, gamma interferon', :price => 100},
              {:cpt_code => '0016T', :cpt_description => 'Thermotx choroid vasc lesion', :price => 100},
              {:cpt_code => '0017T', :cpt_description => 'Photocoagulat macular drusen', :price => 100},
              {:cpt_code => '0018T', :cpt_description =>	'Transcranial magnetic stimul', :price =>100},
              {:cpt_code => '0019T', :cpt_description => 'Extracorp shock wave tx, ms', :price => 100},
              {:cpt_code => '0020T', :cpt_description => 'Extracorp shock wave tx, ft', :price =>100}
 ]
# {0021T	Fetal oximetry, trnsvag/cerv	100
# {0023T	Phenotype drug test, hiv 1	100
# {0024T	Transcath cardiac reduction	100
# {0026T	Measure remnant lipoproteins	100
# {0027T	Endoscopic epidural lysis	100
# {0028T	Dexa body composition study	100
# {0029T	Magnetic tx for incontinence	100
# {0030T	Antiprothrombin antibody	100
#  0031T	Speculoscopy	100
#  0032T	Speculoscopy w/direct sample	100
#  0033T	Endovasc taa repr incl subcl	100
#  0034T	Endovasc taa repr w/o subcl	100
#  0035T	Insert endovasc prosth, taa	100
#  0036T	Endovasc prosth, taa, add-on	100
#  0037T	Artery transpose/endovas taa	100
#  0038T	Rad endovasc taa rpr w/cover	100
#  0039T	Rad s/i, endovasc taa repair	100
#  0040T	Rad s/i, endovasc taa prosth	100
#  0041T	Detect ur infect agnt w/cpas	100
#  0042T	Ct perfusion w/contrast, cbf	100
#  0043T	Co expired gas analysis	100
#  044T	Whole body photography	100
#  0045T	Whole body photography	100
#  0046T	Cath lavage, mammary duct(s	100
#  0047T	Cath lavage, mammary duct(s)	100
#  0048T	Implant ventricular device	100
#  0049T	External circulation assist	100
#  0050T	Removal circulation assist	100
#  0051T	Implant total heart system	100
#  0052T	Replace component heart syst	100
#  0053T	Replace component heart syst	100
#  0054T	Bone surgery using computer	100

more_cpt.each do |cpt|
  Cpt.create(cpt)
end




## ICD_10 data
more_icd  = [
    {:category_code => 'A00', :diagnosis_code => '0',:FULL_CODE => 'A000',:abbreviated_description => 'Cholera due to Vibrio cholerae 01, biovar cholerae',:full_description => 'Cholera due to Vibrio cholerae 01, biovar cholerae',:category_title => 'Cholera'},
    {:category_code => 'A00', :diagnosis_code => '1',:FULL_CODE => 'A001',:abbreviated_description => 'Cholera due to Vibrio cholerae 01, biovar eltor',:full_description => 'Cholera due to Vibrio cholerae 01, biovar eltor',:category_title => 'Cholera'},
    {:category_code => 'A00', :diagnosis_code => '9',:FULL_CODE => 'A009',:abbreviated_description => 'Cholera, unspecified',:full_description => 'Cholera, unspecified',:category_title => 'Cholera'}
]

    # array('category_code' => 'A010','diagnosis_code' => '0','FULL_CODE' => 'A0100','abbreviated_description' => 'Typhoid fever, unspecified','full_description' => 'Typhoid fever, unspecified','category_title' => 'Typhoid fever'),
    # array('category_code' => 'A010','diagnosis_code' => '1','FULL_CODE' => 'A0101','abbreviated_description' => 'Typhoid meningitis','full_description' => 'Typhoid meningitis','category_title' => 'Typhoid fever'),
    # array('category_code' => 'A010','diagnosis_code' => '2','FULL_CODE' => 'A0102','abbreviated_description' => 'Typhoid fever with heart involvement','full_description' => 'Typhoid fever with heart involvement','category_title' => 'Typhoid fever'),
    # array('category_code' => 'A010','diagnosis_code' => '3','FULL_CODE' => 'A0103','abbreviated_description' => 'Typhoid pneumonia','full_description' => 'Typhoid pneumonia','category_title' => 'Typhoid fever'),
    # array('category_code' => 'A010','diagnosis_code' => '4','FULL_CODE' => 'A0104','abbreviated_description' => 'Typhoid arthritis','full_description' => 'Typhoid arthritis','category_title' => 'Typhoid fever'),
    # array('category_code' => 'A010','diagnosis_code' => '5','FULL_CODE' => 'A0105','abbreviated_description' => 'Typhoid osteomyelitis','full_description' => 'Typhoid osteomyelitis','category_title' => 'Typhoid fever'),
    # array('category_code' => 'A010','diagnosis_code' => '9','FULL_CODE' => 'A0109','abbreviated_description' => 'Typhoid fever with other complications','full_description' => 'Typhoid fever with other complications','category_title' => 'Typhoid fever'),
    # array('category_code' => 'A011','diagnosis_code' => '','FULL_CODE' => 'A011','abbreviated_description' => 'Paratyphoid fever A','full_description' => 'Paratyphoid fever A','category_title' => 'Paratyphoid fever A'),
    # array('category_code' => 'A012','diagnosis_code' => '','FULL_CODE' => 'A012','abbreviated_description' => 'Paratyphoid fever B','full_description' => 'Paratyphoid fever B','category_title' => 'Paratyphoid fever B'),
    # array('category_code' => 'A013','diagnosis_code' => '','FULL_CODE' => 'A013','abbreviated_description' => 'Paratyphoid fever C','full_description' => 'Paratyphoid fever C','category_title' => 'Paratyphoid fever C'),
    # array('category_code' => 'A014','diagnosis_code' => '','FULL_CODE' => 'A014','abbreviated_description' => 'Paratyphoid fever, unspecified','full_description' => 'Paratyphoid fever, unspecified','category_title' => 'Paratyphoid fever, unspecified'),
    # array('category_code' => 'A02','diagnosis_code' => '0','FULL_CODE' => 'A020','abbreviated_description' => 'Salmonella enteritis','full_description' => 'Salmonella enteritis','category_title' => 'Other salmonella infections'),
    # array('category_code' => 'A02','diagnosis_code' => '1','FULL_CODE' => 'A021','abbreviated_description' => 'Salmonella sepsis','full_description' => 'Salmonella sepsis','category_title' => 'Other salmonella infections'),
    # array('category_code' => 'A022','diagnosis_code' => '0','FULL_CODE' => 'A0220','abbreviated_description' => 'Localized salmonella infection, unspecified','full_description' => 'Localized salmonella infection, unspecified','category_title' => 'Localized salmonella infections'),
    # array('category_code' => 'A022','diagnosis_code' => '1','FULL_CODE' => 'A0221','abbreviated_description' => 'Salmonella meningitis','full_description' => 'Salmonella meningitis','category_title' => 'Localized salmonella infections'),
    # array('category_code' => 'A022','diagnosis_code' => '2','FULL_CODE' => 'A0222','abbreviated_description' => 'Salmonella pneumonia','full_description' => 'Salmonella pneumonia','category_title' => 'Localized salmonella infections'),
    # array('category_code' => 'A022','diagnosis_code' => '3','FULL_CODE' => 'A0223','abbreviated_description' => 'Salmonella arthritis','full_description' => 'Salmonella arthritis','category_title' => 'Localized salmonella infections'),
    # array('category_code' => 'A022','diagnosis_code' => '4','FULL_CODE' => 'A0224','abbreviated_description' => 'Salmonella osteomyelitis','full_description' => 'Salmonella osteomyelitis','category_title' => 'Localized salmonella infections'),
    # array('category_code' => 'A022','diagnosis_code' => '5','FULL_CODE' => 'A0225','abbreviated_description' => 'Salmonella pyelonephritis','full_description' => 'Salmonella pyelonephritis','category_title' => 'Localized salmonella infections'),
    # array('category_code' => 'A022','diagnosis_code' => '9','FULL_CODE' => 'A0229','abbreviated_description' => 'Salmonella with other localized infection','full_description' => 'Salmonella with other localized infection','category_title' => 'Localized salmonella infections'),
    # array('category_code' => 'A028','diagnosis_code' => '','FULL_CODE' => 'A028','abbreviated_description' => 'Other specified salmonella infections','full_description' => 'Other specified salmonella infections','category_title' => 'Other specified salmonella infections'),
    # array('category_code' => 'A029','diagnosis_code' => '','FULL_CODE' => 'A029','abbreviated_description' => 'Salmonella infection, unspecified','full_description' => 'Salmonella infection, unspecified','category_title' => 'Salmonella infection, unspecified'),
    # array('category_code' => 'A03','diagnosis_code' => '0','FULL_CODE' => 'A030','abbreviated_description' => 'Shigellosis due to Shigella dysenteriae','full_description' => 'Shigellosis due to Shigella dysenteriae','category_title' => 'Shigellosis'),
    # array('category_code' => 'A03','diagnosis_code' => '1','FULL_CODE' => 'A031','abbreviated_description' => 'Shigellosis due to Shigella flexneri','full_description' => 'Shigellosis due to Shigella flexneri','category_title' => 'Shigellosis'),
    # array('category_code' => 'A03','diagnosis_code' => '2','FULL_CODE' => 'A032','abbreviated_description' => 'Shigellosis due to Shigella boydii','full_description' => 'Shigellosis due to Shigella boydii','category_title' => 'Shigellosis'),
    # array('category_code' => 'A03','diagnosis_code' => '3','FULL_CODE' => 'A033','abbreviated_description' => 'Shigellosis due to Shigella sonnei','full_description' => 'Shigellosis due to Shigella sonnei','category_title' => 'Shigellosis'),
    # array('category_code' => 'A03','diagnosis_code' => '8','FULL_CODE' => 'A038','abbreviated_description' => 'Other shigellosis','full_description' => 'Other shigellosis','category_title' => 'Shigellosis'),
    # array('category_code' => 'A03','diagnosis_code' => '9','FULL_CODE' => 'A039','abbreviated_description' => 'Shigellosis, unspecified','full_description' => 'Shigellosis, unspecified','category_title' => 'Shigellosis'),
    # array('category_code' => 'A04','diagnosis_code' => '0','FULL_CODE' => 'A040','abbreviated_description' => 'Enteropathogenic Escherichia coli infection','full_description' => 'Enteropathogenic Escherichia coli infection','category_title' => 'Other bacterial intestinal infections'),
    # array('category_code' => 'A04','diagnosis_code' => '1','FULL_CODE' => 'A041','abbreviated_description' => 'Enterotoxigenic Escherichia coli infection','full_description' => 'Enterotoxigenic Escherichia coli infection','category_title' => 'Other bacterial intestinal infections'),
    # array('category_code' => 'A04','diagnosis_code' => '2','FULL_CODE' => 'A042','abbreviated_description' => 'Enteroinvasive Escherichia coli infection','full_description' => 'Enteroinvasive Escherichia coli infection','category_title' => 'Other bacterial intestinal infections'),
    # array('category_code' => 'A04','diagnosis_code' => '3','FULL_CODE' => 'A043','abbreviated_description' => 'Enterohemorrhagic Escherichia coli infection','full_description' => 'Enterohemorrhagic Escherichia coli infection','category_title' => 'Other bacterial intestinal infections'),
    # array('category_code' => 'A04','diagnosis_code' => '4','FULL_CODE' => 'A044','abbreviated_description' => 'Other intestinal Escherichia coli infections','full_description' => 'Other intestinal Escherichia coli infections','category_title' => 'Other bacterial intestinal infections'),
    # array('category_code' => 'A04','diagnosis_code' => '5','FULL_CODE' => 'A045','abbreviated_description' => 'Campylobacter enteritis','full_description' => 'Campylobacter enteritis','category_title' => 'Other bacterial intestinal infections'),
    # array('category_code' => 'A04','diagnosis_code' => '6','FULL_CODE' => 'A046','abbreviated_description' => 'Enteritis due to Yersinia enterocolitica','full_description' => 'Enteritis due to Yersinia enterocolitica','category_title' => 'Other bacterial intestinal infections'),
    # array('category_code' => 'A047','diagnosis_code' => '1','FULL_CODE' => 'A0471','abbreviated_description' => 'Enterocolitis due to Clostridium difficile, recurrent','full_description' => 'Enterocolitis due to Clostridium difficile, recurrent','category_title' => 'Enterocolitis due to Clostridium difficile'),
    # array('category_code' => 'A047','diagnosis_code' => '2','FULL_CODE' => 'A0472','abbreviated_description' => 'Enterocolitis d/t Clostridium difficile, not spcf as recur','full_description' => 'Enterocolitis due to Clostridium difficile, not specified as recurrent','category_title' => 'Enterocolitis due to Clostridium difficile'),
    # array('category_code' => 'A048','diagnosis_code' => '','FULL_CODE' => 'A048','abbreviated_description' => 'Other specified bacterial intestinal infections','full_description' => 'Other specified bacterial intestinal infections','category_title' => 'Other specified bacterial intestinal infections'),
    # array('category_code' => 'A049','diagnosis_code' => '','FULL_CODE' => 'A049','abbreviated_description' => 'Bacterial intestinal infection, unspecified','full_description' => 'Bacterial intestinal infection, unspecified','category_title' => 'Bacterial intestinal infection, unspecified'),
    # array('category_code' => 'A05','diagnosis_code' => '0','FULL_CODE' => 'A050','abbreviated_description' => 'Foodborne staphylococcal intoxication','full_description' => 'Foodborne staphylococcal intoxication','category_title' => 'Other bacterial foodborne intoxications, not elsewhere classified'),
    # array('category_code' => 'A05','diagnosis_code' => '1','FULL_CODE' => 'A051','abbreviated_description' => 'Botulism food poisoning','full_description' => 'Botulism food poisoning','category_title' => 'Other bacterial foodborne intoxications, not elsewhere classified'),
    # array('category_code' => 'A05','diagnosis_code' => '2','FULL_CODE' => 'A052','abbreviated_description' => 'Foodborne Clostridium perfringens intoxication','full_description' => 'Foodborne Clostridium perfringens [Clostridium welchii] intoxication','category_title' => 'Other bacterial foodborne intoxications, not elsewhere classified'),
    # array('category_code' => 'A05','diagnosis_code' => '3','FULL_CODE' => 'A053','abbreviated_description' => 'Foodborne Vibrio parahaemolyticus intoxication','full_description' => 'Foodborne Vibrio parahaemolyticus intoxication','category_title' => 'Other bacterial foodborne intoxications, not elsewhere classified'),
    # array('category_code' => 'A05','diagnosis_code' => '4','FULL_CODE' => 'A054','abbreviated_description' => 'Foodborne Bacillus cereus intoxication','full_description' => 'Foodborne Bacillus cereus intoxication','category_title' => 'Other bacterial foodborne intoxications, not elsewhere classified'),
    # array('category_code' => 'A05','diagnosis_code' => '5','FULL_CODE' => 'A055','abbreviated_description' => 'Foodborne Vibrio vulnificus intoxication','full_description' => 'Foodborne Vibrio vulnificus intoxication','category_title' => 'Other bacterial foodborne intoxications, not elsewhere classified'),
    # array('category_code' => 'A05','diagnosis_code' => '8','FULL_CODE' => 'A058','abbreviated_description' => 'Other specified bacterial foodborne intoxications','full_description' => 'Other specified bacterial foodborne intoxications','category_title' => 'Other bacterial foodborne intoxications, not elsewhere classified'),
    # array('category_code' => 'A05','diagnosis_code' => '9','FULL_CODE' => 'A059','abbreviated_description' => 'Bacterial foodborne intoxication, unspecified','full_description' => 'Bacterial foodborne intoxication, unspecified','category_title' => 'Other bacterial foodborne intoxications, not elsewhere classified'),
    # array('category_code' => 'A06','diagnosis_code' => '0','FULL_CODE' => 'A060','abbreviated_description' => 'Acute amebic dysentery','full_description' => 'Acute amebic dysentery','category_title' => 'Amebiasis'),
    # array('category_code' => 'A06','diagnosis_code' => '1','FULL_CODE' => 'A061','abbreviated_description' => 'Chronic intestinal amebiasis','full_description' => 'Chronic intestinal amebiasis','category_title' => 'Amebiasis'),
    # array('category_code' => 'A06','diagnosis_code' => '2','FULL_CODE' => 'A062','abbreviated_description' => 'Amebic nondysenteric colitis','full_description' => 'Amebic nondysenteric colitis','category_title' => 'Amebiasis'),
    # array('category_code' => 'A06','diagnosis_code' => '3','FULL_CODE' => 'A063','abbreviated_description' => 'Ameboma of intestine','full_description' => 'Ameboma of intestine','category_title' => 'Amebiasis'),
    # array('category_code' => 'A06','diagnosis_code' => '4','FULL_CODE' => 'A064','abbreviated_description' => 'Amebic liver abscess','full_description' => 'Amebic liver abscess','category_title' => 'Amebiasis'),
    # array('category_code' => 'A06','diagnosis_code' => '5','FULL_CODE' => 'A065','abbreviated_description' => 'Amebic lung abscess','full_description' => 'Amebic lung abscess','category_title' => 'Amebiasis'),
    # array('category_code' => 'A06','diagnosis_code' => '6','FULL_CODE' => 'A066','abbreviated_description' => 'Amebic brain abscess','full_description' => 'Amebic brain abscess','category_title' => 'Amebiasis'),
    # array('category_code' => 'A06','diagnosis_code' => '7','FULL_CODE' => 'A067','abbreviated_description' => 'Cutaneous amebiasis','full_description' => 'Cutaneous amebiasis','category_title' => 'Amebiasis'),
    # array('category_code' => 'A068','diagnosis_code' => '1','FULL_CODE' => 'A0681','abbreviated_description' => 'Amebic cystitis','full_description' => 'Amebic cystitis','category_title' => 'Amebic infection of other sites'),
    # array('category_code' => 'A068','diagnosis_code' => '2','FULL_CODE' => 'A0682','abbreviated_description' => 'Other amebic genitourinary infections','full_description' => 'Other amebic genitourinary infections','category_title' => 'Amebic infection of other sites'),
    # array('category_code' => 'A068','diagnosis_code' => '9','FULL_CODE' => 'A0689','abbreviated_description' => 'Other amebic infections','full_description' => 'Other amebic infections','category_title' => 'Amebic infection of other sites'),
    # array('category_code' => 'A069','diagnosis_code' => '','FULL_CODE' => 'A069','abbreviated_description' => 'Amebiasis, unspecified','full_description' => 'Amebiasis, unspecified','category_title' => 'Amebiasis, unspecified'),
    # array('category_code' => 'A07','diagnosis_code' => '0','FULL_CODE' => 'A070','abbreviated_description' => 'Balantidiasis','full_description' => 'Balantidiasis','category_title' => 'Other protozoal intestinal diseases'),
    # array('category_code' => 'A07','diagnosis_code' => '1','FULL_CODE' => 'A071','abbreviated_description' => 'Giardiasis [lambliasis]','full_description' => 'Giardiasis [lambliasis]','category_title' => 'Other protozoal intestinal diseases'),
    # array('category_code' => 'A07','diagnosis_code' => '2','FULL_CODE' => 'A072','abbreviated_description' => 'Cryptosporidiosis','full_description' => 'Cryptosporidiosis','category_title' => 'Other protozoal intestinal diseases'),
    # array('category_code' => 'A07','diagnosis_code' => '3','FULL_CODE' => 'A073','abbreviated_description' => 'Isosporiasis','full_description' => 'Isosporiasis','category_title' => 'Other protozoal intestinal diseases'),
    # array('category_code' => 'A07','diagnosis_code' => '4','FULL_CODE' => 'A074','abbreviated_description' => 'Cyclosporiasis','full_description' => 'Cyclosporiasis','category_title' => 'Other protozoal intestinal diseases'),
    # array('category_code' => 'A07','diagnosis_code' => '8','FULL_CODE' => 'A078','abbreviated_description' => 'Other specified protozoal intestinal diseases','full_description' => 'Other specified protozoal intestinal diseases','category_title' => 'Other protozoal intestinal diseases'),
    # array('category_code' => 'A07','diagnosis_code' => '9','FULL_CODE' => 'A079','abbreviated_description' => 'Protozoal intestinal disease, unspecified','full_description' => 'Protozoal intestinal disease, unspecified','category_title' => 'Other protozoal intestinal diseases'),
    # array('category_code' => 'A08','diagnosis_code' => '0','FULL_CODE' => 'A080','abbreviated_description' => 'Rotaviral enteritis','full_description' => 'Rotaviral enteritis','category_title' => 'Viral and other specified intestinal infections'),
    # array('category_code' => 'A081','diagnosis_code' => '1','FULL_CODE' => 'A0811','abbreviated_description' => 'Acute gastroenteropathy due to Norwalk agent','full_description' => 'Acute gastroenteropathy due to Norwalk agent','category_title' => 'Acute gastroenteropathy due to Norwalk agent and other small round viruses'),
    # array('category_code' => 'A081','diagnosis_code' => '9','FULL_CODE' => 'A0819','abbreviated_description' => 'Acute gastroenteropathy due to other small round viruses','full_description' => 'Acute gastroenteropathy due to other small round viruses','category_title' => 'Acute gastroenteropathy due to Norwalk agent and other small round viruses'),
    # array('category_code' => 'A082','diagnosis_code' => '','FULL_CODE' => 'A082','abbreviated_description' => 'Adenoviral enteritis','full_description' => 'Adenoviral enteritis','category_title' => 'Adenoviral enteritis'),
    # array('category_code' => 'A083','diagnosis_code' => '1','FULL_CODE' => 'A0831','abbreviated_description' => 'Calicivirus enteritis','full_description' => 'Calicivirus enteritis','category_title' => 'Other viral enteritis'),
    # array('category_code' => 'A083','diagnosis_code' => '2','FULL_CODE' => 'A0832','abbreviated_description' => 'Astrovirus enteritis','full_description' => 'Astrovirus enteritis','category_title' => 'Other viral enteritis'),
    # array('category_code' => 'A083','diagnosis_code' => '9','FULL_CODE' => 'A0839','abbreviated_description' => 'Other viral enteritis','full_description' => 'Other viral enteritis','category_title' => 'Other viral enteritis'),
    # array('category_code' => 'A084','diagnosis_code' => '','FULL_CODE' => 'A084','abbreviated_description' => 'Viral intestinal infection, unspecified','full_description' => 'Viral intestinal infection, unspecified','category_title' => 'Viral intestinal infection, unspecified'),
    # array('category_code' => 'A088','diagnosis_code' => '','FULL_CODE' => 'A088','abbreviated_description' => 'Other specified intestinal infections','full_description' => 'Other specified intestinal infections','category_title' => 'Other specified intestinal infections'),
    # array('category_code' => 'A09','diagnosis_code' => '','FULL_CODE' => 'A09','abbreviated_description' => 'Infectious gastroenteritis and colitis, unspecified','full_description' => 'Infectious gastroenteritis and colitis, unspecified','category_title' => 'Infectious gastroenteritis and colitis, unspecified'),
    # array('category_code' => 'A15','diagnosis_code' => '0','FULL_CODE' => 'A150','abbreviated_description' => 'Tuberculosis of lung','full_description' => 'Tuberculosis of lung','category_title' => 'Respiratory tuberculosis'),
    # array('category_code' => 'A15','diagnosis_code' => '4','FULL_CODE' => 'A154','abbreviated_description' => 'Tuberculosis of intrathoracic lymph nodes','full_description' => 'Tuberculosis of intrathoracic lymph nodes','category_title' => 'Respiratory tuberculosis'),
    # array('category_code' => 'A15','diagnosis_code' => '5','FULL_CODE' => 'A155','abbreviated_description' => 'Tuberculosis of larynx, trachea and bronchus','full_description' => 'Tuberculosis of larynx, trachea and bronchus','category_title' => 'Respiratory tuberculosis'),
    # array('category_code' => 'A15','diagnosis_code' => '6','FULL_CODE' => 'A156','abbreviated_description' => 'Tuberculous pleurisy','full_description' => 'Tuberculous pleurisy','category_title' => 'Respiratory tuberculosis'),
    # array('category_code' => 'A15','diagnosis_code' => '7','FULL_CODE' => 'A157','abbreviated_description' => 'Primary respiratory tuberculosis','full_description' => 'Primary respiratory tuberculosis','category_title' => 'Respiratory tuberculosis'),
    # array('category_code' => 'A15','diagnosis_code' => '8','FULL_CODE' => 'A158','abbreviated_description' => 'Other respiratory tuberculosis','full_description' => 'Other respiratory tuberculosis','category_title' => 'Respiratory tuberculosis'),
    # array('category_code' => 'A15','diagnosis_code' => '9','FULL_CODE' => 'A159','abbreviated_description' => 'Respiratory tuberculosis unspecified','full_description' => 'Respiratory tuberculosis unspecified','category_title' => 'Respiratory tuberculosis'),
    # array('category_code' => 'A17','diagnosis_code' => '0','FULL_CODE' => 'A170','abbreviated_description' => 'Tuberculous meningitis','full_description' => 'Tuberculous meningitis','category_title' => 'Tuberculosis of nervous system'),

more_icd.each do |icd|
  Icd.create(icd)
end