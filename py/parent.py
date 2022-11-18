__author__ = "Florian Thiery"
__copyright__ = "MIT Licence 2022, RGZM, Florian Thiery"
__credits__ = ["Florian Thiery"]
__license__ = "MIT"
__version__ = "1.0"
__maintainer__ = "Florian Thiery"
__email__ = "florian.thiery@rgzm.de"
__status__ = "beta"
__update__ = "2022-11-18"

# import dependencies
import uuid
import requests
import io
import pandas as pd
import os
import codecs
import datetime
import importlib  # py3
import sys

# set UTF8 as default
importlib.reload(sys)  # py3
# reload(sys) #py2

# uncomment the line below when using Python version <3.0
# sys.setdefaultencoding('UTF8')

# set starttime
starttime = datetime.datetime.now().strftime("%Y-%m-%dT%H:%M:%S.%fZ")

# set input csv
csv = "parent.csv"
dir_path = os.path.dirname(os.path.realpath(__file__))
file_in = dir_path.replace("\\py", "\\csv") + "\\" + csv

print(file_in)

# read csv file
data = pd.read_csv(
    file_in,
    encoding='utf-8',
    sep='|',
    usecols=['id', 'de', 'en', 'dk', 'nl', 'fr', 'it', 'es', 'pl', 'gr', 'he', 'navisid']
)
print(data.info())

# create triples from dataframe
lineNo = 2
outStr = ""
lines = []

# create skos:Concept Scheme

lines.append("nomt:" + "cs01" + " " + "rdf:type" + " skos:ConceptScheme .")
lines.append("nomt:" + "cs01" + " " + "dct:license" + " <" + "http://creativecommons.org/licenses/by-sa/4.0/" + "> .")
lines.append("nomt:" + "cs01" + " " + "cc:license" + " <" + "http://creativecommons.org/licenses/by-sa/4.0/" + "> .")
lines.append("nomt:" + "cs01" + " " + "cc:attributionURL" + " <" + "http://www.wikidata.org/entity/Q115264627" + "> .")
lines.append("nomt:" + "cs01" + " " + "cc:attributionName" + " '" + "Arbeitsbereich Wissenschaftliche IT, digitale Plattformen und Tools des RGZM" + "' .")
lines.append("nomt:" + "cs01" + " " + "dct:title" + " 'Navis.one Maritime Thesaurus' .")
lines.append("nomt:" + "cs01" + " " + "rdfs:label" + " 'Navis.one Maritime Thesaurus' .")
lines.append("nomt:" + "cs01" + " " + "dct:identifier" + " <" + "http://www.wikidata.org/entity/Q115264680" + "> .")
lines.append("nomt:" + "cs01" + " " + "dct:publisher" + " <" + "http://www.wikidata.org/entity/Q115264627" + "> .")
lines.append("nomt:" + "cs01" + " " + "dct:creator" + " <" + "http://www.wikidata.org/entity/Q66606154" + "> .")
lines.append("nomt:" + "cs01" + " " + "dct:creator" + " <" + "http://www.wikidata.org/entity/Q88865971" + "> .")
lines.append("nomt:" + "cs01" + " " + "dct:date" + " '2022-11-18' .")
lines.append("")

