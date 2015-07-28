# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Structure and content generally drawn from SocialServiceData.org, amended with
# a few quick quibbles.
tag_list = [
  [ 'emergency', 'emergency food', 'emergency food pantry' ],
  [ 'emergency', 'emergency food', 'emergency meals' ],
  [ 'emergency', 'emergency shelter', 'domestic violence shelter' ],
  [ 'emergency', 'emergency shelter', 'family emergency shelter' ],
  [ 'emergency', 'emergency shelter', 'men\'s emergency shelter' ],
  [ 'emergency', 'emergency shelter', 'women\'s emergency shelter' ],
  [ 'emergency', 'emergency shelter', 'youth emergency shelter' ],
  [ 'emergency', 'hotline', 'crisis hotline' ],
  [ 'emergency', 'hotline', 'domestic violence hotline' ],
  [ 'emergency', 'hotline', 'shelter hotline' ],
  [ 'emergency', 'hotline', 'suicide hotline' ],
  [ 'family', 'children & youth', 'adoption' ],
  [ 'family', 'children & youth', 'baby supplies' ],
  [ 'family', 'children & youth', 'cash for childcare' ],
  [ 'family', 'children & youth', 'childcare' ],
  [ 'family', 'children & youth', 'diapers & formula' ],
  [ 'family', 'children & youth', 'finding childcare' ],
  [ 'family', 'children & youth', 'post incarceration support' ],
  [ 'family', 'children & youth', 'foster parenting' ],
  [ 'family', 'children & youth', 'foster youth' ],
  [ 'family', 'children & youth', 'parenting' ],
  [ 'family', 'children & youth', 'toys' ],
  [ 'family', 'children & youth', 'transitional age youth' ],
  [ 'family', 'clothes', 'baby clothes' ],
  [ 'family', 'clothes', 'cash for clothing' ],
  [ 'family', 'clothes', 'general clothes' ],
  [ 'family', 'clothes', 'school clothes' ],
  [ 'family', 'clothes', 'work clothes' ],
  [ 'family', 'domestic violence', 'domestic violence help' ],
  [ 'family', 'family support', 'case management' ],
  [ 'family', 'family support', 'mediation' ],
  [ 'family', 'family support', 'support for immigrants' ],
  [ 'family', 'household', 'cash for utilities' ],
  [ 'family', 'household', 'furniture' ],
  [ 'family', 'household', 'heating & cooling' ],
  [ 'family', 'household', 'household supplies' ],
  [ 'family', 'household', 'internet access' ],
  [ 'family', 'household', 'maintenance & repairs' ],
  [ 'family', 'household', 'pet care assistance' ],
  [ 'family', 'household', 'phone services' ],
  [ 'family', 'safety', 'emergency safety' ], # What does this even mean?
  [ 'family', 'seniors', 'senior day program' ],
  [ 'family', 'seniors', 'senior health care' ],
  [ 'family', 'seniors', 'senior housing' ],
  [ 'family', 'seniors', 'senior home care' ],
  [ 'family', 'veterans', 'veterans health benefits' ],
  [ 'family', 'veterans', 'veterans housing' ],
  [ 'family', 'veterans', 'veterans job placement' ],
  [ 'food', 'food education', 'nutrition' ],
  [ 'food', 'groceries', 'cash for food' ],
  [ 'food', 'groceries', 'food pantry' ],
  [ 'food', 'meals', 'food delivery' ],
  [ 'food', 'meals', 'free meals' ],
  [ 'food', 'meals', 'summer free lunch' ],
  [ 'health', 'addiction', 'alcohol' ],
  [ 'health', 'addiction', 'detox' ],
  [ 'health', 'addiction', 'drugs' ],
  [ 'health', 'addiction', 'needle exchange' ],
  [ 'health', 'addiction', 'other addictions' ],
  [ 'health', 'addiction', 'residential treatment' ],
  [ 'health', 'addiction', 'sober living' ],
  [ 'health', 'dental,' 'dental care' ],
  [ 'health', 'disabilities', 'adult daycare' ],
  [ 'health', 'disabilities', 'assisted living' ],
  [ 'health', 'disabilities', 'assistive technology' ],
  [ 'health', 'disabilities', 'disability benefits' ],
  [ 'health', 'disabilities', 'nursing facility' ],
  [ 'health', 'disabilities', 'work with disabilities' ],
  [ 'health', 'disabilities', 'recreation with disabilities' ],
  [ 'health', 'disabilities', 'disability advocacy & referral' ],
  [ 'health', 'end of life', 'burial & funeral help' ],
  [ 'health', 'end of life', 'hospice' ],
  [ 'health', 'end of life', 'in home support' ],
  [ 'health', 'health care', 'cash for health care' ],
  [ 'health', 'health care', 'health insurance' ],
  [ 'health', 'health care', 'paying medical bills' ],
  [ 'health', 'health education', 'general health education' ],
  [ 'health', 'health education', 'sex education' ],
  [ 'health', 'hygiene', 'personal hygiene supplies' ],
  [ 'health', 'medical', 'abortion' ],
  [ 'health', 'medical', 'alternative medicine' ],
  [ 'health', 'medical', 'birth control' ],
  [ 'health', 'medical', 'general medical care' ],
  [ 'health', 'medical', 'hearing' ],
  [ 'health', 'medical', 'HIV care' ],
  [ 'health', 'medical', 'HIV housing' ],
  [ 'health', 'medical', 'HIV treatment' ],
  [ 'health', 'medical', 'LGBT health' ],
  [ 'health', 'medical', 'medical supplies' ],
  [ 'health', 'medical', 'medical test' ],
  [ 'health', 'medical', 'pain management' ],
  [ 'health', 'medical', 'pediatric medicine' ],
  [ 'health', 'medical', 'physical therapy' ],
  [ 'health', 'medical', 'pregnancy' ],
  [ 'health', 'medical', 'prescriptions' ],
  [ 'health', 'medical', 'sexual health' ],
  [ 'health', 'medical', 'STD test' ],
  [ 'health', 'medical', 'transportation for healthcare' ],
  [ 'health', 'medical', 'vaccinations' ],
  [ 'health', 'mental health', 'grief' ],
  [ 'health', 'mental health', 'LGBT support group' ],  # Recategorized.
  [ 'health', 'mental health', 'mental health care' ],
  [ 'health', 'mental health', 'mental health counseling' ],
  [ 'health', 'mental health', 'peer support' ],
  [ 'health', 'mental health', 'support group' ],
  [ 'health', 'vision', 'eye exams' ],
  [ 'health', 'vision', 'glasses & contacts' ],
  [ 'housing', 'affordable housing', 'affordable long-term housing' ],
  [ 'housing', 'affordable housing', 'finding housing' ],
  [ 'housing', 'affordable housing', 'independent living' ],
  [ 'housing', 'affordable housing', 'public housing' ],
  [ 'housing', 'homeless support', 'laundry' ],
  [ 'housing', 'homeless support', 'showers' ],
  [ 'housing', 'homeless support', 'storage' ],
  [ 'housing', 'homeless support', 'homeless support services' ],
  [ 'housing', 'homeowners', 'buyers or renters insurance' ],
  [ 'housing', 'homeowners', 'foreclosure' ],
  [ 'housing', 'homeowners', 'loan modification' ],
  [ 'housing', 'housing assistance', 'homebuying assistance' ],
  [ 'housing', 'housing assistance', 'housing vouchers' ],
  [ 'housing', 'housing assistance', 'supportive housing' ],
  [ 'housing', 'housing education', 'home buyer education' ],
  [ 'housing', 'housing education', 'housing advice' ],
  [ 'housing', 'shelter', 'emergency shelter' ],
  [ 'housing', 'shelter', 'short term shelter' ],
  [ 'housing', 'tenants', 'eviction help' ],
  [ 'housing', 'tenants', 'rent assistance' ],
  [ 'housing', 'tenants', 'renters insurance' ],
  [ 'housing', 'tenants', 'tenants rights' ],
  [ 'housing', 'transitional housing', 'transitional housing program' ],
  [ 'housing', 'transitional housing', 'halfway house' ],
  [ 'housing', 'transitional housing', 'transitional safe housing' ],
  [ 'housing', 'transitional housing', 'transitional shelter for victims' ],
  [ 'learning', 'beyond school', 'after school' ],
  [ 'learning', 'beyond school', 'arts' ],
  [ 'learning', 'beyond school', 'mentoring' ],
  [ 'learning', 'beyond school', 'recreation' ],
  [ 'learning', 'beyond school', 'study abroad' ],
  [ 'learning', 'education', 'back to school' ],
  [ 'learning', 'education', 'college' ],
  [ 'learning', 'education', 'financial aid' ],
  [ 'learning', 'education', 'finding a school' ],
  [ 'learning', 'education', 'free books' ],
  [ 'learning', 'education', 'GED' ],
  [ 'learning', 'education', 'literacy' ],
  [ 'learning', 'education', 'preschool' ],
  [ 'learning', 'education', 'school supplies' ],
  [ 'learning', 'education', 'special education' ],
  [ 'learning', 'education', 'transportation for school' ],
  [ 'learning', 'education', 'tutoring' ],
  [ 'learning', 'language', 'ESL classes' ],
  [ 'learning', 'language', 'translation & interpretation' ],
  [ 'learning', 'paying for school', 'scholarships' ],
  [ 'learning', 'paying for school', 'school expenses' ],
  [ 'learning', 'paying for school', 'student loans' ],
  [ 'learning', 'skills', 'computer class' ],
  [ 'learning', 'skills', 'computer lab' ],
  [ 'learning', 'skills', 'internships' ],
  [ 'learning', 'skills', 'life skills training' ],
  [ 'learning', 'summer', 'day camp' ],
  [ 'learning', 'summer', 'overnight camp' ],
  [ 'learning', 'summer', 'summer program' ],
  [ 'legal', 'after prison', 'post incarceration support' ],
  [ 'legal', 'family law', 'family law' ],
  [ 'legal', 'general legal', 'IDs & driver\'s license' ],
  [ 'legal', 'general legal', 'lawyers' ],
  [ 'legal', 'housing law', 'housing law' ],
  [ 'legal', 'immigration law', 'immigration law' ],
  [ 'legal', 'workplace law', 'discrimination' ],
  [ 'legal', 'workplace law', 'workers\' compensation' ],
  [ 'legal', 'workplace law', 'workers\' rights' ],
  [ 'money', 'cash benefits', 'cash benefits' ],
  [ 'money', 'credit', 'banking & credit unions' ],
  [ 'money', 'credit', 'bankruptcy' ],
  [ 'money', 'credit', 'credit counseling' ],
  [ 'money', 'credit', 'credit repair' ],
  [ 'money', 'credit', 'legal help with credit' ],
  [ 'money', 'credit', 'loans' ],
  [ 'money', 'financial education', 'financial literacy' ],
  [ 'money', 'financial education', 'savings' ],
  [ 'money', 'taxes', 'tax law' ],
  [ 'money', 'taxes', 'tax preparation' ],
  [ 'money', 'transit', 'cash for gas' ],
  [ 'money', 'transit', 'transit fare' ],
  [ 'money', 'transit', 'transportation assistance' ],
  [ 'money', 'unemployment', 'unemployment benefits' ],
  [ 'money', 'work', 'career counseling' ],
  [ 'money', 'work', 'finding work' ],
  [ 'money', 'work', 'interview training' ],
  [ 'money', 'work', 'job placement' ],
  [ 'money', 'work', 'job training' ],
  [ 'money', 'work', 'resume help' ],
  [ 'money', 'work', 'starting a small business' ],
  [ 'money', 'work', 'workplace rights' ] # How is this not 'general legal'?
]

