-- QUESTÃO 1:

SELECT u.id, u.name, c.name AS city FROM users u JOIN cities c ON u."cityId"=c.id WHERE c.name='Rio de Janeiro';

-- QUESTÃO 2:

SELECT t.id, w.name AS writer, r.name AS recipient, t.message FROM testimonials t JOIN users w ON t."writerId"=w.id JOIN users r ON t."recipientId"=r.id;

-- QUESTÃO 3:

SELECT e."userId" AS id, u.name, c.name AS course, s.name AS school, e."endDate" FROM educations e JOIN users u ON e."userId"=u.id JOIN courses c ON e."courseId"=c.id JOIN schools s ON e."schoolId"=s.id WHERE e."userId"=30 AND status='finished';

-- QUESTÃO 4

SELECT e."userId" AS id, u.name, r.name AS Role, c.name AS company, e."startDate" FROM experiences e JOIN users u ON e."userId"=u.id JOIN roles r ON r.id=e."roleId" JOIN companies c ON c.id=e."companyId" WHERE e."userId"=50 AND "endDate" IS NULL;