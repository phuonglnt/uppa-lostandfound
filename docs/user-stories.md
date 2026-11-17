# 🇬🇧 UPPA Lost & Found - User Stories

🌐 **Languages / Langues:** [🇫🇷 Français](user-stories-fr.md)

## Account and security
1. As a student, I can create an account with my university email address (@univ-pau.fr).
2. After registration, I receive a confirmation email with a link. My account is active only after confirmation.

## Declaring items
3. As a student, I can declare a lost item. I provide a title, a category, a description, a date, a location and a photo.
4. As a student, I can declare a found item. I provide a title, a category and at least two photos (front and back), without too many details, to verify later the right owner. I can also add a private note, visible only to the administrator, with a hidden detail (brand, inscription, serial number...) that helps confirm the real owner.

## Search and browsing
5. As a student, I can search for items by category or keyword.
6. As a student, I can see the lost and found items I have declared, and their status (pending, validated, to correct).

## Validation by the administrator
7. As an administrator, I can validate a declared item.
8. As an administrator, if the information is incomplete or incorrect, I can ask the student for a correction, with a reason. The item is not deleted, it remains editable.

## Claim
9. As a student, when I recognize my item, I can send a claim request.
10. As an administrator, if several students claim the same item, I can ask for a more precise description (characteristics, place of loss) to identify the real owner.
11. As an administrator, I can validate a claim request. In this case, the system sends the email of the student who found the item to the student claiming it. The item no longer appears in the public list.
12. As an administrator, I can refuse a claim request if the description given by the student does not match the real characteristics of the item, or if the student does not respond to the request for additional information.

## Closure
13. As the student who found the item, I confirm that the item has been returned to the right person. The item's status changes to "recovered".
14. As a student, I can delete my item with a reason, only if no request has been validated, or if the item is already marked "recovered".

## Automatic business rule
15. As the system, I send a reminder to the student after 10 days if the item has not been claimed. After 30 days, the item's status changes to "archived" and disappears from the public list.
(Optional feature, achieved 100% with AI's help, if possible.)