property_list = [
  [ 'Accessibility', 'access-wheelchair', 'Accessible for people in wheelchairs.' ],
  [ 'Affinity Groups', 'community-african-american', 'Self-identified African American or Black' ],
  [ 'Affinity Groups', 'community-api', 'Self-identified Asian or Pacific Islander' ],
  [ 'Affinity Groups', 'community-arab', 'Self-identified Arab' ],
  [ 'Affinity Groups', 'community-christian', 'Self-identified Christian' ],
  [ 'Affinity Groups', 'community-disabled', 'Self-identified disabled or with disabilities' ],
  [ 'Affinity Groups', 'community-fathers', 'Fathers' ],
  [ 'Affinity Groups', 'community-foster-youth', 'Foster youth or emancipated foster youth' ],
  [ 'Affinity Groups', 'community-jewish', 'Self-identified Jewish' ],
  [ 'Affinity Groups', 'community-latino', 'Self-identified Latino' ],
  [ 'Affinity Groups', 'community-lgbt', 'Self-identified LGBT' ],
  [ 'Affinity Groups', 'community-mothers', 'Mothers' ],
  [ 'Affinity Groups', 'community-muslim', 'Self-identified Muslim' ],
  [ 'Affinity Groups', 'community-native-american', 'Self-identified Native American' ],
  [ 'Affinity Groups', 'community-parents', 'Parents' ],
  [ 'Affinity Groups', 'community-public-transit-riders', 'Public transit riders' ],
  [ 'Age Group', 'for-adults', 'For adults' ],
  [ 'Age Group', 'for-children', 'For children' ],
  [ 'Age Group', 'for-seniors', 'For seniors' ],
  [ 'Age Group', 'for-teens', 'For teens' ],
  [ 'Age Group', 'for-young-adults', 'For young adults' ],
  [ 'Cost', 'cost-free', 'Free' ],
  [ 'Eligibility', 'eilg-ssi', 'Required to be a Social Security or SSI recipient' ],
  [ 'Eligibility', 'elig-ca-healthy-families', 'Required to be in California\'s Healthy Families program' ],
  [ 'Eligibility', 'elig-employed-full-time', 'Required to be employed full-time' ],
  [ 'Eligibility', 'elig-employed-part-time', 'Required to be employed part-time' ],
  [ 'Eligibility', 'elig-fpha-section8', 'Required to be a Section 8 recipient' ],
  [ 'Eligibility', 'elig-free-lunch', 'Required to be a free lunch recipient at school' ],
  [ 'Eligibility', 'elig-gender-male', 'Self-identified male' ],
  [ 'Eligibility', 'elig-gender-female', 'Self-identified female' ],
  [ 'Eligibility', 'elig-gender-other', 'Self-identified neither male nor female' ],
  [ 'Eligibility', 'elig-gender-trans', 'Self-identified transgender' ],
  [ 'Eligibility', 'elig-homeless', 'Required to be currently homeless' ],
  [ 'Eligibility', 'elig-immigrant', 'For immigrants' ],
  [ 'Eligibility', 'elig-legal-resident', 'For legal residents' ],
  [ 'Eligibility', 'elig-liheap', 'Required to be part of the Low Income Home Energy Assistance Program (LIHEAP)' ],
  [ 'Eligibility', 'elig-married', 'For married people' ],
  [ 'Eligibility', 'elig-medicaid', 'For people on Medicaid' ],
  [ 'Eligibility', 'elig-rent-home', 'For renters' ],
  [ 'Eligibility', 'elig-single-parent', 'For single parents' ],
  [ 'Eligibility', 'elig-snap', 'For people receiving SNAP (food stamps)' ],
  [ 'Eligibility', 'elig-tanf', 'For people receiving TANF' ],
  [ 'Eligibility', 'elig-us-citizen', 'For U.S. citizens' ],
  [ 'Eligibility', 'elig-veteran', 'For veterans' ],
  [ 'Eligibility', 'elig-wic', 'For people receiving WIC' ],
  [ 'Language', 'lang-american-sign-language', 'Available in American Sign Language' ],
  [ 'Language', 'lang-amharic', 'Available in Amharic' ],
  [ 'Language', 'lang-arabic', 'Available in Arabic' ],
  [ 'Language', 'lang-bangali', 'Available in Bangali' ],
  [ 'Language', 'lang-berber', 'Available in Berber' ],
  [ 'Language', 'lang-bosnian', 'Available in Bosnian' ],
  [ 'Language', 'lang-burmese', 'Available in Burmese' ],
  [ 'Language', 'lang-cambodian', 'Available in Cambodian' ],
  [ 'Language', 'lang-cantonese', 'Available in Cantonese' ],
  [ 'Language', 'lang-croatian', 'Available in Croatian' ],
  [ 'Language', 'lang-dari', 'Available in Dari' ],
  [ 'Language', 'lang-eritrean', 'Available in Eritrean' ],
  [ 'Language', 'lang-farsi', 'Available in Farsi' ],
  [ 'Language', 'lang-french', 'Available in French' ],
  [ 'Language', 'lang-german', 'Available in German' ],
  [ 'Language', 'lang-greek', 'Available in Greek' ],
  [ 'Language', 'lang-hindi', 'Available in Hindi' ],
  [ 'Language', 'lang-hmong', 'Available in Hmong' ],
  [ 'Language', 'lang-italian', 'Available in Italian' ],
  [ 'Language', 'lang-japanese', 'Available in Japanese' ],
  [ 'Language', 'lang-karen', 'Available in Karen' ],
  [ 'Language', 'lang-khmer', 'Available in Khmer' ],
  [ 'Language', 'lang-korean', 'Available in Korean' ],
  [ 'Language', 'lang-laotian', 'Available in Laotian' ],
  [ 'Language', 'lang-Ilocano', 'Available in Ilocano' ],
  [ 'Language', 'lang-mandarin', 'Available in Mandarin' ],
  [ 'Language', 'lang-mien', 'Available in Mien' ],
  [ 'Language', 'lang-mongolian', 'Available in Mongolian' ],
  [ 'Language', 'lang-nepali', 'Available in Nepali' ],
  [ 'Language', 'lang-pashtu', 'Available in Pashtu' ],
  [ 'Language', 'lang-portuguese', 'Available in Portuguese' ],
  [ 'Language', 'lang-punjabi', 'Available in Punjabi' ],
  [ 'Language', 'lang-russian', 'Available in Russian' ],
  [ 'Language', 'lang-senufu', 'Available in Senufu' ],
  [ 'Language', 'lang-serbian', 'Available in Serbian' ],
  [ 'Language', 'lang-spanish', 'Available in Spanish' ],
  [ 'Language', 'lang-tagalog', 'Available in Tagalog' ],
  [ 'Language', 'lang-thai', 'Available in Thai' ],
  [ 'Language', 'lang-tibetan', 'Available in Tibetan' ],
  [ 'Language', 'lang-tigrigna', 'Available in Tigrigna' ],
  [ 'Language', 'lang-tigrinya', 'Available in Tigrinya' ],
  [ 'Language', 'lang-tongan', 'Available in Tongan' ],
  [ 'Language', 'lang-urdu', 'Available in Urdu' ],
  [ 'Language', 'lang-vietnamese', 'Available in Vietnamese' ],
  [ 'Language', 'lang-wolof', 'Available in Wolof' ],
  [ 'Location', 'geo-near-public-transit', 'Near public transit' ],
  [ 'Scheduling', 'time-afternoon', 'Afternoon' ],
  [ 'Scheduling', 'time-appointment-required', 'Whether or not an appointment is required' ],
  [ 'Scheduling', 'time-daytime', 'Daytime' ],
  [ 'Scheduling', 'time-evening', 'Evening' ],
  [ 'Scheduling', 'time-morning', 'Morning' ],
  [ 'Housing attribute', 'housing-allows-cats', 'Housing property units allows cats.' ],
  [ 'Housing attribute', 'housing-allows-dogs', 'Housing property units allows dogs' ],
  [ 'Housing attribute', 'housing-computer-lab', 'Housing property has a computer lab on site.' ],
  [ 'Housing attribute', 'housing-elevator', 'Housing property has an elevator in the building(s).' ],
  [ 'Housing attribute', 'housing-for-seniors', 'Housing property is targeted for seniors/65+.' ],
  [ 'Housing attribute', 'housing-laundry-in-unit', 'Housing property units have washer/dryer.' ],
  [ 'Housing attribute', 'housing-laundry-on-site', 'Housing property has washer/dryer on site.' ],
  [ 'Housing attribute', 'housing-parking-included', 'Housing property unit rent includes parking.' ],
  [ 'Housing attribute', 'housing-parking-on-site', 'Housing property has parking on site.' ],
  [ 'Housing attribute', 'housing-support-staff-on-site', 'Housing property has support staff on site available to residents.' ]
]

