// comment
// work into wikidata

// for neo4j db's


//  need to add roles:[]  to the attrib set, eg: roles: ['best practices', 'tools]

// Node TYPES
// (note that types get different colors in the graph, 12 shown)
//  Org
//  FrameWork (5 types: reg, non-reg, national std, inter std, indusrty specific => ??? make a prpperty)
//  Program
//  Certification  ? should this be broken into personal/org?
//  Regulatory (into framework)
//  Standard  (into framework)
//  Publication
//  Education
//
// Node Properties:   !find a schema
//  name: common name  
//  ^^^^^   need to change to 2: ??? shortname (sname), and fullname???
//  url
//  Q:   wikidata Q number
//  Shortdescription
//  ? fwType  (framework type, see above)
//  ? coo (country of orgin) ?
//
// Relationship TYPEs
//  PARENT
//  PRODUCED_BY
//  APPLIES_TO
//  
// don't copy above until # replaced with //

//    following line clears out old database
//  MATCH (n) DETACH DELETE n
//
// to show a graph:   match (m) return m


// import items form here: https://en.wikipedia.org/wiki/UK_cyber_security_community
// https://en.wikipedia.org/wiki/Data_Protection_Act_2018
// GDPR
// check out https://www.qa.com/course-catalogue/courses/foundation-certificate-in-cyber-security-qafccs/

