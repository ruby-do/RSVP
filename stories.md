#Ruby DO

2016/02/24 - Enter rails
2016/03/29 - Shall we?

##RSVP

This is an app to handle RSVP for an events. Eventually it will handle multiple events but for now the use case will be limited to an event happening next week.


### Contribuitors:

  - Alvin [****]
  - Jose Miguel [***]
  - Carlos Antonio [****]
  - Victor [*-**]
  - Oliver [****]
  - Marcos [***]
  - Josue [***]
  - Jorge [****]
  - Socrates [***]
  - Ernesto [***]
  - Caleb [**]
  - René [-**]
  - Carlos Rosario [-***]
  - Enmanuel Toribio [-*]
  - Bryan [-**]
  - José Luis [-*]
  - Emmanuel Crisostomo [--*]
  - Irving Rivas (iajrz)
  - Julissa Dantes
  - Crismar Mejía 
  - Libranner Santos

### ~~A user registers for an event~~

As a user I want to be able to register for an event

#### Acceptance Criteria:
 - The user can register for the event.
 - A registration has: [ `email`, `phone number`, `first name`, `last name` ]
 - An event has: [`name`, `description`, `datetime`, `seats_limit`]
 - Only a user per email can be registered.

##############################################


### ~~An admin sees the registrations for an event~~

As an admin user I want to be able to see the registrations for a particular event

Acceptance Criteria:
 - The registrations are listed in ascending order by the time they were created at
 - Only the admin can see the list

##############################################

### ~~An admin sees the pretty registrations for an event~~

As an admin user I want to be able to see the registrations for a particular event.

Acceptance Criteria:

I should see the following for a given registration:
- First Name + Last Name (Capitalized)
- The email should appear
- Registration Date separed by slashes (MM/DD/YYYY)
- The fields appear in that specific order

### ~~Addings tests to the application~~

- Add a DRY run test to verify the integrity of the application
- Add a controller level integration test to create an event
- Add a controller level integration test to view events by the administrator


### Redirects to the Home Page after registering to an event

As a visitor that just registered for a particular event
In order to know that I registered successfuly
I want to be redirected to the Home Page with a success message


### No seats for the event

As a visitor trying to register for a particular event with no seats available
In order to know that my registration was not successful
I want to see an error message 

### The registrations can be filtered

As an admin user I want to be able to filter the registration for a particular event

#### Acceptance Criteria:
 - The registrations can be filtered with a single search box
 - The filter filters by [`email`, `first name`, `last name`]

##############################################


### Edit a registration

As an admin I want to be able to edit a registration

#### Acceptance Criteria:
 - The registration type can be changed to a valid registration type ==> [`vip`, `regular`]
 - The registration status can be changed to a valid status ==> [`payed`, `canceled`, `refund`]
 - The email cannot be edited
 - The first name and last name can be edited

##########################################

### ~~A user can register to multiple events~~

As a user I want to be able to register to multiple events.

#### Acceptance Criteria:
 - The user can subscribe to various events

##############################################

### A user is registered for multiple events

As a user I want to see to which events I am already registered to

#### Acceptance Criteria:
 - The user can see a list of the events it is registered to
 - The list is sorted ascending by the `event date` and THEN sub sorted by `registration status` in case events are on the same week 

##############################################
