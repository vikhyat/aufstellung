Aufstellung
===========

A tiny application for helping with the selling of used books to new students at IIT Mandi.

Goals:
------

* Track available inventory.
* Track transactions.
* Track items sold.
* Compute amount due for a transaction.
* Save amount sold for a transaction.

Data Model:
-----------

* Person: Name (string)
* ItemClass: Title (string), Price (Integer)
* ItemInstance: ItemClass (ItemClass), Owner (person), Transaction (Transaction; the one in which it was sold)
* Transaction: CustomerName (String), AmountPaid (Integer)