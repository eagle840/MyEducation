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
//
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

CREATE (NCSC:Org {name: 'National Cyber Security Centre', url: 'https://www.ncsc.gov.uk/'})
CREATE (GCHQ:Org {name: 'GCHQ', url: 'https://www.gchq.gov.uk/'})
CREATE (CISSEUK:Org {name: 'Colloquium on Information Systems Security Education UK', url: 'https://cisseuk.org/', role: 'education'})
CREATE (DCMS:Org {name: 'Department for Digital, Culture, Media and Sport', url: 'https://www.gov.uk/dcms'})
CREATE (CAF3:FrameWork {name: 'Cyber Assessment Framework 3.0', url:'https://www.ncsc.gov.uk/blog-post/the-cyber-assessment-framework-3-0'})
CREATE (ACE_CSE:Program {name: 'Academic Centres of Excellence in Cyber Security Education', url: 'https://www.ncsc.gov.uk/blog-post/launch-of-the-academic-centres-of-excellence-in-cyber-security-education'})
CREATE (CIISECskills:FrameWork {name: 'CIISEC Skills Framework', url: 'https://www.ncsc.gov.uk/information/certified-training', role: 'skills'})
CREATE (CCP:Certification {name: 'CESG Certified Professional', url: 'ncsc.gov.uk/information/about-certified-professional-scheme'})
CREATE (ICSF:Certification {name: 'Information & Cyber Security Foundation', url: 'https://www.ciisec.org/CIISEC/Development/ICSF_Exam.aspx', provider: 'CISSEUK'})
CREATE (NIS:Regulatory {name: 'Network and Information Systems Regulations 2018', url: 'https://ico.org.uk/for-organisations/the-guide-to-nis/what-is-nis/', region: 'EU'})
CREATE (CIS:Org {name: 'Center for Internet Security', url: 'https://www.cisecurity.org/'})// ABOVE GOOD
CREATE (ISACA:Org {name: 'ISACA', url: 'https://www.isaca.org/', Q: 'Q1662502' })
CREATE (COBIT:FrameWork {name: 'COBIT', url: 'https://www.isaca.org/resources/cobit', Q: 'Q544025'})
CREATE (CSXP:Certification {name: 'CSX Cybersecurity Practitioner', url: 'https://www.isaca.org/credentialing/csx-p' })
CREATE (CISM:Certification {name: 'Certified Information Security Manager', url: 'https://www.isaca.org/credentialing/cism' })
// above good
CREATE (HMG:Org {name: 'UK Government', url: 'https://www.gov.uk/', Q: 'Q6063'})
CREATE (DHSC:Org {name: 'Department of Health and Social Care', url: 'https://www.gov.uk/government/organisations/department-of-health-and-social-care', Q: 'Q3044742'})
CREATE (NDG:Org {name: 'National Data Guardian', url: 'https://www.gov.uk/government/organisations/national-data-guardian', Q: 'Q60741063' })
CREATE (IASME:Org {name: 'IASME', url: 'https://iasme.co.uk/', Q: 'Q16985457'})
CREATE (IASME_GOVERNANCE:FrameWork {name: 'IASME GOVERNANCE', url: 'https://iasme.co.uk/iasme-governance/',  Q: ''})
CREATE (NCSC10:FrameWork {name: 'NCSC 10 Steps to Cyber Security', url: 'https://www.ncsc.gov.uk/collection/10-steps-to-cyber-security', Q: ''})
CREATE (Cyber_Essentials:FrameWork {name: 'Cyber Essentials', url: 'https://www.ncsc.gov.uk/cyberessentials/overview', Q: 'Q18349520'})
CREATE (Cyber_Essentials_PLUS:FrameWork {name: 'Cyber Essentials Plus', url: 'https://www.ncsc.gov.uk/cyberessentials/overview', Q: 'Q18349520'})
CREATE (ENISA:Org {name: 'UN Agency For Cyber Security', url: 'https://www.enisa.europa.eu/', Q: 'Q1377194'})
CREATE (ISF:Org {name: 'Information Security Forum', url: 'http://www.securityforum.org/', Q: 'Q3150834'})
CREATE (CYBER_LABOUR:Publication {name: 'Understanding the UK cyber security skills labour market', url: 'https://www.ipsos.com/sites/default/files/ct/publication/documents/2019-01/understanding_the_uk_cyber_security_skills_labour_market.pdf'})

// Update these:
CREATE (ISO27000:FrameWork {name: 'ISO27000', url: '', Q: ''})
CREATE (ISO27001:FrameWork  {name: 'ISO27001', url: '', Q: ''})
CREATE (ISO27002:FrameWork  {name: 'ISO27002', url: '', Q: ''})
CREATE (PCIDSS:FrameWork  {name: 'PCIDSS', url: '', Q: ''})
CREATE (SOX:FrameWork  {name: 'SOX', url: '', Q: ''})
CREATE (HIPAA:FrameWork  {name: 'HIPAA', url: '', Q: ''})
CREATE (HMG_SPF:FrameWork  {name: 'HMG Security policy framework', url: 'https://www.gov.uk/government/publications/security-policy-framework', Q: 'Q7444984'})
// CREATE (  {name: '', url: '', Q: ''})
CREATE (ISC2:Org {name: 'ISC2', url: 'https://www.isc2.org/', Q: 'Q3153272'})
CREATE (SCMAG:Publication {name: 'scmagazineuk', url: 'https://www.scmagazineuk.com/', Q:''})
CREATE (NCSS:FrameWork {name: 'NATIONAL CYBER SECURITYSTRATEGY 2016-2021', url: 'https://www.gov.uk/government/publications/national-cyber-security-strategy-2016-to-2021', Q: ''})

CREATE (NCSS)-[:PRODUCED_BY]->(HMG)
CREATE (HMG_SPF)-[:APPLIES_TO]->(HMG)
CREATE (ACE_CSE)-[:PRODUCED_BY]->(DCMS)
CREATE (ACE_CSE)-[:PRODUCED_BY]->(NCSC)
CREATE (CCP)-[:PRODUCED_BY]->(NCSC)
CREATE (Cyber_Essentials_PLUS)-[:PRODUCED_BY]->(NCSC)
CREATE (Cyber_Essentials)-[:PRODUCED_BY]->(NCSC)
CREATE (NCSC10)-[:PRODUCED_BY]->(NCSC)
CREATE (Cyber_Essentials_PLUS)-[:CERTIFED_BY]->(IASME)
CREATE (IASME_GOVERNANCE)-[:PRODUCED_BY]->(IASME)
CREATE (DHSC)-[:PARENT]->(NDG)
CREATE (HMG)-[:PARENT]->(DHSC)
CREATE (HMG)-[:PARENT]->(DCMS)
CREATE (CISM)-[:PRODUCED_BY]->(ISACA)
CREATE (CSXP)-[:PRODUCED_BY]->(ISACA)
CREATE (COBIT)-[:PRODUCED_BY]->(ISACA)
CREATE (GCHQ)-[:PARENT]->(NCSC)
// above good
