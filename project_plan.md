 lIf I Was King
===

# Roles
1. User
2. New User
3. Guest
4. Pleeb
5. King

# User Stories

* As a new user I want to log in so that I can vote.
* As a new user I want to make a proclamation so that I can be King.
* As a new user I want to vote so that I can participate.
* As a user I want to make a proclamation so that I can be King.
* As a user I want to defend my proclamation so that I can win votes.
* As a user I want to see a map of other proclamations in my area.
* As a user I want to rescind my proclamation because I am embarassed.
* As a user I want to vote on other proclamations.
* As a user I want to see who is kingest.
* As a user I want to critique a proclamation because I disagree with it.
* As a user I want to critique a proclamation because it offends me.
* As a user I want to take a side in the debate but not write a critique or defense because I am shy but want to participate.

* As a user I want to delete my account because I don't like the game.
* As a user I want to delete a comment because it hurts my cause.
* As a user I want to delete a defense because it is insufficient.
* As a user I want to delete a critique because someone else is doing a better job.

* As a user I want to tweet my position so I can brag!
* As a user I want to tweet my defense so I can demonstrate how well I argued for a position.
* As a user I want to tweet my defense so I can gain support.
* As a user I want to tweet my critique so I can demonstrate how smart I am and gain support.

* As a user I want to check how many points I have.
* As a user I want to create a different account because I don't like my old one.
* As a king I want to help another Pleeb so that I can feel magnaminous.
* As a king I want to ruin another King so that I can be more famous.
* As a king I want to hurt another Pleed because I don't like them so that I can protect my crown.



# Schema

_Pseudo Schema_

	TABLE users (
		username
		email_address
		twitter
		password_hash
	
		has_many proclamations
		has_many responses
		has_many votes

	);

	TABLE proclamations (
		username
		proclamation
		
		belongs_to user
		
		has_many proclamation_votes
		has_many responses
	);

	TABLE responses (
		username
		proclamation
		type (defense, critique, comment)
		text
		
		belongs_to user
		belongs_to proclamation	
		
		has_many response_votes		
	);
	
	TABLE proclamation_votes (
		upvote
	
		belongs_to user
		belongs_to proclamation		
	);
	
	TABLE response_votes (
		upvote
		
		belongs_to user
		belongs_to response
	);

	
---
#notes and thoughts:

* What Jeff Said:

	class User
	 has_many :votes	
  	 	def upvotes
    		votes.where(up: true).count
  		end
	end
	

* oh to use devise and thumbs_up!