tag_list.each do |area, category, name|
  Tag.create( area: area, category: category, name: name )
end

property_list.each do |category, name, description|
  Property.create( category: category, name: name, description: description )
end

# Populate services list with dummy data for the sake of example.

example_services_list = [
  [ 'Sample Counseling Service', 'Counseling for veterans. Trauma-informed approach, PTSD-aware.', '1234 Main Street, Oakland, CA', 'Lorem Ipsum Dolor Sit' ],
  [ 'Sample Emergency Shelter', 'One- to seven-night emergency shelter for survivors of domestic violence. Shelter located in a confidential place.', 'Oakland, CA', 'United Shelters' ],
  [ 'Sample Childcare', 'Emergency childcare for low-income families.', '1234 Main Street, Oakland, CA', 'Lorem Ipsum Dolor Sit' ],
  [ 'Sample Mental Health Services', 'Drop-in mental health services for homeless women.', '2345 Main Street, Berkeley, CA', 'Sample Services Inc.' ],
  [ 'Study Support', 'Academic support for students with disabilities.', '157 Example Street, Berkeley, CA', 'CSU MadeUp' ],
  [ 'Sample Support Group', 'Weekly support group for LGBTQ elders.', '2345 Main Street, Berkeley, CA', 'Sample Services Inc.' ],
  [ 'Sample Food Program', 'Nutritious food for low-income pregnant and breastfeeding women, as well as infants and children.', '2345 Main Street, Berkeley, CA', 'Sample Services Inc.' ],
  [ 'Sample Food Bank', 'Distributes meals three times a day. First come, first served.', '8621 Sample Street, Hayward, CA', 'Sample Services Inc.' ],
  [ 'Safe Now', 'Safe shelter and resources for domestic violence survivors and their children. Outreach and education to at-risk populations.', 'P.O. Box 56789, Oakland, CA 94617-56789', 'You\'re Safe Here, Inc.' ],
  [ 'Nora\'s Place', 'Shelter and supportive services for women and children who experience domestic violence and/or homelessness. Can accompany you to court and help you find a job, get restraining orders, get government aid, etc.', '13579 Example Street, Hayward, CA', 'United Shelters' ],
  [ 'Sample Oakland Mental Health Center', 'Outpatient psychotherapy treatment for children as well as adults.', '1357 Fake Street, Oakland, CA', 'Saul\'s Place' ],
  [ 'Gang Violence Victim/Survivor Hotline', 'Runs a 24/7 hotline. Also offers help with applications for California victims compensation program.', '1237 Main Street, Hayward, CA', 'Stronger Together' ],
  [ 'Victims\' Services Unit', 'The Victims\' Services Unit can tell you the status of cases being handled by the Attorney General\'s office.', 'Alameda County', 'California Attorney General\'s Office' ],
]