CREATE (:Org {name: 'National Cyber Security Centre', sname: 'NCSC', url: 'https://www.ncsc.gov.uk/'})
CREATE (:Org {name: 'GCHQ', sname: 'GCHQ', url: 'https://www.gchq.gov.uk/'})
CREATE (:Org {name: 'Colloquium on Information Systems Security Education UK', sname: 'CISSEUK', url: 'https://cisseuk.org/', role: 'education'})
CREATE (:Org {name: 'Department for Digital, Culture, Media and Sport', sname: 'DCMS', url: 'https://www.gov.uk/dcms'})
CREATE (:FrameWork {name: 'Cyber Assessment Framework 3.0', sname: 'CAF3', url:'https://www.ncsc.gov.uk/blog-post/the-cyber-assessment-framework-3-0'})
CREATE (:Program {name: 'Academic Centres of Excellence in Cyber Security Education', sname: 'ACE_CSE', url: 'https://www.ncsc.gov.uk/blog-post/launch-of-the-academic-centres-of-excellence-in-cyber-security-education'})
CREATE (:FrameWork {name: 'CIISEC Skills Framework', sname: 'CIISEC', url: 'https://www.ncsc.gov.uk/information/certified-training', role: 'skills'})
CREATE (:Certification {name: 'CESG Certified Professional', sname: 'CCP', url: 'ncsc.gov.uk/information/about-certified-professional-scheme'})
CREATE (:Certification {name: 'Information & Cyber Security Foundation', sname: 'ICSF', url: 'https://www.ciisec.org/CIISEC/Development/ICSF_Exam.aspx', provider: 'CISSEUK'})
CREATE (:Regulatory {name: 'Network and Information Systems Regulations 2018', sname: 'NIS', url: 'https://ico.org.uk/for-organisations/the-guide-to-nis/what-is-nis/', region: 'EU'})
CREATE (:Org {name: 'Center for Internet Security', sname: 'CIS', url: 'https://www.cisecurity.org/'})// ABOVE GOOD
CREATE (:Org {name: 'ISACA', sname: 'ISACA', url: 'https://www.isaca.org/', Q: 'Q1662502' })
CREATE (:FrameWork {name: 'COBIT', url: 'https://www.isaca.org/resources/cobit', Q: 'Q544025'})
CREATE (:Certification {name: 'CSX Cybersecurity Practitioner', sname: 'CSXP', url: 'https://www.isaca.org/credentialing/csx-p' })
CREATE (:Certification {name: 'Certified Information Security Manager', sname: 'CISM', url: 'https://www.isaca.org/credentialing/cism' })
// above good
CREATE (:Org {name: 'UK Government', sname: 'HMG', url: 'https://www.gov.uk/', Q: 'Q6063'})
CREATE (:Org {name: 'Department of Health and Social Care', sname: 'DHSC', url: 'https://www.gov.uk/government/organisations/department-of-health-and-social-care', Q: 'Q3044742'})
CREATE (:Org {name: 'National Data Guardian', sname: 'NDG', url: 'https://www.gov.uk/government/organisations/national-data-guardian', Q: 'Q60741063' })
CREATE (:Org {name: 'IASME', sname: 'IASME', url: 'https://iasme.co.uk/', Q: 'Q16985457'})
CREATE (:FrameWork {name: 'IASME GOVERNANCE', sname: 'IASME', url: 'https://iasme.co.uk/iasme-governance/',  Q: ''})
CREATE (:FrameWork {name: 'NCSC 10 Steps to Cyber Security', sname: 'NCSC10', url: 'https://www.ncsc.gov.uk/collection/10-steps-to-cyber-security', Q: ''})
CREATE (:FrameWork {name: 'Cyber Essentials',  url: 'https://www.ncsc.gov.uk/cyberessentials/overview', Q: 'Q18349520'})
CREATE (:FrameWork {name: 'Cyber Essentials Plus', url: 'https://www.ncsc.gov.uk/cyberessentials/overview', Q: 'Q18349520'})
CREATE (:Org {name: 'European Union Agency for Network and Information Security', sname: 'ENISA', url: 'https://www.enisa.europa.eu/', Q: 'Q1377194'})
CREATE (:Org {name: 'Information Security Forum', sname: 'ISF', url: 'http://www.securityforum.org/', Q: 'Q3150834'})
CREATE (:Publication {name: 'Understanding the UK cyber security skills labour market 2019', sname: 'Cyber19', url: 'https://www.ipsos.com/sites/default/files/ct/publication/documents/2019-01/understanding_the_uk_cyber_security_skills_labour_market.pdf'})
CREATE (:Publication {name: 'Cyber security skills in the UK labour market 2020', sname: 'Cyber20', url: ''})
// Update these:
CREATE (:FrameWork {name: 'ISO27000', url: '', Q: ''})
CREATE (:FrameWork  {name: 'ISO27001', url: '', Q: ''})
CREATE (:FrameWork  {name: 'ISO27002', url: '', Q: ''})
CREATE (:FrameWork  {name: 'PCIDSS', url: '', Q: ''})
CREATE (:FrameWork  {name: 'SOX', url: '', Q: ''})
CREATE (:FrameWork  {name: 'HIPAA', url: '', Q: ''})
CREATE (:FrameWork  {name: 'HMG Security policy framework', sname: 'HMG_SPF', url: 'https://www.gov.uk/government/publications/security-policy-framework', Q: 'Q7444984'})
CREATE (:Org {name: 'ISC2', sname: 'ISC2', url: 'https://www.isc2.org/', Q: 'Q3153272'})
CREATE (:Publication {name: 'scmagazineuk', url: 'https://www.scmagazineuk.com/', Q:''})
CREATE (:FrameWork {name: 'NATIONAL CYBER SECURITYSTRATEGY 2016-2021', sname: 'NCSS', url: 'https://www.gov.uk/government/publications/national-cyber-security-strategy-2016-to-2021', Q: ''})
CREATE (:Publication {name: 'Graham Cluley blog', url: 'https://www.grahamcluley.com/'})
CREATE (:FrameWork {name:'cbest', url: 'https://crest-approved.org/schemes/cbest/index.html'})
CREATE (:Org {name:'crest-approved', sname: 'CREST', url: 'crest-approved.org', Q: ''})
CREATE (:Org {name:'Bank of England', sname: 'BoE', url: 'https://www.bankofengland.co.uk/', Q: 'Q183231' })
CREATE (:Org {name: 'cybercrime prosecution guidance', sname: 'CPS', url: 'https://www.cps.gov.uk/legal-guidance/cybercrime-prosecution-guidance', Q: ''})
CREATE (:FrameWork {name: 'CHECK', url: 'https://www.ncsc.gov.uk/information/check-penetration-testing', url2: 'https://www.gov.uk/government/publications/it-health-check-ithc-supporting-guidance/it-health-check-ithc-supporting-guidance', Q: 'https://en.wikipedia.org/wiki/ITHC'})
CREATE (:Org {name: 'Cloud Security Alliance', sname: 'CSA', url: 'https://cloudsecurityalliance.org/', Q: ''})
CREATE (:FrameWork {name: 'Cloud Controls Matrix', sname: 'CCM', url: 'https://cloudsecurityalliance.org/artifacts/cloud-controls-matrix-v3-0-1/'})
CREATE (:Org {name: 'NIST', sname: 'NIST', url: 'nist.gov'})
CREATE (:Publication {name: 'NATIONAL INITIATIVE FOR CYBERSECURITY EDUCATION', sname: 'NICE', description: 'Free and Low Cost Online Cybersecurity Learning Content'})
CREATE (:FrameWork {name: 'Privacy Shield', description: 'Replaces US-EU Safe Hardor Standard'})
CREATE (:FrameWork {name: 'ACE-CSR', description: 'Academic Centres of Excellence in Cyber Security Research', url: 'https://www.ncsc.gov.uk/information/academic-centres-excellence-cyber-security-research'})
CREATE (:Org {name:'The University of Bristol with the University of Bath', sname: 'UoB', url: 'https://www.bristol.ac.uk'})
CREATE (:Org {name: 'Royal Holloway, University of London' }, sname: 'RH-UoL')
CREATE (:Org {name: 'University College London', sname: 'UoL'})
CREATE (:Publication {name: 'IT Security Expert Blog', url: 'https://blog.itsecurityexpert.co.uk/'})
CREATE (:Publication {name: 'attack.mitre.org', sname: 'MITRE', url: 'https://attack.mitre.org', description: ' globally-accessible knowledge base of adversary tactics and techniques' })
CREATE (:Tools {name: 'Security Onion', url: 'https://securityonion.net', description: 'Linux distribution for threat hunting, enterprise security monitoring, and log management'})
CREATE (:Tools {name: 'KALI', uri: 'https://www.kali.org', description: 'Linux distribution for Advanced Penetration Testing'})
CREATE (:Tools {name: 'Parrot OS', uri: 'https://parrotlinux.org', description: 'Linux distribution for Advanced Penetration Testing'})
CREATE (:Program {name: 'CyberUP', uri: 'https://www.cyberupcampaign.com/', description: 'campaign calling for reform of the UKs cybercrime laws' })
CREATE (:Education {name: 'Crucial Academy', uri: 'https://www.crucialacademy.co.uk/'})


