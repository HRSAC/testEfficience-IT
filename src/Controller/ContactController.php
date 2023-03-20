<?php

namespace App\Controller;

use App\Entity\Contacte;
use App\Form\ContactType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;

class ContactController extends AbstractController
{
    #[Route('/contact', name: 'contact.index')]
    public function index(
        Request $request,
        EntityManagerInterface $manager,
        MailerInterface $mailer
        ): Response
    {

        $contacte = new Contacte();
        $form = $this->createForm(ContactType::class, $contacte);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $contacte = $form->getData();

            $manager->persist($contacte);
            $manager->flush();

            $email = (new Email())
                ->from($contacte->getEamil())
                ->to('admin@example.com')
                ->subject('Envoie de formulaire')
                ->html(
                    "Bonjour,<br>
                    je vous envoie ce courriel pour vous informer qu'une nouvelle fiche de contact a été soumise sur notre site web. Veuillez trouvee ci-dessous les details de la fiche de conatact :<br>
                    Nom : ".$contacte->getFullName()."<br>
                    Adresse e-mail : ".$contacte->getEamil()."<br>
                    Département :" .$contacte->getDepartement()."<br>
                    Message : " .$contacte->getMessage()."
                    <br>Veuillez prendre les mesures nécessaires pour contacter cette personne dans les plus brefs délais.

                    <br> Cordialement.");

        $mailer->send($email);

            $this->addFlash(
                'success',
                'Votre Formulaire a été envoyé avec succés'
            );

            return $this->redirectToRoute('contact.index');

        }

        return $this->render('pages/contact/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