example_services_list.each do |name, description, location, organization|
  Service.create( name: name, description: description, location: location, organization: organization )
end

# Then associate services with particular tags and properties.
# @todo: Room for improvement includes refactoring this so it doesn't rely on
# magic numbers.

# Sample Counseling Service
service = Service.find(1)
service.properties<<Property.find(44) # veteran
service.properties<<Property.find(1)  # wheelchair-accessible
service.properties<<Property.find(6)  # disabled community
service.tags<<Tag.find(103)           # mental health counseling

# Sample Emergency Shelter
service = Service.find(2)
service.tags<<Tag.find(3) # emergency domestic violence shelter
service.properties<<Property.find(22) # free

# Sample Childcare
service = Service.find(3)
service.tags<<Tag.find(15) # childcare
service.tags<<Tag.find(17) # help finding childcare
service.tags<<Tag.find(21) # parenting
service.tags<<Tag.find(13) # baby supplies
service.tags<<Tag.find(24) # baby clothing
service.properties<<Property.find(22) # free
service.properties<<Property.find(91)   # near public transit

# Sample Mental Health Services
service = Service.find(4)
service.properties<<Property.find(33)   # currently homeless
service.properties<<Property.find(30)   # female
service.tags<<Tag.find(100)             # grief
service.tags<<Tag.find(102)             # mental health care
service.tags<<Tag.find(103)             # mental health counseling
service.tags<<Tag.find(104)             # peer support
service.tags<<Tag.find(105)             # support group
service.properties<<Property.find(22)   # free
service.properties<<Property.find(91)   # near public transit

