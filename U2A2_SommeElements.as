// Nom du fichier:  U2A2_SommeElements.as

package {

import flash.display.*;
import flash.text.*;
import flash.events.MouseEvent;


public class U2A2_SommeElements extends MovieClip {
		
  var affichage:String="";  	// variable pour stocker une liste de tous les éléments du tableau.
  var sommeMessage:String=""; 	// variable pour stocker le message indicant si la somme est pour 
  								//     tous les entiers, les pairs ou les impairs.
  var somme:int;					// variable pour stocker la somme calculée.
	
  // Déclarer un tableau servant à stocker un nombre inconnu d'éléments.
  var mesEntiers:Array = new Array();


  // ****************************************************************
  // Fonction constructeur de la classe.
  public function U2A2_SommeElements() 
  {
	
    // Ajouter écouteur d'événement pour réagir à clic sur btnAjouter.
    btnAjouter.addEventListener(MouseEvent.CLICK, ajouter);
	
	// Ajouter écouteur d'événement pour réagir à clic sur btnAfficher.
	btn_afficher.addEventListener(MouseEvent.CLICK, afficher);

    // Ajouter écouteur d'événement pour réagir à clic sur btnSommeTotale.
    btnSommeTotale.addEventListener(MouseEvent.CLICK, sommeTotale);

    // Taper l'instruction include.
    include "U2A2_Elements.as"

  } // Fin fonction constructeur



  // ****************************************************************
  // Fonction pour réagir à un clic sur btnAjouter.
  function ajouter(event:MouseEvent):void 
  {
    // Declare variables to hold the input (integer) value
	var entierSaisi:String;
	var entier:int;
	
	// Lire le texte du champ de saisie et le stocker dans une variable String.
	entierSaisi=(IntegersIn_txt.text);
	
	// Convertir la chaîne de caractères saisie (String) en un entier (int).
	entier = int(entierSaisi);
	
	// Ajouter le nouvel entier à la fin du tableau.
	mesEntiers.push(entier);
	
	afficher(null); // mettre à jour les chiffres
		
  } // Fin fonction ajouter.



  // ****************************************************************
  // Fonction pour réagir à un clic sur btnSupprimer.
  function supprimer(event:MouseEvent):void 
  {
	
	// Compose cette fonction visant à supprimer des éléments du tableau.
	
	
  } // Fin fonction supprimer.



  // ****************************************************************
  // Fonction pour réagir à un clic sur btnAfficher.
  function afficher(event:MouseEvent):void 
  {
	  	var entiers:String = ''; // déclare la variable
	  
		for (var i = 0; i < mesEntiers.length; i++) {
			trace(i);
	  		entiers = entiers + ("Element #" + i + " = " + mesEntiers[i] + "\n");
		}

		message_txt.text = entiers;
	 
  } //Fin fonction afficher.



  // ****************************************************************
  // Fonction pour réagir à un clic sur btnSommeTotale.
  function sommeTotale(event:MouseEvent):void 
  {
	var sommeTotale:int;
	affichage="";
	
	for (var i=0; i<mesEntiers.length; i++)
	{
 	  sommeTotale = sommeTotale + mesEntiers[i];
	  affichage = affichage + ("Element #" + i + " = " + mesEntiers[i] + "\n");
	}
	
	somme=sommeTotale;
	sommeMessage="\nLa somme de TOUS les entiers est: ";
	message_txt.text = affichage + sommeMessage + somme;
	
  } // Fin fonction sommeTotale.



  // ****************************************************************
  // Fonction pour réagir à un clic sur btnSommeImpairs.
  function sommeImpairs(event:MouseEvent):void 
  {
	
	
	
  } // Fin fonction sommeImpairs.



  // ****************************************************************
  // Fonction pour réagir à un clic sur btnSommePairs.
  function sommePairs(event:MouseEvent):void
  {
	
	// Compose cette fonction visant à:
	//        calculer la somme de entiers pairs du tableau et
	//        afficher une liste de ces éléments et leur somme.
	
	
  } // Fin fonction sommePairs.



} // Fin classe.

}  // Fin paquetage.