MATCH (a:Org), (b:FrameWork) WHERE a.name='The University of Bristol with the University of Bath' AND b.name='ACE-CSR' MERGE (a)-[r:PARENT]->(b);
MATCH (a:Org), (b:FrameWork) WHERE a.name='University College London' AND b.name='ACE-CSR' MERGE (a)-[r:PARENT]->(b);
MATCH (a:Org), (b:FrameWork) WHERE a.name='Royal Holloway, University of London' AND b.name='ACE-CSR' MERGE (a)-[r:PARENT]->(b);
MATCH (b:FrameWork), (a:Org) WHERE a.name='National Cyber Security Centre' AND b.name='ACE-CSR' MERGE (b)-[r:PRODUCED_BY]->(a);
MATCH (a:Publication), (b:ORG) WHERE a.name='NATIONAL INITIATIVE FOR CYBERSECURITY EDUCATION' AND b.name='NIST' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='Cloud Controls Matrix' AND b.name='Cloud Security Alliance' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='cbest' AND b.name='Bank of England' MERGE (a)-[r:APPLIES_TO]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='cbest' AND b.name='crest-approved' MERGE (a)-[r:PRODUCTED_BY]->(b);
MATCH (a:Publication), (b:Org) WHERE a.name='Understanding the UK cyber security skills labour market 2019' AND b.name='UK Government' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:Publication), (b:Org) WHERE a.name='Understanding the UK cyber security skills labour market 2019' AND b.name='UK Government' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='NATIONAL CYBER SECURITYSTRATEGY 2016-2021' AND b.name='UK Government' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='HMG Security policy framework' AND b.name='UK Government' MERGE (a)-[r:APPLIES_TO]->(b);
MATCH (a:Progam), (b:Org) WHERE a.name='Academic Centres of Excellence in Cyber Security Education' AND b.name='Department for Digital, Culture, Media and Sport' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:Program), (b:Org) WHERE a.name='Academic Centres of Excellence in Cyber Security Education' AND b.name='National Cyber Security Centre' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:Certification), (b:Org) WHERE a.name='CESG Certified Professional' AND b.name='National Cyber Security Centre' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='Cyber Essentials Plus' AND b.name='National Cyber Security Centre' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='Cyber Essentials' AND b.name='National Cyber Security Centre' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='NCSC 10 Steps to Cyber Security' AND b.name='National Cyber Security Centre' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='Cyber Essentials Plus' AND b.name='IASME' MERGE (a)-[r:CERTIFED_BY]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='IASME GOVERNANCE' AND b.name='IASME' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:Org), (b:Org) WHERE a.name='Department of Health and Social Care' AND b.name='National Data Guardian' MERGE (a)-[r:PARENT]->(b);
MATCH (a:Org), (b:Org) WHERE a.name='UK Government' AND b.name='Department of Health and Social Care' MERGE (a)-[r:PARENT]->(b);
MATCH (a:Org), (b:Org) WHERE a.name='UK Government' AND b.name='Department for Digital, Culture, Media and Sport' MERGE (a)-[r:PARENT]->(b);
MATCH (a:Org), (b:Org) WHERE a.name='UK Government' AND b.name='CPS' MERGE (a)-[r:PARENT]->(b);
MATCH (a:Certification), (b:Org) WHERE a.name='Certified Information Security Manager' AND b.name='ISACA' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:Certification), (b:Org) WHERE a.name='Cyber Essentials' AND b.name='ISACA' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:FrameWork), (b:Org) WHERE a.name='COBIT' AND b.name='ISACA' MERGE (a)-[r:PRODUCED_BY]->(b);
MATCH (a:Org), (b:Org) WHERE a.name='GCHQ' AND b.name='National Cyber Security Centre' MERGE (a)-[r:PARENT]->(b);

// above good