# Study Support
service = Service.find(5)
service.properties<<Property.find(1)  # wheelchair-accessible
service.properties<<Property.find(6)  # disabled community
service.properties<<Property.find(46) # available in ASL
service.tags<<Tag.find(134)           # after school
service.tags<<Tag.find(150)           # tutoring
service.tags<<Tag.find(155)           # student loans
service.tags<<Tag.find(70)            # disability advocacy & referral
service.properties<<Property.find(22) # free
service.properties<<Property.find(91) # near public transit

# Sample Support Group
service = Service.find(6)
service.properties<<Property.find(19)   # for seniors
service.properties<<Property.find(11)   # for LGBTQ people
service.tags<<Tag.find(101)             # LGBTQ support group
service.tags<<Tag.find(104)             # peer support
service.tags<<Tag.find(105)             # support group
service.properties<<Property.find(91)   # near public transit

# Sample Food Program
service = Service.find(7)
service.properties<<Property.find(12)   # for mothers
service.properties<<Property.find(30)   # for self-identified female
service.tags<<Tag.find(1)               # emergency food pantry
service.tags<<Tag.find(2)               # emergency meals
service.tags<<Tag.find(16)              # diapers & formula
service.tags<<Tag.find(21)              # parenting
service.tags<<Tag.find(49)              # nutrition
service.properties<<Property.find(22)   # free
service.properties<<Property.find(45)   # for people receiving WIC