# add parent items
for index, row in data.iterrows():
    # print(lineNo)
    tmpno = lineNo - 2
    if tmpno % 50 == 0:
        print(tmpno)
    lineNo += 1
    thisid = int(str(row['id'])) + 1000
    lines.append("nomt:" + str(thisid) + " " + "rdf:type" + " skos:Concept .")
    lines.append("nomt:" + "cs01" + " " + "skos:hasTopConcept " + "nomt:" + str(row['id']) + " .")
    lines.append("nomt:" + str(thisid) + " " + "skos:inScheme" + " nomt:thesaurus .")
    lines.append("nomt:" + str(thisid) + " " + "skos:topConceptOf" + " nomt:cs01 .")
    # metadata
    lines.append("nomt:" + str(thisid) + " " + "cc:license" + " <" + "http://creativecommons.org/licenses/by-sa/4.0/" + "> .")
    lines.append("nomt:" + str(thisid) + " " + "cc:attributionURL" + " <" + "http://www.wikidata.org/entity/Q115264627" + "> .")
    lines.append("nomt:" + str(thisid) + " " + "cc:attributionName" + " '" + "Arbeitsbereich Wissenschaftliche IT, digitale Plattformen und Tools des RGZM" + "' .")
    lines.append("nomt:" + str(thisid) + " " + "dct:publisher" + " <" + "http://www.wikidata.org/entity/Q115264627" + "> .")
    lines.append("nomt:" + str(thisid) + " " + "dct:identifier" + " <" + "http://data.archaeology.link/data/maritimethesaurus/" + "> .")
    lines.append("nomt:" + str(thisid) + " " + "dct:issued '" + datetime.datetime.now().strftime("%Y-%m-%dT%H:%M:%S.%fZ") + "'^^xsd:dateTime .")
    # item
    if str(row['de']) != 'nan':
        lines.append("nomt:" + str(thisid) + " " + "skos:prefLabel '" + str(row['de']) + "@de' .")
    if str(row['en']) != 'nan':
        lines.append("nomt:" + str(thisid) + " " + "skos:prefLabel '" + str(row['en']) + "@en' .")
    if str(row['dk']) != 'nan':
        lines.append("nomt:" + str(thisid) + " " + "skos:prefLabel '" + str(row['dk']) + "@dk' .")
    if str(row['nl']) != 'nan':
        lines.append("nomt:" + str(thisid) + " " + "skos:prefLabel '" + str(row['nl']) + "@nl' .")
    if str(row['fr']) != 'nan':
        lines.append("nomt:" + str(thisid) + " " + "skos:prefLabel '" + str(row['fr']) + "@fr' .")
    if str(row['it']) != 'nan':
        lines.append("nomt:" + str(thisid) + " " + "skos:prefLabel '" + str(row['it']) + "@it' .")
    if str(row['es']) != 'nan':
        lines.append("nomt:" + str(thisid) + " " + "skos:prefLabel '" + str(row['es']) + "@es' .")
    if str(row['pl']) != 'nan':
        lines.append("nomt:" + str(thisid) + " " + "skos:prefLabel '" + str(row['pl']) + "@pl' .")
    if str(row['gr']) != 'nan':
        lines.append("nomt:" + str(thisid) + " " + "skos:prefLabel '" + str(row['gr']) + "@gr' .")
    if str(row['he']) != 'nan':
        lines.append("nomt:" + str(thisid) + " " + "skos:prefLabel '" + str(row['he']) + "@he' .")

    # prov-o
    lines.append("nomt:" + str(thisid) + " " + "prov:wasAttributedTo" + " nomt:ImportPythonScript .")
    lines.append("nomt:" + str(thisid) + " " + "prov:wasDerivedFrom" + " <http://www.wikidata.org/entity/Q115264680> .")
    lines.append("nomt:" + str(thisid) + " " + "prov:wasGeneratedBy" + " nomt:activity_" + str(thisid) + " .")
    lines.append("nomt:activity_" + str(thisid) + " " + "rdf:type" + " <http://www.w3.org/ns/prov#Activity> .")
    lines.append("nomt:activity_" + str(thisid) + " " + "prov:startedAtTime '" + starttime + "'^^xsd:dateTime .")
    lines.append("nomt:activity_" + str(thisid) + " " + "prov:endedAtTime '" + datetime.datetime.now().strftime("%Y-%m-%dT%H:%M:%S.%fZ") + "'^^xsd:dateTime .")
    lines.append("nomt:activity_" + str(thisid) + " " + "prov:wasAssociatedWith" + " nomt:ImportPythonScript .")
    lines.append("")

files = (len(lines) / 100000) + 1
print("lines", len(lines), "files", int(files))

# set output path
dir_path = os.path.dirname(os.path.realpath(__file__))

# write output files
print("start writing turtle files...")

f = 0
step = 100000
fileprefix = "parent_"
prefixes = ""
prefixes += "@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .\r\n"
prefixes += "@prefix owl: <http://www.w3.org/2002/07/owl#> .\r\n"
prefixes += "@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .\r\n"
prefixes += "@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .\r\n"
prefixes += "@prefix dc: <http://purl.org/dc/elements/1.1/> .\r\n"
prefixes += "@prefix dct: <http://purl.org/dc/terms/> .\r\n"
prefixes += "@prefix prov: <http://www.w3.org/ns/prov#> .\r\n"
prefixes += "@prefix lado: <http://archaeology.link/ontology#> .\r\n"
prefixes += "@prefix nomt: <http://data.archaeology.link/data/maritimethesaurus/> .\r\n"
prefixes += "@prefix skos: <http://www.w3.org/2004/02/skos/core#> .\r\n"
prefixes += "@prefix wd: <http://www.wikidata.org/entity/> .\r\n"
prefixes += "@prefix cc: <http://creativecommons.org/ns#> .\r\n"
prefixes += "\r\n"

for x in range(1, int(files) + 1):
    strX = str(x)
    filename = dir_path.replace("\\py", "\\data") + "\\" + fileprefix + strX + ".ttl"
    file = codecs.open(filename, "w", "utf-8")
    file.write("# create triples from " + csv + " \r\n")
    file.write("# on " + datetime.datetime.now().strftime("%Y-%m-%d %H:%M") + "\r\n\r\n")
    file.write(prefixes)
    i = f
    for i, line in enumerate(lines):
        if (i > f - 1 and i < f + step):
            file.write(line)
            file.write("\r\n")
    f = f + step
    print("Yuhu! > " + fileprefix + strX + ".ttl")
    file.close()

print("*****************************************")
print("SUCCESS")
print("closing script")
print("*****************************************")
