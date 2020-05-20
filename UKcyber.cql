// comment
// work into wikidata

// for neo4j db's


//  need to add roles:[]  to the attrib set, eg: roles: ['best practices', 'tools]

// Node TYPES
//  Org
//  FrameWork
//  Program
//  Certification
//  Regulatory
//  Standard
//
//
// Node Properties:   !find a schema
//  name: common name  
//  ^^^^^   need to change to 2: ??? shortname (sname), and fullname???
//  url
//  Q:   wikidata Q number
//  Shortdescription
//
// Relationship TYPEs
//  PARENT
//  PRODUCED_BY
//  
// don't copy above until # replaced with //

CREATE (NCSC:Org {name: 'National Cyber Security Centre', url: 'https://www.ncsc.gov.uk/'})
CREATE (GCHQ:Org {name: 'GCHQ', url: 'https://www.gchq.gov.uk/'})
CREATE (CISSEUK:Org {name: 'Colloquium on Information Systems Security Education UK', url: 'https://cisseuk.org/', role: 'education'})
CREATE (DCMS:Org {name: 'Department for Digital, Culture, Media and Sport', url: 'https://www.gov.uk/dcms'})
CREATE (CAF3:FrameWork {name: 'Cyber Assessment Framework 3.0', url:'https://www.ncsc.gov.uk/blog-post/the-cyber-assessment-framework-3-0'})
CREATE (ACE_CSE:Program {name: 'Academic Centres of Excellence in Cyber Security Education', url: 'https://www.ncsc.gov.uk/blog-post/launch-of-the-academic-centres-of-excellence-in-cyber-security-education'})
CREATE (CIISECskills:FrameWork {name: 'CIISEC Skills Framework', url: 'https://www.ncsc.gov.uk/information/certified-training', role: 'skills'})
CREATE (CCP:Certification {name: 'CESG Certified Professional', url: 'ncsc.gov.uk/information/about-certified-professional-scheme'})
CREATE (ICSF:Certification {name: 'Information & Cyber Security Foundation', url: 'https://www.ciisec.org/CIISEC/Development/ICSF_Exam.aspx?WebsiteKey=a17cb243-464e-4ad3-96f8-2635490f727a&hkey=44f90ef7-3f09-4253-8149-f676b52571e6&Membership_Accreditation=4#Membership_Accreditation', provider: 'CISSEUK'})
CREATE (NIS:Regulatory {name: 'Network and Information Systems Regulations 2018', url: 'https://ico.org.uk/for-organisations/the-guide-to-nis/what-is-nis/', region: 'EU'})
CREATE (CIS:Org {name: 'Center for Internet Security', url: 'https://www.cisecurity.org/'})// ABOVE GOOD
CREATE (ISACA:Org {name: 'ISACA', url: 'https://www.isaca.org/', Q: 'Q1662502' })
CREATE (COBIT:FrameWork {name: 'COBIT', url: 'https://www.isaca.org/resources/cobit', Q: 'Q544025'})
CREATE (CSXP:Certification {name: 'CSX Cybersecurity Practitioner', url: 'https://www.isaca.org/credentialing/csx-p' })
CREATE (CISM:Certification {name: 'Certified Information Security Manager', url: 'https://www.isaca.org/credentialing/cism' })
// above good

CREATE (CISM)-[:PRODUCED_BY]->(ISACA)
CREATE (CSXP)-[:PRODUCED_BY]->(ISACA)
CREATE (COBIT)-[:PRODUCED_BY]->(ISACA)
CREATE (GCHQ)-[:PARENT]->(NCSC)
// above good
