

DQL  / DRL
DML
DDL
TCL


nvl( , )
nvl2( , , )
nullif( , )
rank()     
dense_rank()

sequence

DQL  / DRL
DML
DDL
TCL
constraints
  nulls last  |  nulls first
transactions
    system
    autonomus
        pragma

user
Table
shchema  
global variable
sequence
procedures 
functions
    userdefined / system defined
        case manipulation
        string manipulation 
            replace 
            replace all
            translate
        rank functions
        aggregate functions 
        analytical functions   
        others
            nulls last
            nulls first
    self defined
session
cursors

        named cursor
        ref cursor
            strongly typed 
            weakly typed
        for cursor 
        parameterised cursor
    implicit
    explict
    cursor attributes
        isopen
        found
        notfound
        rowcount
JOINS
 inner 
 left outer
 right outer
 full join( ful outer)
 selfjoin
 Natural join      vs inner        

trigger
    rowlevel trigger
    statement level triggers
    -before | after (for update , delete , insert)
    insted of trigger
    compound trigger
    mutating trigger
view
  simple view
  meterilised view
  complex view
synonym
index

exception handling
   types of exception
        System defined
            named
            unnamed 
        userdefined
   handling
   PRAGMA exception_int
   Raise_application_error
   SQLERRM & SQLCODE

dynamic sql | static sql
sql subquery
    non-correlated (simple subquery)
        single row subquery
        multi row subquery
        multi clounm subquery
    correlated subquery


set opearators 
    uninon | unionall | intersect | minus
special opearators
       in & any


collections & spl datatypes
    varry
    nested table
    associated array

clauses
    for update
    where current of


order of excution in complex level trigger
login logout audit table for db