# Sample Food Bank
service = Service.find(8)
service.tags<<Tag.find(1)               # emergency food pantry
service.tags<<Tag.find(2)               # emergency meals
service.tags<<Tag.find(49)              # nutrition
service.properties<<Property.find(22)   # free

# Safe Now
service = Service.find(9)
service.properties<<Property.find(22)   # free
service.properties<<Property.find(18)   # for children
service.properties<<Property.find(29)   # men's program
service.tags<<Tag.find(124)             # emergency shelter
service.tags<<Tag.find(125)             # short-term shelter
service.tags<<Tag.find(3)               # domestic violence shelter
service.tags<<Tag.find(4)               # family emergency shelter
service.tags<<Tag.find(29)              # domestic violence help
service.tags<<Tag.find(41)              # emergency safety
service.tags<<Tag.find(103)             # mental health counseling
service.tags<<Tag.find(104)             # peer support
service.tags<<Tag.find(105)             # support group

# Nora's Place
service = Service.find(10)
service.tags<<Tag.find(102)             # mental health care
service.tags<<Tag.find(103)             # mental health counseling
service.tags<<Tag.find(104)             # peer support
service.tags<<Tag.find(105)             # support group
service.tags<<Tag.find(30)              # case management
service.tags<<Tag.find(124)             # emergency shelter
service.tags<<Tag.find(3)               # domestic violence shelter
service.properties<<Property.find(33)   # currently homeless
service.properties<<Property.find(30)   # female
service.properties<<Property.find(18)   # for children

# Sample Oakland Mental Health Center
service = Service.find(11)
service.tags<<Tag.find(102)             # mental health care
service.tags<<Tag.find(103)             # mental health counseling

# Gang Violence Victim/Survivor Hotline
service = Service.find(12)
service.tags<<Tag.find(8)               # crisis hotline
service.tags<<Tag.find(30)              # case management
service.tags<<Tag.find(31)              # mediation
service.tags<<Tag.find(172)             # cash benefits
service.properties<<Property.find(22)   # free

# Victims' Services Unit
service = Service.find(13)
service.tags<<Tag.find(172)             # cash benefits
service.tags<<Tag.find(166)             # lawyers (not quite right)
service.properties<<Property.find(22)   # free
