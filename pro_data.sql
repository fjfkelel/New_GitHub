create table company( --ȸ�� ����
    company_no        int                                  --ȸ�� ����  ��ȣ
    , company_id      varchar2(20)    not null unique      --ȸ�� ���� ���̵�
    , pwd             varchar2(20)    not null             --ȸ�� ���� ��ȣ
    , company_name    varchar2(50)    not null unique      --ȸ���
    , primary key(company_no)
);

insert into company values(1, 'Annlap', 'ann1151', '�ȷ�');
insert into company values(2, 'CQI', 'cqi283', '��ť����');
insert into company values(3, 'Wins', 'wins382', '����');


create table code_report( --���� ����
    report_code        int                                  --���� ���� �ڵ�
    , report_name      varchar2(30)  not null unique     --���� ���� �̸�
    , primary key(report_code)
);

insert into code_report values (1, '���� ����');
insert into code_report values (2, '���� ����');
insert into code_report values (3, '�ְ� ��������');
insert into code_report values (4, 'ȸ�� ����');
insert into code_report values (5, '���� ����');
insert into code_report values (6, '���� ����');


create table company_report( --ȸ�纰 ����
    company_re_no       int                                 --ȸ�纰 ���� ���� ��ȣ
    , company_no        int                                 --ȸ�� ����  ��ȣ
    , report_code       int                                  --���� ���� �ڵ�
    , primary key(company_re_no)
    , foreign key(company_no) references company(company_no)
    , foreign key(report_code) references code_report(report_code)
);

insert into company_report values (1, 1, 1);
insert into company_report values (2, 1, 2);
insert into company_report values (3, 1, 3);
insert into company_report values (4, 1, 4);
insert into company_report values (5, 2, 1);
insert into company_report values (6, 2, 2);
insert into company_report values (7, 2, 3);
insert into company_report values (8, 2, 4);
insert into company_report values (9, 3, 1);
insert into company_report values (10, 3, 2);
insert into company_report values (11, 3, 3);
insert into company_report values (12, 3, 4);


create table code_jikup( --����
    jikup_code          int                                --���� �ڵ�
    ,jikup_name          varchar(20)   not null unique      --���޸�
    , primary key(jikup_code)
);

insert into code_jikup values (1, '���');
insert into code_jikup values (2, '����');
insert into code_jikup values (3, '�븮');
insert into code_jikup values (4, '����');
insert into code_jikup values (5, '����');
insert into code_jikup values (6, '����');
insert into code_jikup values (7, '��');
insert into code_jikup values (8, '����');
insert into code_jikup values (9, '����');


create table employee( -- ȸ�纰 ����
    emp_no        int                               --ȸ�纰 ����  ����  ��ȣ
    , emp_name    varchar2(30)      not null             --ȸ�纰 ������
    , jikup            int          not null                     --�����ڵ�
    , emp_id      varchar2(20)      not null unique      --ȸ�纰 ���� ���� ���̵�
    , pwd             varchar2(20)  not null             --ȸ�纰 ���� ���� ��ȣ
    , company_no    int             not null      --ȸ�� ���� ��ȣ
    , company_emp_no   int          not null     --ȸ�系�� ���� ���� ����
    , primary key(emp_no)
    , foreign key(jikup) references code_jikup(jikup_code)
    , foreign key(company_no) references company(company_no)
);


insert into employee values (1, '�賲��', 4, 'namuk30', 'nam1130', 1, 1);
insert into employee values (2, '�ӿ���', 5, 'imyh25', 'yongh1225', 1, 2);
insert into employee values (3, '���缮', 6, 'jangjs29', 'jeas2129', 1, 3);
insert into employee values (4, '��ȫ��', 7, 'annhg28', 'hongg2228', 1, 4);
insert into employee values (5, '��ȣ��', 5, 'parkhj94', 'hojun3125', 2, 1);
insert into employee values (6, '�μ���', 6, 'soon5258', 'minkind3294', 2, 2);
insert into employee values (7, '������', 7, 'jiseon494', 'parkji1423', 2, 3);
insert into employee values (8, '���ϳ�', 8, 'jungone23', 'hana2394', 2, 4);
insert into employee values (9, '�ڴ���', 6, 'pkind2285', 'dajeong27', 3, 1);
insert into employee values (10, '������', 7, 'west1900', 'seon0019', 3, 2);
insert into employee values (11, '������', 8, 'master404', 'eunji9425', 3, 3);
insert into employee values (12, '������', 9, 'jungking1221', 'onelov0921', 3, 4);

select * from company;
select * from code_report;
select * from company_report;
select * from code_jikup;
select * from employee;

drop table company;
drop table code_report;
drop table company_report;
drop table code_jikup;
drop table employee;

commit;